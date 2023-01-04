struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_749 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_895 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1160 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb43 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlatb1 : bool;
  var u_xlat15 : vec3<f32>;
  var x_548 : f32;
  var x_560 : f32;
  var x_571 : f32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlatb32 : bool;
  var u_xlatb46 : bool;
  var x_774 : f32;
  var u_xlat46 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati48 : i32;
  var u_xlat47 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati47 : i32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_35 : vec4<f32> = x_30.x_MaskMapRemapScale0;
  let x_42 : vec4<f32> = x_30.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_35.x, x_35.y, x_35.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_42.x, x_42.y, x_42.w));
  let x_48 : vec4<f32> = x_30.x_MaskMapRemapScale1;
  let x_53 : vec4<f32> = x_30.x_MaskMapRemapOffset1;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_53.x, x_53.y, x_53.w));
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_61 : vec4<f32> = x_30.x_MaskMapRemapScale2;
  let x_66 : vec4<f32> = x_30.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_72 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_77 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_79 : vec3<f32> = ((vec3<f32>(x_72.x, x_72.w, x_72.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_77.x, x_77.w, x_77.y));
  let x_80 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_79.z);
  let x_86 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.z, x_86.w) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = u_xlat4;
  let x_100 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(0.5f, 0.5f));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat4;
  let x_106 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_108 : vec2<f32> = (vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_121 : vec4<f32> = u_xlat4;
  let x_131 : f32 = x_126.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_131);
  u_xlat4 = x_132;
  let x_135 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_145 : vec4<f32> = vs_TEXCOORD1;
  let x_148 : f32 = x_126.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat5 = x_149;
  let x_155 : vec4<f32> = vs_TEXCOORD1;
  let x_158 : f32 = x_126.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_155.z, x_155.w), x_158);
  u_xlat6 = x_159;
  let x_166 : vec4<f32> = vs_TEXCOORD2;
  let x_169 : f32 = x_126.x_GlobalMipBias.x;
  let x_170 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_166.x, x_166.y), x_169);
  u_xlat7 = x_170;
  let x_176 : vec4<f32> = vs_TEXCOORD2;
  let x_179 : f32 = x_126.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat8 = x_180;
  let x_183 : f32 = u_xlat5.w;
  u_xlat9.x = x_183;
  let x_186 : f32 = u_xlat6.w;
  u_xlat9.y = x_186;
  let x_190 : f32 = u_xlat7.w;
  u_xlat9.z = x_190;
  let x_194 : f32 = u_xlat8.w;
  u_xlat9.w = x_194;
  let x_197 : vec4<f32> = u_xlat9;
  let x_200 : f32 = x_30.x_Smoothness0;
  let x_203 : f32 = x_30.x_Smoothness1;
  let x_206 : f32 = x_30.x_Smoothness2;
  let x_209 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_197 * vec4<f32>(x_200, x_203, x_206, x_209));
  let x_218 : f32 = x_30.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_218);
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_221) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat9;
  let x_225 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_224 + -(x_225));
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_228 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_232, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat4;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_237 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_241);
  let x_244 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_244 + -(x_245));
  let x_250 : f32 = u_xlat12.x;
  let x_253 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_250 * x_253);
  let x_257 : f32 = u_xlat12.y;
  let x_260 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_257 * x_260);
  let x_264 : f32 = u_xlat12.z;
  let x_267 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.w;
  let x_274 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_271 * x_274);
  let x_277 : vec4<f32> = u_xlat11;
  let x_278 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_277 + x_278);
  let x_280 : bool = u_xlatb43;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat43;
  u_xlat43 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat43;
  u_xlat4 = (x_292 / vec4<f32>(x_293, x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat12;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat11;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.z, x_329.z, x_329.z) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.w, x_347.w, x_347.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_366;
  let x_369 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_369;
  let x_372 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_372;
  let x_375 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_375;
  let x_378 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_378;
  let x_381 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_387;
  let x_389 : vec4<f32> = u_xlat6;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_389 + x_390);
  let x_393 : f32 = u_xlat0.z;
  u_xlat7.x = x_393;
  let x_396 : f32 = u_xlat1.z;
  u_xlat7.y = x_396;
  let x_399 : f32 = u_xlat2.z;
  u_xlat7.z = x_399;
  let x_402 : f32 = u_xlat3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat9;
  let x_407 : f32 = x_30.x_Smoothness0;
  let x_409 : f32 = x_30.x_Smoothness1;
  let x_411 : f32 = x_30.x_Smoothness2;
  let x_413 : f32 = x_30.x_Smoothness3;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_404) * vec4<f32>(x_407, x_409, x_411, x_413)) + x_416);
  let x_420 : f32 = x_30.x_LayerHasMask0;
  let x_423 : f32 = x_30.x_LayerHasMask1;
  let x_426 : f32 = x_30.x_LayerHasMask2;
  let x_429 : f32 = x_30.x_LayerHasMask3;
  let x_431 : vec4<f32> = u_xlat7;
  let x_433 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_420, x_423, x_426, x_429) * x_431) + x_433);
  let x_436 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_436, x_437);
  let x_440 : f32 = u_xlat0.x;
  u_xlat7.x = x_440;
  let x_443 : f32 = u_xlat1.x;
  u_xlat7.y = x_443;
  let x_446 : f32 = u_xlat2.x;
  u_xlat7.z = x_446;
  let x_449 : f32 = u_xlat3.x;
  u_xlat7.w = x_449;
  let x_451 : vec4<f32> = u_xlat7;
  let x_454 : f32 = x_30.x_Metallic0;
  let x_457 : f32 = x_30.x_Metallic1;
  let x_460 : f32 = x_30.x_Metallic2;
  let x_463 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_451 + -(vec4<f32>(x_454, x_457, x_460, x_463)));
  let x_468 : f32 = x_30.x_LayerHasMask0;
  let x_470 : f32 = x_30.x_LayerHasMask1;
  let x_472 : f32 = x_30.x_LayerHasMask2;
  let x_474 : f32 = x_30.x_LayerHasMask3;
  let x_476 : vec4<f32> = u_xlat7;
  let x_479 : f32 = x_30.x_Metallic0;
  let x_481 : f32 = x_30.x_Metallic1;
  let x_483 : f32 = x_30.x_Metallic2;
  let x_485 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_468, x_470, x_472, x_474) * x_476) + vec4<f32>(x_479, x_481, x_483, x_485));
  let x_488 : vec4<f32> = u_xlat4;
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_488, x_489);
  let x_493 : f32 = u_xlat0.y;
  u_xlat3.x = x_493;
  let x_496 : f32 = u_xlat1.y;
  u_xlat3.y = x_496;
  let x_499 : f32 = u_xlat2.y;
  u_xlat3.z = x_499;
  let x_501 : vec4<f32> = u_xlat6;
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_501) + x_503);
  let x_506 : f32 = x_30.x_LayerHasMask0;
  let x_508 : f32 = x_30.x_LayerHasMask1;
  let x_510 : f32 = x_30.x_LayerHasMask2;
  let x_512 : f32 = x_30.x_LayerHasMask3;
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_506, x_508, x_510, x_512) * x_514) + x_516);
  let x_519 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat15;
  let x_536 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat15;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat15.x;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_126.unity_MatrixV[0i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.x = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat15.y;
    x_560 = x_564;
  } else {
    let x_567 : f32 = x_126.unity_MatrixV[1i].z;
    x_560 = x_567;
  }
  let x_568 : f32 = x_560;
  u_xlat2.y = x_568;
  let x_570 : bool = u_xlatb1;
  if (x_570) {
    let x_575 : f32 = u_xlat15.z;
    x_571 = x_575;
  } else {
    let x_579 : f32 = x_126.unity_MatrixV[2i].z;
    x_571 = x_579;
  }
  let x_580 : f32 = x_571;
  u_xlat2.z = x_580;
  let x_583 : vec3<f32> = vs_TEXCOORD3;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_583, x_584);
  let x_588 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_588);
  let x_591 : vec4<f32> = u_xlat1;
  let x_593 : vec3<f32> = vs_TEXCOORD3;
  let x_594 : vec3<f32> = (vec3<f32>(x_591.x, x_591.x, x_591.x) * x_593);
  let x_595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_602 : vec4<f32> = vs_TEXCOORD0;
  let x_605 : f32 = x_126.x_GlobalMipBias.x;
  let x_606 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_602.z, x_602.w), x_605);
  let x_607 : vec3<f32> = vec3<f32>(x_606.x, x_606.y, x_606.z);
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_612 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_613 : vec2<f32> = vec2<f32>(x_612.x, x_612.y);
  let x_617 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_613.x, x_613.y));
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_617.x, x_617.y, x_618.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat4;
  let x_622 : vec4<f32> = hlslcc_FragCoord;
  let x_624 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) * vec2<f32>(x_622.x, x_622.y));
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
  let x_628 : f32 = u_xlat4.y;
  let x_630 : f32 = x_126.x_ScaleBiasRt.x;
  let x_633 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_628 * x_630) + x_633);
  let x_635 : f32 = u_xlat43;
  u_xlat4.z = (-(x_635) + 1.0f);
  let x_640 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_640) * 0.959999979f) + 0.959999979f);
  let x_646 : f32 = u_xlat28;
  let x_647 : f32 = u_xlat43;
  u_xlat44 = (x_646 + -(x_647));
  let x_650 : f32 = u_xlat43;
  let x_652 : vec4<f32> = u_xlat5;
  let x_654 : vec3<f32> = (vec3<f32>(x_650, x_650, x_650) * vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat5;
  let x_661 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_662 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec3<f32> = u_xlat0;
  let x_666 : vec4<f32> = u_xlat5;
  let x_671 : vec3<f32> = ((vec3<f32>(x_664.x, x_664.x, x_664.x) * vec3<f32>(x_666.x, x_666.y, x_666.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_672 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : f32 = u_xlat28;
  u_xlat0.x = (-(x_674) + 1.0f);
  let x_679 : f32 = u_xlat0.x;
  let x_681 : f32 = u_xlat0.x;
  u_xlat28 = (x_679 * x_681);
  let x_683 : f32 = u_xlat28;
  u_xlat28 = max(x_683, 0.0078125f);
  let x_686 : f32 = u_xlat28;
  let x_687 : f32 = u_xlat28;
  u_xlat43 = (x_686 * x_687);
  let x_689 : f32 = u_xlat44;
  u_xlat44 = (x_689 + 1.0f);
  let x_691 : f32 = u_xlat44;
  u_xlat44 = clamp(x_691, 0.0f, 1.0f);
  let x_694 : f32 = u_xlat28;
  u_xlat45 = ((x_694 * 4.0f) + 2.0f);
  let x_703 : vec4<f32> = u_xlat4;
  let x_706 : f32 = x_126.x_GlobalMipBias.x;
  let x_707 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_703.x, x_703.z), x_706);
  u_xlat4.x = x_707.x;
  let x_712 : f32 = u_xlat4.x;
  u_xlat18 = (x_712 + -1.0f);
  let x_715 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_716 : f32 = u_xlat18;
  u_xlat18 = ((x_715 * x_716) + 1.0f);
  let x_719 : f32 = u_xlat14;
  let x_721 : f32 = u_xlat4.x;
  u_xlat14 = min(x_719, x_721);
  let x_725 : vec4<f32> = vs_TEXCOORD8;
  let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
  let x_728 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_726.x, x_726.y, x_728);
  let x_740 : vec3<f32> = txVec0;
  let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_740.xy, x_740.z);
  u_xlat4.x = x_742;
  let x_751 : f32 = x_749.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_751) + 1.0f);
  let x_755 : f32 = u_xlat4.x;
  let x_757 : f32 = x_749.x_MainLightShadowParams.x;
  let x_759 : f32 = u_xlat32;
  u_xlat4.x = ((x_755 * x_757) + x_759);
  let x_764 : f32 = vs_TEXCOORD8.z;
  u_xlatb32 = (0.0f >= x_764);
  let x_768 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_768 >= 1.0f);
  let x_770 : bool = u_xlatb46;
  let x_771 : bool = u_xlatb32;
  u_xlatb32 = (x_770 | x_771);
  let x_773 : bool = u_xlatb32;
  if (x_773) {
    x_774 = 1.0f;
  } else {
    let x_779 : f32 = u_xlat4.x;
    x_774 = x_779;
  }
  let x_780 : f32 = x_774;
  u_xlat4.x = x_780;
  let x_782 : vec3<f32> = vs_TEXCOORD7;
  let x_784 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_786 : vec3<f32> = (x_782 + -(x_784));
  let x_787 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat7;
  let x_791 : vec4<f32> = u_xlat7;
  u_xlat32 = dot(vec3<f32>(x_789.x, x_789.y, x_789.z), vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : f32 = u_xlat32;
  let x_796 : f32 = x_749.x_MainLightShadowParams.z;
  let x_799 : f32 = x_749.x_MainLightShadowParams.w;
  u_xlat32 = ((x_794 * x_796) + x_799);
  let x_801 : f32 = u_xlat32;
  u_xlat32 = clamp(x_801, 0.0f, 1.0f);
  let x_805 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_805) + 1.0f);
  let x_808 : f32 = u_xlat32;
  let x_809 : f32 = u_xlat46;
  let x_812 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_808 * x_809) + x_812);
  let x_815 : f32 = u_xlat18;
  let x_819 : vec4<f32> = x_126.x_MainLightColor;
  let x_821 : vec3<f32> = (vec3<f32>(x_815, x_815, x_815) * vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : vec3<f32> = u_xlat2;
  let x_826 : vec4<f32> = u_xlat1;
  u_xlat32 = dot(-(x_824), vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : f32 = u_xlat32;
  let x_830 : f32 = u_xlat32;
  u_xlat32 = (x_829 + x_830);
  let x_832 : vec4<f32> = u_xlat1;
  let x_834 : f32 = u_xlat32;
  let x_838 : vec3<f32> = u_xlat2;
  let x_840 : vec3<f32> = ((vec3<f32>(x_832.x, x_832.y, x_832.z) * -(vec3<f32>(x_834, x_834, x_834))) + -(x_838));
  let x_841 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat1;
  let x_845 : vec3<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), x_845);
  let x_847 : f32 = u_xlat32;
  u_xlat32 = clamp(x_847, 0.0f, 1.0f);
  let x_849 : f32 = u_xlat32;
  u_xlat32 = (-(x_849) + 1.0f);
  let x_852 : f32 = u_xlat32;
  let x_853 : f32 = u_xlat32;
  u_xlat32 = (x_852 * x_853);
  let x_855 : f32 = u_xlat32;
  let x_856 : f32 = u_xlat32;
  u_xlat32 = (x_855 * x_856);
  let x_859 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_859) * 0.699999988f) + 1.700000048f);
  let x_866 : f32 = u_xlat0.x;
  let x_867 : f32 = u_xlat46;
  u_xlat0.x = (x_866 * x_867);
  let x_871 : f32 = u_xlat0.x;
  u_xlat0.x = (x_871 * 6.0f);
  let x_883 : vec4<f32> = u_xlat8;
  let x_886 : f32 = u_xlat0.x;
  let x_887 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_883.x, x_883.y, x_883.z), x_886);
  u_xlat8 = x_887;
  let x_889 : f32 = u_xlat8.w;
  u_xlat0.x = (x_889 + -1.0f);
  let x_897 : f32 = x_895.unity_SpecCube0_HDR.w;
  let x_899 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_897 * x_899) + 1.0f);
  let x_904 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_904, 0.0f);
  let x_908 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_908);
  let x_912 : f32 = u_xlat0.x;
  let x_914 : f32 = x_895.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_912 * x_914);
  let x_918 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_918);
  let x_922 : f32 = u_xlat0.x;
  let x_924 : f32 = x_895.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_922 * x_924);
  let x_927 : vec4<f32> = u_xlat8;
  let x_929 : vec3<f32> = u_xlat0;
  let x_931 : vec3<f32> = (vec3<f32>(x_927.x, x_927.y, x_927.z) * vec3<f32>(x_929.x, x_929.x, x_929.x));
  let x_932 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : f32 = u_xlat28;
  let x_936 : f32 = u_xlat28;
  let x_940 : vec2<f32> = ((vec2<f32>(x_934, x_934) * vec2<f32>(x_936, x_936)) + vec2<f32>(-1.0f, 1.0f));
  let x_941 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_940.x, x_941.y, x_940.y);
  let x_944 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_944);
  let x_946 : vec4<f32> = u_xlat5;
  let x_949 : f32 = u_xlat44;
  let x_951 : vec3<f32> = (-(vec3<f32>(x_946.x, x_946.y, x_946.z)) + vec3<f32>(x_949, x_949, x_949));
  let x_952 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_954 : f32 = u_xlat32;
  let x_956 : vec4<f32> = u_xlat9;
  let x_959 : vec4<f32> = u_xlat5;
  let x_961 : vec3<f32> = ((vec3<f32>(x_954, x_954, x_954) * vec3<f32>(x_956.x, x_956.y, x_956.z)) + vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  let x_964 : f32 = u_xlat28;
  let x_966 : vec4<f32> = u_xlat9;
  let x_968 : vec3<f32> = (vec3<f32>(x_964, x_964, x_964) * vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : vec4<f32> = u_xlat8;
  let x_973 : vec4<f32> = u_xlat9;
  let x_975 : vec3<f32> = (vec3<f32>(x_971.x, x_971.y, x_971.z) * vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec4<f32> = u_xlat3;
  let x_980 : vec4<f32> = u_xlat6;
  let x_983 : vec4<f32> = u_xlat8;
  let x_985 : vec3<f32> = ((vec3<f32>(x_978.x, x_978.y, x_978.z) * vec3<f32>(x_980.x, x_980.y, x_980.z)) + vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_989 : f32 = u_xlat4.x;
  let x_991 : f32 = x_895.unity_LightData.z;
  u_xlat28 = (x_989 * x_991);
  let x_993 : vec4<f32> = u_xlat1;
  let x_996 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : f32 = u_xlat44;
  u_xlat44 = clamp(x_999, 0.0f, 1.0f);
  let x_1001 : f32 = u_xlat28;
  let x_1002 : f32 = u_xlat44;
  u_xlat28 = (x_1001 * x_1002);
  let x_1004 : f32 = u_xlat28;
  let x_1006 : vec4<f32> = u_xlat7;
  let x_1008 : vec3<f32> = (vec3<f32>(x_1004, x_1004, x_1004) * vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1008.x, x_1009.y, x_1008.y, x_1008.z);
  let x_1011 : vec3<f32> = u_xlat2;
  let x_1013 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1015 : vec3<f32> = (x_1011 + vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec4<f32> = u_xlat7;
  let x_1020 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1018.x, x_1018.y, x_1018.z), vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : f32 = u_xlat28;
  u_xlat28 = max(x_1023, 1.17549435e-37f);
  let x_1026 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1026);
  let x_1028 : f32 = u_xlat28;
  let x_1030 : vec4<f32> = u_xlat7;
  let x_1032 : vec3<f32> = (vec3<f32>(x_1028, x_1028, x_1028) * vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec4<f32> = u_xlat1;
  let x_1037 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1035.x, x_1035.y, x_1035.z), vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1040, 0.0f, 1.0f);
  let x_1043 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1045 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1043.x, x_1043.y, x_1043.z), vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1048, 0.0f, 1.0f);
  let x_1050 : f32 = u_xlat28;
  let x_1051 : f32 = u_xlat28;
  u_xlat28 = (x_1050 * x_1051);
  let x_1053 : f32 = u_xlat28;
  let x_1055 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1053 * x_1055) + 1.000010014f);
  let x_1059 : f32 = u_xlat44;
  let x_1060 : f32 = u_xlat44;
  u_xlat44 = (x_1059 * x_1060);
  let x_1062 : f32 = u_xlat28;
  let x_1063 : f32 = u_xlat28;
  u_xlat28 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat44;
  u_xlat44 = max(x_1065, 0.100000001f);
  let x_1068 : f32 = u_xlat28;
  let x_1069 : f32 = u_xlat44;
  u_xlat28 = (x_1068 * x_1069);
  let x_1071 : f32 = u_xlat45;
  let x_1072 : f32 = u_xlat28;
  u_xlat28 = (x_1071 * x_1072);
  let x_1074 : f32 = u_xlat43;
  let x_1075 : f32 = u_xlat28;
  u_xlat28 = (x_1074 / x_1075);
  let x_1077 : vec4<f32> = u_xlat5;
  let x_1079 : f32 = u_xlat28;
  let x_1082 : vec4<f32> = u_xlat6;
  let x_1084 : vec3<f32> = ((vec3<f32>(x_1077.x, x_1077.y, x_1077.z) * vec3<f32>(x_1079, x_1079, x_1079)) + vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
  let x_1085 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
  let x_1087 : vec4<f32> = u_xlat4;
  let x_1089 : vec4<f32> = u_xlat7;
  let x_1091 : vec3<f32> = (vec3<f32>(x_1087.x, x_1087.z, x_1087.w) * vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1092 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1091.x, x_1092.y, x_1091.y, x_1091.z);
  let x_1095 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1097 : f32 = x_895.unity_LightData.y;
  u_xlat28 = min(x_1095, x_1097);
  let x_1101 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1101));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1113 : u32 = u_xlatu_loop_1;
    let x_1114 : u32 = u_xlatu28;
    if ((x_1113 < x_1114)) {
    } else {
      break;
    }
    let x_1117 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1117 >> 2u);
    let x_1121 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1121 & 3u));
    let x_1125 : u32 = u_xlatu47;
    let x_1128 : vec4<f32> = x_895.unity_LightIndices[bitcast<i32>(x_1125)];
    let x_1138 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1143 : vec4<u32> = indexable[x_1138];
    u_xlat47 = dot(x_1128, bitcast<vec4<f32>>(x_1143));
    let x_1147 : f32 = u_xlat47;
    u_xlati47 = i32(x_1147);
    let x_1149 : vec3<f32> = vs_TEXCOORD7;
    let x_1161 : i32 = u_xlati47;
    let x_1163 : vec4<f32> = x_1160.x_AdditionalLightsPosition[x_1161];
    let x_1166 : i32 = u_xlati47;
    let x_1168 : vec4<f32> = x_1160.x_AdditionalLightsPosition[x_1166];
    let x_1170 : vec3<f32> = ((-(x_1149) * vec3<f32>(x_1163.w, x_1163.w, x_1163.w)) + vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
    let x_1171 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
    let x_1174 : vec4<f32> = u_xlat8;
    let x_1176 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1174.x, x_1174.y, x_1174.z), vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
    let x_1179 : f32 = u_xlat48;
    u_xlat48 = max(x_1179, 6.10351562e-05f);
    let x_1182 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1182);
    let x_1184 : f32 = u_xlat49;
    let x_1186 : vec4<f32> = u_xlat8;
    let x_1188 : vec3<f32> = (vec3<f32>(x_1184, x_1184, x_1184) * vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
    let x_1189 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
    let x_1192 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1192);
    let x_1194 : f32 = u_xlat48;
    let x_1195 : i32 = u_xlati47;
    let x_1197 : f32 = x_1160.x_AdditionalLightsAttenuation[x_1195].x;
    u_xlat48 = (x_1194 * x_1197);
    let x_1199 : f32 = u_xlat48;
    let x_1201 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1199) * x_1201) + 1.0f);
    let x_1204 : f32 = u_xlat48;
    u_xlat48 = max(x_1204, 0.0f);
    let x_1206 : f32 = u_xlat48;
    let x_1207 : f32 = u_xlat48;
    u_xlat48 = (x_1206 * x_1207);
    let x_1209 : f32 = u_xlat48;
    let x_1210 : f32 = u_xlat50;
    u_xlat48 = (x_1209 * x_1210);
    let x_1212 : i32 = u_xlati47;
    let x_1214 : vec4<f32> = x_1160.x_AdditionalLightsSpotDir[x_1212];
    let x_1216 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1214.x, x_1214.y, x_1214.z), vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
    let x_1219 : f32 = u_xlat50;
    let x_1220 : i32 = u_xlati47;
    let x_1222 : f32 = x_1160.x_AdditionalLightsAttenuation[x_1220].z;
    let x_1224 : i32 = u_xlati47;
    let x_1226 : f32 = x_1160.x_AdditionalLightsAttenuation[x_1224].w;
    u_xlat50 = ((x_1219 * x_1222) + x_1226);
    let x_1228 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1228, 0.0f, 1.0f);
    let x_1230 : f32 = u_xlat50;
    let x_1231 : f32 = u_xlat50;
    u_xlat50 = (x_1230 * x_1231);
    let x_1233 : f32 = u_xlat48;
    let x_1234 : f32 = u_xlat50;
    u_xlat48 = (x_1233 * x_1234);
    let x_1236 : f32 = u_xlat18;
    let x_1238 : i32 = u_xlati47;
    let x_1240 : vec4<f32> = x_1160.x_AdditionalLightsColor[x_1238];
    let x_1242 : vec3<f32> = (vec3<f32>(x_1236, x_1236, x_1236) * vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
    let x_1243 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
    let x_1245 : vec4<f32> = u_xlat1;
    let x_1247 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1245.x, x_1245.y, x_1245.z), vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
    let x_1250 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1250, 0.0f, 1.0f);
    let x_1252 : f32 = u_xlat47;
    let x_1253 : f32 = u_xlat48;
    u_xlat47 = (x_1252 * x_1253);
    let x_1255 : f32 = u_xlat47;
    let x_1257 : vec4<f32> = u_xlat10;
    let x_1259 : vec3<f32> = (vec3<f32>(x_1255, x_1255, x_1255) * vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
    let x_1260 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
    let x_1262 : vec4<f32> = u_xlat8;
    let x_1264 : f32 = u_xlat49;
    let x_1267 : vec3<f32> = u_xlat2;
    let x_1268 : vec3<f32> = ((vec3<f32>(x_1262.x, x_1262.y, x_1262.z) * vec3<f32>(x_1264, x_1264, x_1264)) + x_1267);
    let x_1269 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
    let x_1271 : vec4<f32> = u_xlat8;
    let x_1273 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1271.x, x_1271.y, x_1271.z), vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
    let x_1276 : f32 = u_xlat47;
    u_xlat47 = max(x_1276, 1.17549435e-37f);
    let x_1278 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1278);
    let x_1280 : f32 = u_xlat47;
    let x_1282 : vec4<f32> = u_xlat8;
    let x_1284 : vec3<f32> = (vec3<f32>(x_1280, x_1280, x_1280) * vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
    let x_1285 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
    let x_1287 : vec4<f32> = u_xlat1;
    let x_1289 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1287.x, x_1287.y, x_1287.z), vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
    let x_1292 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1292, 0.0f, 1.0f);
    let x_1294 : vec4<f32> = u_xlat9;
    let x_1296 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1294.x, x_1294.y, x_1294.z), vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
    let x_1299 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1299, 0.0f, 1.0f);
    let x_1301 : f32 = u_xlat47;
    let x_1302 : f32 = u_xlat47;
    u_xlat47 = (x_1301 * x_1302);
    let x_1304 : f32 = u_xlat47;
    let x_1306 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1304 * x_1306) + 1.000010014f);
    let x_1309 : f32 = u_xlat48;
    let x_1310 : f32 = u_xlat48;
    u_xlat48 = (x_1309 * x_1310);
    let x_1312 : f32 = u_xlat47;
    let x_1313 : f32 = u_xlat47;
    u_xlat47 = (x_1312 * x_1313);
    let x_1315 : f32 = u_xlat48;
    u_xlat48 = max(x_1315, 0.100000001f);
    let x_1317 : f32 = u_xlat47;
    let x_1318 : f32 = u_xlat48;
    u_xlat47 = (x_1317 * x_1318);
    let x_1320 : f32 = u_xlat45;
    let x_1321 : f32 = u_xlat47;
    u_xlat47 = (x_1320 * x_1321);
    let x_1323 : f32 = u_xlat43;
    let x_1324 : f32 = u_xlat47;
    u_xlat47 = (x_1323 / x_1324);
    let x_1326 : vec4<f32> = u_xlat5;
    let x_1328 : f32 = u_xlat47;
    let x_1331 : vec4<f32> = u_xlat6;
    let x_1333 : vec3<f32> = ((vec3<f32>(x_1326.x, x_1326.y, x_1326.z) * vec3<f32>(x_1328, x_1328, x_1328)) + vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
    let x_1334 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
    let x_1336 : vec4<f32> = u_xlat8;
    let x_1338 : vec4<f32> = u_xlat10;
    let x_1341 : vec4<f32> = u_xlat7;
    let x_1343 : vec3<f32> = ((vec3<f32>(x_1336.x, x_1336.y, x_1336.z) * vec3<f32>(x_1338.x, x_1338.y, x_1338.z)) + vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
    let x_1344 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);

    continuing {
      let x_1346 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1346 + bitcast<u32>(1i));
    }
  }
  let x_1348 : vec4<f32> = u_xlat3;
  let x_1350 : f32 = u_xlat14;
  let x_1353 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1348.x, x_1348.y, x_1348.z) * vec3<f32>(x_1350, x_1350, x_1350)) + vec3<f32>(x_1353.x, x_1353.z, x_1353.w));
  let x_1356 : vec4<f32> = u_xlat7;
  let x_1358 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1356.x, x_1356.y, x_1356.z) + x_1358);
  let x_1362 : f32 = u_xlat42;
  let x_1364 : vec3<f32> = u_xlat0;
  let x_1365 : vec3<f32> = (vec3<f32>(x_1362, x_1362, x_1362) * x_1364);
  let x_1366 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

