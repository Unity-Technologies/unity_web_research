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

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(9) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_602 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_789 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1416 : AdditionalLights;

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
  var u_xlatb3 : vec4<bool>;
  var u_xlat44 : f32;
  var u_xlatu44 : u32;
  var u_xlati44 : i32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb31 : bool;
  var x_1016 : f32;
  var u_xlat31 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu43 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati43 : i32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
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
  let x_597 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres0;
  let x_607 : vec3<f32> = (x_597 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_612 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres1;
  let x_615 : vec3<f32> = (x_610 + -(vec3<f32>(x_612.x, x_612.y, x_612.z)));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres2;
  let x_624 : vec3<f32> = (x_618 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec3<f32> = vs_TEXCOORD7;
  let x_629 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres3;
  let x_632 : vec3<f32> = (x_627 + -(vec3<f32>(x_629.x, x_629.y, x_629.z)));
  let x_633 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat3;
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_635.x, x_635.y, x_635.z), vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_647 : vec4<f32> = u_xlat6;
  let x_649 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_653 : vec4<f32> = u_xlat7;
  let x_655 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_661 : vec4<f32> = u_xlat3;
  let x_663 : vec4<f32> = x_602.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_661 < x_663);
  let x_666 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_682);
  let x_687 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_687);
  let x_691 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_691);
  let x_694 : vec4<f32> = u_xlat3;
  let x_696 : vec4<f32> = u_xlat4;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + vec3<f32>(x_696.y, x_696.z, x_696.w));
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat3;
  let x_704 : vec3<f32> = max(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_705 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_704.x, x_704.y, x_704.z);
  let x_708 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_708, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_713 : f32 = u_xlat44;
  u_xlat44 = (-(x_713) + 4.0f);
  let x_718 : f32 = u_xlat44;
  u_xlatu44 = u32(x_718);
  let x_722 : u32 = u_xlatu44;
  u_xlati44 = (bitcast<i32>(x_722) << bitcast<u32>(2i));
  let x_725 : vec3<f32> = vs_TEXCOORD7;
  let x_727 : i32 = u_xlati44;
  let x_730 : i32 = u_xlati44;
  let x_734 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_727 + 1i) / 4i)][((x_730 + 1i) % 4i)];
  let x_736 : vec3<f32> = (vec3<f32>(x_725.y, x_725.y, x_725.y) * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : i32 = u_xlati44;
  let x_741 : i32 = u_xlati44;
  let x_744 : vec4<f32> = x_602.x_MainLightWorldToShadow[(x_739 / 4i)][(x_741 % 4i)];
  let x_746 : vec3<f32> = vs_TEXCOORD7;
  let x_749 : vec4<f32> = u_xlat3;
  let x_751 : vec3<f32> = ((vec3<f32>(x_744.x, x_744.y, x_744.z) * vec3<f32>(x_746.x, x_746.x, x_746.x)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : i32 = u_xlati44;
  let x_757 : i32 = u_xlati44;
  let x_761 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_754 + 2i) / 4i)][((x_757 + 2i) % 4i)];
  let x_763 : vec3<f32> = vs_TEXCOORD7;
  let x_766 : vec4<f32> = u_xlat3;
  let x_768 : vec3<f32> = ((vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(x_763.z, x_763.z, x_763.z)) + vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat3;
  let x_773 : i32 = u_xlati44;
  let x_776 : i32 = u_xlati44;
  let x_780 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_773 + 3i) / 4i)][((x_776 + 3i) % 4i)];
  let x_782 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) + vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  u_xlat1.w = 1.0f;
  let x_791 : vec4<f32> = x_789.unity_SHAr;
  let x_792 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_791, x_792);
  let x_796 : vec4<f32> = x_789.unity_SHAg;
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_796, x_797);
  let x_801 : vec4<f32> = x_789.unity_SHAb;
  let x_802 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_801, x_802);
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_805.y, x_805.z, x_805.z, x_805.x) * vec4<f32>(x_807.x, x_807.y, x_807.z, x_807.z));
  let x_811 : vec4<f32> = x_789.unity_SHBr;
  let x_812 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_811, x_812);
  let x_816 : vec4<f32> = x_789.unity_SHBg;
  let x_817 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_816, x_817);
  let x_821 : vec4<f32> = x_789.unity_SHBb;
  let x_822 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_821, x_822);
  let x_826 : f32 = u_xlat1.y;
  let x_828 : f32 = u_xlat1.y;
  u_xlat43 = (x_826 * x_828);
  let x_831 : f32 = u_xlat1.x;
  let x_833 : f32 = u_xlat1.x;
  let x_835 : f32 = u_xlat43;
  u_xlat43 = ((x_831 * x_833) + -(x_835));
  let x_840 : vec4<f32> = x_789.unity_SHC;
  let x_842 : f32 = u_xlat43;
  let x_845 : vec4<f32> = u_xlat7;
  let x_847 : vec3<f32> = ((vec3<f32>(x_840.x, x_840.y, x_840.z) * vec3<f32>(x_842, x_842, x_842)) + vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat4;
  let x_852 : vec4<f32> = u_xlat6;
  let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) + vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec4<f32> = u_xlat4;
  let x_859 : vec3<f32> = max(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_860 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_864 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
  let x_869 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_865.x, x_865.y));
  let x_870 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
  let x_872 : vec4<f32> = u_xlat6;
  let x_874 : vec4<f32> = hlslcc_FragCoord;
  let x_876 : vec2<f32> = (vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_874.x, x_874.y));
  let x_877 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
  let x_880 : f32 = u_xlat6.y;
  let x_882 : f32 = x_126.x_ScaleBiasRt.x;
  let x_885 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_880 * x_882) + x_885);
  let x_887 : f32 = u_xlat43;
  u_xlat6.z = (-(x_887) + 1.0f);
  let x_892 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_892) * 0.959999979f) + 0.959999979f);
  let x_897 : f32 = u_xlat43;
  u_xlat44 = (-(x_897) + 1.0f);
  let x_900 : f32 = u_xlat43;
  let x_902 : vec4<f32> = u_xlat5;
  let x_904 : vec3<f32> = (vec3<f32>(x_900, x_900, x_900) * vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat5;
  let x_911 : vec3<f32> = (vec3<f32>(x_907.x, x_907.y, x_907.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_912 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec3<f32> = u_xlat0;
  let x_916 : vec4<f32> = u_xlat5;
  let x_921 : vec3<f32> = ((vec3<f32>(x_914.x, x_914.x, x_914.x) * vec3<f32>(x_916.x, x_916.y, x_916.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_922 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_924 : f32 = u_xlat28;
  u_xlat0.x = (-(x_924) + 1.0f);
  let x_929 : f32 = u_xlat0.x;
  let x_931 : f32 = u_xlat0.x;
  u_xlat43 = (x_929 * x_931);
  let x_933 : f32 = u_xlat43;
  u_xlat43 = max(x_933, 0.0078125f);
  let x_937 : f32 = u_xlat43;
  let x_938 : f32 = u_xlat43;
  u_xlat45 = (x_937 * x_938);
  let x_940 : f32 = u_xlat28;
  let x_941 : f32 = u_xlat44;
  u_xlat28 = (x_940 + x_941);
  let x_943 : f32 = u_xlat28;
  u_xlat28 = clamp(x_943, 0.0f, 1.0f);
  let x_945 : f32 = u_xlat43;
  u_xlat44 = ((x_945 * 4.0f) + 2.0f);
  let x_954 : vec4<f32> = u_xlat6;
  let x_957 : f32 = x_126.x_GlobalMipBias.x;
  let x_958 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_954.x, x_954.z), x_957);
  u_xlat46 = x_958.x;
  let x_961 : f32 = u_xlat46;
  u_xlat47 = (x_961 + -1.0f);
  let x_964 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_965 : f32 = u_xlat47;
  u_xlat47 = ((x_964 * x_965) + 1.0f);
  let x_968 : f32 = u_xlat14;
  let x_969 : f32 = u_xlat46;
  u_xlat14 = min(x_968, x_969);
  let x_972 : vec4<f32> = u_xlat3;
  let x_973 : vec2<f32> = vec2<f32>(x_972.x, x_972.y);
  let x_975 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_973.x, x_973.y, x_975);
  let x_987 : vec3<f32> = txVec0;
  let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_987.xy, x_987.z);
  u_xlat3.x = x_989;
  let x_993 : f32 = x_602.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_993) + 1.0f);
  let x_997 : f32 = u_xlat3.x;
  let x_999 : f32 = x_602.x_MainLightShadowParams.x;
  let x_1001 : f32 = u_xlat17;
  u_xlat3.x = ((x_997 * x_999) + x_1001);
  let x_1006 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_1006);
  let x_1010 : f32 = u_xlat3.z;
  u_xlatb31 = (x_1010 >= 1.0f);
  let x_1012 : bool = u_xlatb31;
  let x_1013 : bool = u_xlatb17;
  u_xlatb17 = (x_1012 | x_1013);
  let x_1015 : bool = u_xlatb17;
  if (x_1015) {
    x_1016 = 1.0f;
  } else {
    let x_1021 : f32 = u_xlat3.x;
    x_1016 = x_1021;
  }
  let x_1022 : f32 = x_1016;
  u_xlat3.x = x_1022;
  let x_1024 : vec3<f32> = vs_TEXCOORD7;
  let x_1026 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1028 : vec3<f32> = (x_1024 + -(x_1026));
  let x_1029 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
  let x_1031 : vec4<f32> = u_xlat6;
  let x_1033 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec3<f32>(x_1031.x, x_1031.y, x_1031.z), vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : f32 = u_xlat17;
  let x_1038 : f32 = x_602.x_MainLightShadowParams.z;
  let x_1041 : f32 = x_602.x_MainLightShadowParams.w;
  u_xlat17 = ((x_1036 * x_1038) + x_1041);
  let x_1043 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1043, 0.0f, 1.0f);
  let x_1047 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_1047) + 1.0f);
  let x_1050 : f32 = u_xlat17;
  let x_1051 : f32 = u_xlat31;
  let x_1054 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1050 * x_1051) + x_1054);
  let x_1057 : f32 = u_xlat47;
  let x_1060 : vec4<f32> = x_126.x_MainLightColor;
  let x_1062 : vec3<f32> = (vec3<f32>(x_1057, x_1057, x_1057) * vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1065 : vec3<f32> = u_xlat2;
  let x_1067 : vec4<f32> = u_xlat1;
  u_xlat17 = dot(-(x_1065), vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1070 : f32 = u_xlat17;
  let x_1071 : f32 = u_xlat17;
  u_xlat17 = (x_1070 + x_1071);
  let x_1073 : vec4<f32> = u_xlat1;
  let x_1075 : f32 = u_xlat17;
  let x_1079 : vec3<f32> = u_xlat2;
  let x_1081 : vec3<f32> = ((vec3<f32>(x_1073.x, x_1073.y, x_1073.z) * -(vec3<f32>(x_1075, x_1075, x_1075))) + -(x_1079));
  let x_1082 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  let x_1084 : vec4<f32> = u_xlat1;
  let x_1086 : vec3<f32> = u_xlat2;
  u_xlat17 = dot(vec3<f32>(x_1084.x, x_1084.y, x_1084.z), x_1086);
  let x_1088 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1088, 0.0f, 1.0f);
  let x_1090 : f32 = u_xlat17;
  u_xlat17 = (-(x_1090) + 1.0f);
  let x_1093 : f32 = u_xlat17;
  let x_1094 : f32 = u_xlat17;
  u_xlat17 = (x_1093 * x_1094);
  let x_1096 : f32 = u_xlat17;
  let x_1097 : f32 = u_xlat17;
  u_xlat17 = (x_1096 * x_1097);
  let x_1100 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1100) * 0.699999988f) + 1.700000048f);
  let x_1107 : f32 = u_xlat0.x;
  let x_1108 : f32 = u_xlat31;
  u_xlat0.x = (x_1107 * x_1108);
  let x_1112 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1112 * 6.0f);
  let x_1124 : vec4<f32> = u_xlat8;
  let x_1127 : f32 = u_xlat0.x;
  let x_1128 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1124.x, x_1124.y, x_1124.z), x_1127);
  u_xlat8 = x_1128;
  let x_1130 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1130 + -1.0f);
  let x_1134 : f32 = x_789.unity_SpecCube0_HDR.w;
  let x_1136 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1134 * x_1136) + 1.0f);
  let x_1141 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1141, 0.0f);
  let x_1145 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1145);
  let x_1149 : f32 = u_xlat0.x;
  let x_1151 : f32 = x_789.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1149 * x_1151);
  let x_1155 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1155);
  let x_1159 : f32 = u_xlat0.x;
  let x_1161 : f32 = x_789.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1159 * x_1161);
  let x_1164 : vec4<f32> = u_xlat8;
  let x_1166 : vec3<f32> = u_xlat0;
  let x_1168 : vec3<f32> = (vec3<f32>(x_1164.x, x_1164.y, x_1164.z) * vec3<f32>(x_1166.x, x_1166.x, x_1166.x));
  let x_1169 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : f32 = u_xlat43;
  let x_1173 : f32 = u_xlat43;
  let x_1177 : vec2<f32> = ((vec2<f32>(x_1171, x_1171) * vec2<f32>(x_1173, x_1173)) + vec2<f32>(-1.0f, 1.0f));
  let x_1178 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
  let x_1181 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_1181);
  let x_1185 : vec4<f32> = u_xlat5;
  let x_1188 : f32 = u_xlat28;
  u_xlat23 = (-(vec3<f32>(x_1185.x, x_1185.y, x_1185.z)) + vec3<f32>(x_1188, x_1188, x_1188));
  let x_1191 : f32 = u_xlat17;
  let x_1193 : vec3<f32> = u_xlat23;
  let x_1195 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_1191, x_1191, x_1191) * x_1193) + vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
  let x_1198 : vec3<f32> = u_xlat0;
  let x_1200 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1198.x, x_1198.x, x_1198.x) * x_1200);
  let x_1202 : vec4<f32> = u_xlat8;
  let x_1204 : vec3<f32> = u_xlat23;
  let x_1205 : vec3<f32> = (vec3<f32>(x_1202.x, x_1202.y, x_1202.z) * x_1204);
  let x_1206 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1208 : vec4<f32> = u_xlat4;
  let x_1210 : vec4<f32> = u_xlat7;
  let x_1213 : vec4<f32> = u_xlat8;
  let x_1215 : vec3<f32> = ((vec3<f32>(x_1208.x, x_1208.y, x_1208.z) * vec3<f32>(x_1210.x, x_1210.y, x_1210.z)) + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1219 : f32 = u_xlat3.x;
  let x_1221 : f32 = x_789.unity_LightData.z;
  u_xlat0.x = (x_1219 * x_1221);
  let x_1224 : vec4<f32> = u_xlat1;
  let x_1227 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1224.x, x_1224.y, x_1224.z), vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1230 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1230, 0.0f, 1.0f);
  let x_1232 : f32 = u_xlat28;
  let x_1234 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1232 * x_1234);
  let x_1237 : vec3<f32> = u_xlat0;
  let x_1239 : vec4<f32> = u_xlat6;
  let x_1241 : vec3<f32> = (vec3<f32>(x_1237.x, x_1237.x, x_1237.x) * vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec3<f32> = u_xlat2;
  let x_1246 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1248 : vec3<f32> = (x_1244 + vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
  let x_1249 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
  let x_1251 : vec4<f32> = u_xlat6;
  let x_1253 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_1251.x, x_1251.y, x_1251.z), vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
  let x_1258 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1258, 1.17549435e-37f);
  let x_1263 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1263);
  let x_1266 : vec3<f32> = u_xlat0;
  let x_1268 : vec4<f32> = u_xlat6;
  let x_1270 : vec3<f32> = (vec3<f32>(x_1266.x, x_1266.x, x_1266.x) * vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
  let x_1271 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
  let x_1273 : vec4<f32> = u_xlat1;
  let x_1275 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_1273.x, x_1273.y, x_1273.z), vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
  let x_1280 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1280, 0.0f, 1.0f);
  let x_1284 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1286 : vec4<f32> = u_xlat6;
  u_xlat0.z = dot(vec3<f32>(x_1284.x, x_1284.y, x_1284.z), vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
  let x_1291 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1291, 0.0f, 1.0f);
  let x_1294 : vec3<f32> = u_xlat0;
  let x_1296 : vec3<f32> = u_xlat0;
  let x_1298 : vec2<f32> = (vec2<f32>(x_1294.x, x_1294.z) * vec2<f32>(x_1296.x, x_1296.z));
  let x_1299 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1298.x, x_1299.y, x_1298.y);
  let x_1302 : f32 = u_xlat0.x;
  let x_1304 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1302 * x_1304) + 1.000010014f);
  let x_1310 : f32 = u_xlat0.x;
  let x_1312 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1310 * x_1312);
  let x_1316 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1316, 0.100000001f);
  let x_1319 : f32 = u_xlat28;
  let x_1321 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1319 * x_1321);
  let x_1324 : f32 = u_xlat44;
  let x_1326 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1324 * x_1326);
  let x_1329 : f32 = u_xlat45;
  let x_1331 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1329 / x_1331);
  let x_1334 : vec4<f32> = u_xlat5;
  let x_1336 : vec3<f32> = u_xlat0;
  let x_1339 : vec4<f32> = u_xlat7;
  let x_1341 : vec3<f32> = ((vec3<f32>(x_1334.x, x_1334.y, x_1334.z) * vec3<f32>(x_1336.x, x_1336.x, x_1336.x)) + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
  let x_1344 : vec4<f32> = u_xlat3;
  let x_1346 : vec4<f32> = u_xlat6;
  let x_1348 : vec3<f32> = (vec3<f32>(x_1344.x, x_1344.y, x_1344.z) * vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
  let x_1349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
  let x_1352 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1354 : f32 = x_789.unity_LightData.y;
  u_xlat0.x = min(x_1352, x_1354);
  let x_1359 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1359));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1371 : u32 = u_xlatu_loop_1;
    let x_1372 : u32 = u_xlatu0;
    if ((x_1371 < x_1372)) {
    } else {
      break;
    }
    let x_1375 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1375 >> 2u);
    let x_1378 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1378 & 3u));
    let x_1381 : u32 = u_xlatu43;
    let x_1384 : vec4<f32> = x_789.unity_LightIndices[bitcast<i32>(x_1381)];
    let x_1394 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1399 : vec4<u32> = indexable[x_1394];
    u_xlat43 = dot(x_1384, bitcast<vec4<f32>>(x_1399));
    let x_1403 : f32 = u_xlat43;
    u_xlati43 = i32(x_1403);
    let x_1405 : vec3<f32> = vs_TEXCOORD7;
    let x_1417 : i32 = u_xlati43;
    let x_1419 : vec4<f32> = x_1416.x_AdditionalLightsPosition[x_1417];
    let x_1422 : i32 = u_xlati43;
    let x_1424 : vec4<f32> = x_1416.x_AdditionalLightsPosition[x_1422];
    let x_1426 : vec3<f32> = ((-(x_1405) * vec3<f32>(x_1419.w, x_1419.w, x_1419.w)) + vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
    let x_1427 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
    let x_1429 : vec4<f32> = u_xlat8;
    let x_1431 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1429.x, x_1429.y, x_1429.z), vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
    let x_1434 : f32 = u_xlat46;
    u_xlat46 = max(x_1434, 6.10351562e-05f);
    let x_1437 : f32 = u_xlat46;
    u_xlat48 = inverseSqrt(x_1437);
    let x_1439 : f32 = u_xlat48;
    let x_1441 : vec4<f32> = u_xlat8;
    u_xlat23 = (vec3<f32>(x_1439, x_1439, x_1439) * vec3<f32>(x_1441.x, x_1441.y, x_1441.z));
    let x_1445 : f32 = u_xlat46;
    u_xlat49 = (1.0f / x_1445);
    let x_1447 : f32 = u_xlat46;
    let x_1448 : i32 = u_xlati43;
    let x_1450 : f32 = x_1416.x_AdditionalLightsAttenuation[x_1448].x;
    u_xlat46 = (x_1447 * x_1450);
    let x_1452 : f32 = u_xlat46;
    let x_1454 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1452) * x_1454) + 1.0f);
    let x_1457 : f32 = u_xlat46;
    u_xlat46 = max(x_1457, 0.0f);
    let x_1459 : f32 = u_xlat46;
    let x_1460 : f32 = u_xlat46;
    u_xlat46 = (x_1459 * x_1460);
    let x_1462 : f32 = u_xlat46;
    let x_1463 : f32 = u_xlat49;
    u_xlat46 = (x_1462 * x_1463);
    let x_1465 : i32 = u_xlati43;
    let x_1467 : vec4<f32> = x_1416.x_AdditionalLightsSpotDir[x_1465];
    let x_1469 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(vec3<f32>(x_1467.x, x_1467.y, x_1467.z), x_1469);
    let x_1471 : f32 = u_xlat49;
    let x_1472 : i32 = u_xlati43;
    let x_1474 : f32 = x_1416.x_AdditionalLightsAttenuation[x_1472].z;
    let x_1476 : i32 = u_xlati43;
    let x_1478 : f32 = x_1416.x_AdditionalLightsAttenuation[x_1476].w;
    u_xlat49 = ((x_1471 * x_1474) + x_1478);
    let x_1480 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1480, 0.0f, 1.0f);
    let x_1482 : f32 = u_xlat49;
    let x_1483 : f32 = u_xlat49;
    u_xlat49 = (x_1482 * x_1483);
    let x_1485 : f32 = u_xlat46;
    let x_1486 : f32 = u_xlat49;
    u_xlat46 = (x_1485 * x_1486);
    let x_1488 : f32 = u_xlat47;
    let x_1490 : i32 = u_xlati43;
    let x_1492 : vec4<f32> = x_1416.x_AdditionalLightsColor[x_1490];
    let x_1494 : vec3<f32> = (vec3<f32>(x_1488, x_1488, x_1488) * vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
    let x_1495 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
    let x_1497 : vec4<f32> = u_xlat1;
    let x_1499 : vec3<f32> = u_xlat23;
    u_xlat43 = dot(vec3<f32>(x_1497.x, x_1497.y, x_1497.z), x_1499);
    let x_1501 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1501, 0.0f, 1.0f);
    let x_1503 : f32 = u_xlat43;
    let x_1504 : f32 = u_xlat46;
    u_xlat43 = (x_1503 * x_1504);
    let x_1506 : f32 = u_xlat43;
    let x_1508 : vec4<f32> = u_xlat10;
    let x_1510 : vec3<f32> = (vec3<f32>(x_1506, x_1506, x_1506) * vec3<f32>(x_1508.x, x_1508.y, x_1508.z));
    let x_1511 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1510.x, x_1510.y, x_1510.z, x_1511.w);
    let x_1513 : vec4<f32> = u_xlat8;
    let x_1515 : f32 = u_xlat48;
    let x_1518 : vec3<f32> = u_xlat2;
    let x_1519 : vec3<f32> = ((vec3<f32>(x_1513.x, x_1513.y, x_1513.z) * vec3<f32>(x_1515, x_1515, x_1515)) + x_1518);
    let x_1520 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1520.w);
    let x_1522 : vec4<f32> = u_xlat8;
    let x_1524 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1522.x, x_1522.y, x_1522.z), vec3<f32>(x_1524.x, x_1524.y, x_1524.z));
    let x_1527 : f32 = u_xlat43;
    u_xlat43 = max(x_1527, 1.17549435e-37f);
    let x_1529 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1529);
    let x_1531 : f32 = u_xlat43;
    let x_1533 : vec4<f32> = u_xlat8;
    let x_1535 : vec3<f32> = (vec3<f32>(x_1531, x_1531, x_1531) * vec3<f32>(x_1533.x, x_1533.y, x_1533.z));
    let x_1536 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
    let x_1538 : vec4<f32> = u_xlat1;
    let x_1540 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1538.x, x_1538.y, x_1538.z), vec3<f32>(x_1540.x, x_1540.y, x_1540.z));
    let x_1543 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1543, 0.0f, 1.0f);
    let x_1545 : vec3<f32> = u_xlat23;
    let x_1546 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(x_1545, vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
    let x_1549 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1549, 0.0f, 1.0f);
    let x_1551 : f32 = u_xlat43;
    let x_1552 : f32 = u_xlat43;
    u_xlat43 = (x_1551 * x_1552);
    let x_1554 : f32 = u_xlat43;
    let x_1556 : f32 = u_xlat9.x;
    u_xlat43 = ((x_1554 * x_1556) + 1.000010014f);
    let x_1559 : f32 = u_xlat46;
    let x_1560 : f32 = u_xlat46;
    u_xlat46 = (x_1559 * x_1560);
    let x_1562 : f32 = u_xlat43;
    let x_1563 : f32 = u_xlat43;
    u_xlat43 = (x_1562 * x_1563);
    let x_1565 : f32 = u_xlat46;
    u_xlat46 = max(x_1565, 0.100000001f);
    let x_1567 : f32 = u_xlat43;
    let x_1568 : f32 = u_xlat46;
    u_xlat43 = (x_1567 * x_1568);
    let x_1570 : f32 = u_xlat44;
    let x_1571 : f32 = u_xlat43;
    u_xlat43 = (x_1570 * x_1571);
    let x_1573 : f32 = u_xlat45;
    let x_1574 : f32 = u_xlat43;
    u_xlat43 = (x_1573 / x_1574);
    let x_1576 : vec4<f32> = u_xlat5;
    let x_1578 : f32 = u_xlat43;
    let x_1581 : vec4<f32> = u_xlat7;
    let x_1583 : vec3<f32> = ((vec3<f32>(x_1576.x, x_1576.y, x_1576.z) * vec3<f32>(x_1578, x_1578, x_1578)) + vec3<f32>(x_1581.x, x_1581.y, x_1581.z));
    let x_1584 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1584.w);
    let x_1586 : vec4<f32> = u_xlat8;
    let x_1588 : vec4<f32> = u_xlat10;
    let x_1591 : vec4<f32> = u_xlat6;
    let x_1593 : vec3<f32> = ((vec3<f32>(x_1586.x, x_1586.y, x_1586.z) * vec3<f32>(x_1588.x, x_1588.y, x_1588.z)) + vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
    let x_1594 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);

    continuing {
      let x_1596 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1596 + bitcast<u32>(1i));
    }
  }
  let x_1598 : vec4<f32> = u_xlat4;
  let x_1600 : f32 = u_xlat14;
  let x_1603 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_1598.x, x_1598.y, x_1598.z) * vec3<f32>(x_1600, x_1600, x_1600)) + vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
  let x_1606 : vec4<f32> = u_xlat6;
  let x_1608 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1606.x, x_1606.y, x_1606.z) + x_1608);
  let x_1612 : f32 = u_xlat42;
  let x_1614 : vec3<f32> = u_xlat0;
  let x_1615 : vec3<f32> = (vec3<f32>(x_1612, x_1612, x_1612) * x_1614);
  let x_1616 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

