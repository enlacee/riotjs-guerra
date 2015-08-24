<collections-list>
	<style scoped>
		.selected {
			font-weight: bold;
		}
	</style>
	<ul id="collections_list">
		<li each={collections}
			class="h1 listitem {
				selected: this.href==env.cur_data_images.href
			}"
			onclick={parent.goto}
		>
			{this.name}
		</li>
	</ul>
	<button onclick={reload}>Reload</button>

	<script>
		var me = this;
		env.add('collections-list', this);

		reload(e) {
			env.collections.load();
		}

		goto(e) {
			env.cur_collection.load(e.item.href)
				.then(function() {
				me.update();
				});
		}

		env.collections.on('updated', function(status) {
			me.collections = this.collections;
			me.update();
		})

		// start
		this.reload();

	</script>
</collections-list>
