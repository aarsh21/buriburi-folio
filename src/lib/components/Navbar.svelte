<script lang="ts">
	import { page } from '$app/stores';
	const styles =
		'text-white_primary underline decoration-cat_primary decoration-wavy decoration-[1.7px] underline-offset-[7px] ';
</script>

<aside class="tracking-light mt-8 mb-8">
	<nav class="flex scroll-pr-6 flex-row items-start gap-x-4 px-0 py-0 text-xl font-bold">
		<a href="/" class={$page.route.id === '/(app)' ? `${styles}` : 'hover:text-cat_quaternary'}
			>home</a
		>
		<a
			href="/blog"
			class={$page.route.id === '/(app)/blog' ? `${styles}` : 'hover:text-cat_quaternary'}>blog</a
		>
	</nav>
</aside>
