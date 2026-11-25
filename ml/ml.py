from talon import Module, actions

mod = Module()
mod.tag("ml", "Tag for machine learning commands")

def paste_text(text: str):
    """Pastes the given text into the current application."""
    actions.clip.set_text(text)
    actions.key('ctrl-v')

@mod.action_class
class Actions:

                    
    def distribution_plots():
        """Create distribution plots for all features in the dataset"""
        paste_text("""plt.figure(figsize=(20,20))
for i, col in enumerate(df.columns):
    plt.subplot(4,5,i+1)
    plt.hist(df[col], alpha=0.3, color='b', density=True)
    plt.title(col)
    plt.xticks(rotation='vertical')
plt.tight_layout()
plt.show()
""")
        

    def relational_plots():
        """Create relational plots for all features in the dataset"""
        paste_text("""plt.figure(figsize=(20, 20))
for i, col in enumerate(df.columns):
    plt.subplot(4, 5, i+1)
    sns.scatterplot(data=df, x=col, y='MEDV')
    # sns.regplot(x=col,y='MEDV', data=df)
    plt.title(col)
plt.xticks(rotation='vertical')
plt.tight_layout()
plt.show()""")

