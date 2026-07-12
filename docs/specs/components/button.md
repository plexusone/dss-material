# Button

<div class="dss-content">
<div class="page-header">
    <nav class="breadcrumb">
        <a href="components.html">Components</a> / Button
    </nav>
    <h1>Button</h1>
    <span class="badge large">actions</span>
    <p class="description">Buttons communicate actions that users can take. They help users interact with and take action on content.</p>
</div>


<section class="section">
    <h2>Variants</h2>
    <div class="variants-grid">
        
        <div class="variant-card default">
            <h4>Filled</h4>
            <span class="badge">Default</span>
            <p>High-emphasis buttons for primary, important, or final actions.</p>
        </div>
        
        <div class="variant-card ">
            <h4>Outlined</h4>
            
            <p>Medium-emphasis buttons for important actions that don&#39;t distract from other content.</p>
        </div>
        
        <div class="variant-card ">
            <h4>Text</h4>
            
            <p>Low-emphasis buttons for less important actions, often used in cards and dialogs.</p>
        </div>
        
        <div class="variant-card ">
            <h4>Elevated</h4>
            
            <p>Medium-emphasis buttons that lift up from the page with shadow.</p>
        </div>
        
        <div class="variant-card ">
            <h4>Tonal</h4>
            
            <p>Medium-emphasis buttons using secondary container color.</p>
        </div>
        
    </div>
</section>



<section class="section">
    <h2>Properties</h2>
    <table class="props-table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Type</th>
                <th>Required</th>
                <th>Default</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            
            <tr>
                <td><code>variant</code></td>
                <td><code>enum</code></td>
                <td>-</td>
                <td><code>filled</code></td>
                <td>Visual style of the button</td>
            </tr>
            
            <tr>
                <td><code>disabled</code></td>
                <td><code>boolean</code></td>
                <td>-</td>
                <td>-</td>
                <td>Whether the button is disabled</td>
            </tr>
            
            <tr>
                <td><code>icon</code></td>
                <td><code>node</code></td>
                <td>-</td>
                <td>-</td>
                <td>Optional leading icon</td>
            </tr>
            
            <tr>
                <td><code>trailingIcon</code></td>
                <td><code>boolean</code></td>
                <td>-</td>
                <td>-</td>
                <td>Whether icon appears after text</td>
            </tr>
            
        </tbody>
    </table>
</section>



<section class="section">
    <h2>States</h2>
    <div class="states-grid">
        
        <div class="state-card">
            <h4>enabled</h4>
            <p>Default interactive state</p>
        </div>
        
        <div class="state-card">
            <h4>disabled</h4>
            <p>Non-interactive state</p>
        </div>
        
        <div class="state-card">
            <h4>hovered</h4>
            <p>Mouse hover state</p>
        </div>
        
        <div class="state-card">
            <h4>focused</h4>
            <p>Keyboard focus state</p>
        </div>
        
        <div class="state-card">
            <h4>pressed</h4>
            <p>Active/pressed state</p>
        </div>
        
    </div>
</section>



<section class="section">
    <h2>Accessibility</h2>
    <div class="a11y-info">
        
        <div class="a11y-item">
            <strong>Role:</strong> <code>button</code>
        </div>
        
        
        <div class="a11y-item">
            <strong>Keyboard Support:</strong>
            <ul>
                
                <li><kbd>Enter</kbd> - Activate the button</li>
                
                <li><kbd>Space</kbd> - Activate the button</li>
                
            </ul>
        </div>
        
        
        <div class="a11y-item">
            <strong>Screen Reader Notes:</strong> Announce button label and state. For icon-only buttons, provide aria-label.
        </div>
        
    </div>
</section>



<section class="section">
    <h2>LLM Context</h2>
    <div class="llm-info">
        
        <div class="llm-item">
            <strong>Intent:</strong> Trigger user actions and form submissions
        </div>
        
        
        <div class="llm-item">
            <strong>Anti-Patterns:</strong>
            <ul class="anti-patterns">
                
                <li>Multiple filled buttons in the same view - use one primary action</li>
                
                <li>Icon-only button without aria-label</li>
                
                <li>Disabled button without explanation why</li>
                
                <li>Using button for navigation instead of link</li>
                
            </ul>
        </div>
        
        
        <div class="llm-item">
            <strong>Example Usage:</strong>
            
            <pre><code>&lt;Button variant=&#34;filled&#34;&gt;Submit&lt;/Button&gt;</code></pre>
            
            <pre><code>&lt;Button variant=&#34;outlined&#34; icon={&lt;AddIcon /&gt;}&gt;Add Item&lt;/Button&gt;</code></pre>
            
            <pre><code>&lt;Button variant=&#34;text&#34; disabled&gt;Loading...&lt;/Button&gt;</code></pre>
            
        </div>
        
    </div>
</section>


</div>
