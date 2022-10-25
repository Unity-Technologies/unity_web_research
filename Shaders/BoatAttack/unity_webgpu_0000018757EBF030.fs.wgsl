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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_602 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1113 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1375 : AdditionalLights;

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
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb31 : bool;
  var x_993 : f32;
  var u_xlat31 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati46 : i32;
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
  let x_707 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_707, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_712 : f32 = u_xlat43;
  u_xlat43 = (-(x_712) + 4.0f);
  let x_717 : f32 = u_xlat43;
  u_xlatu43 = u32(x_717);
  let x_721 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_721) << bitcast<u32>(2i));
  let x_724 : vec3<f32> = vs_TEXCOORD7;
  let x_726 : i32 = u_xlati43;
  let x_729 : i32 = u_xlati43;
  let x_733 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_726 + 1i) / 4i)][((x_729 + 1i) % 4i)];
  let x_735 : vec3<f32> = (vec3<f32>(x_724.y, x_724.y, x_724.y) * vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : i32 = u_xlati43;
  let x_740 : i32 = u_xlati43;
  let x_743 : vec4<f32> = x_602.x_MainLightWorldToShadow[(x_738 / 4i)][(x_740 % 4i)];
  let x_745 : vec3<f32> = vs_TEXCOORD7;
  let x_748 : vec4<f32> = u_xlat3;
  let x_750 : vec3<f32> = ((vec3<f32>(x_743.x, x_743.y, x_743.z) * vec3<f32>(x_745.x, x_745.x, x_745.x)) + vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : i32 = u_xlati43;
  let x_756 : i32 = u_xlati43;
  let x_760 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_753 + 2i) / 4i)][((x_756 + 2i) % 4i)];
  let x_762 : vec3<f32> = vs_TEXCOORD7;
  let x_765 : vec4<f32> = u_xlat3;
  let x_767 : vec3<f32> = ((vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_762.z, x_762.z, x_762.z)) + vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat3;
  let x_772 : i32 = u_xlati43;
  let x_775 : i32 = u_xlati43;
  let x_779 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_772 + 3i) / 4i)][((x_775 + 3i) % 4i)];
  let x_781 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_789 : vec4<f32> = vs_TEXCOORD0;
  let x_792 : f32 = x_126.x_GlobalMipBias.x;
  let x_793 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_789.z, x_789.w), x_792);
  u_xlat4 = x_793;
  let x_798 : vec4<f32> = vs_TEXCOORD0;
  let x_801 : f32 = x_126.x_GlobalMipBias.x;
  let x_802 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_798.z, x_798.w), x_801);
  let x_803 : vec3<f32> = vec3<f32>(x_802.x, x_802.y, x_802.z);
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat4;
  let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.y, x_806.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_811 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat1;
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_813.x, x_813.y, x_813.z), vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : f32 = u_xlat43;
  u_xlat43 = (x_818 + 0.5f);
  let x_820 : f32 = u_xlat43;
  let x_822 : vec4<f32> = u_xlat6;
  let x_824 : vec3<f32> = (vec3<f32>(x_820, x_820, x_820) * vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_828 : f32 = u_xlat4.w;
  u_xlat43 = max(x_828, 0.0001f);
  let x_831 : vec4<f32> = u_xlat4;
  let x_833 : f32 = u_xlat43;
  let x_835 : vec3<f32> = (vec3<f32>(x_831.x, x_831.y, x_831.z) / vec3<f32>(x_833, x_833, x_833));
  let x_836 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_840 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_841 : vec2<f32> = vec2<f32>(x_840.x, x_840.y);
  let x_845 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_841.x, x_841.y));
  let x_846 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat6;
  let x_850 : vec4<f32> = hlslcc_FragCoord;
  let x_852 : vec2<f32> = (vec2<f32>(x_848.x, x_848.y) * vec2<f32>(x_850.x, x_850.y));
  let x_853 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
  let x_856 : f32 = u_xlat6.y;
  let x_858 : f32 = x_126.x_ScaleBiasRt.x;
  let x_861 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_856 * x_858) + x_861);
  let x_863 : f32 = u_xlat43;
  u_xlat6.z = (-(x_863) + 1.0f);
  let x_868 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_868) * 0.959999979f) + 0.959999979f);
  let x_874 : f32 = u_xlat28;
  let x_875 : f32 = u_xlat43;
  u_xlat44 = (x_874 + -(x_875));
  let x_878 : f32 = u_xlat43;
  let x_880 : vec4<f32> = u_xlat5;
  let x_882 : vec3<f32> = (vec3<f32>(x_878, x_878, x_878) * vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = u_xlat5;
  let x_889 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_890 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec3<f32> = u_xlat0;
  let x_894 : vec4<f32> = u_xlat5;
  let x_899 : vec3<f32> = ((vec3<f32>(x_892.x, x_892.x, x_892.x) * vec3<f32>(x_894.x, x_894.y, x_894.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_900 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : f32 = u_xlat28;
  u_xlat0.x = (-(x_902) + 1.0f);
  let x_907 : f32 = u_xlat0.x;
  let x_909 : f32 = u_xlat0.x;
  u_xlat28 = (x_907 * x_909);
  let x_911 : f32 = u_xlat28;
  u_xlat28 = max(x_911, 0.0078125f);
  let x_914 : f32 = u_xlat28;
  let x_915 : f32 = u_xlat28;
  u_xlat43 = (x_914 * x_915);
  let x_917 : f32 = u_xlat44;
  u_xlat44 = (x_917 + 1.0f);
  let x_919 : f32 = u_xlat44;
  u_xlat44 = clamp(x_919, 0.0f, 1.0f);
  let x_922 : f32 = u_xlat28;
  u_xlat45 = ((x_922 * 4.0f) + 2.0f);
  let x_931 : vec4<f32> = u_xlat6;
  let x_934 : f32 = x_126.x_GlobalMipBias.x;
  let x_935 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_931.x, x_931.z), x_934);
  u_xlat46 = x_935.x;
  let x_938 : f32 = u_xlat46;
  u_xlat47 = (x_938 + -1.0f);
  let x_941 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_942 : f32 = u_xlat47;
  u_xlat47 = ((x_941 * x_942) + 1.0f);
  let x_945 : f32 = u_xlat14;
  let x_946 : f32 = u_xlat46;
  u_xlat14 = min(x_945, x_946);
  let x_949 : vec4<f32> = u_xlat3;
  let x_950 : vec2<f32> = vec2<f32>(x_949.x, x_949.y);
  let x_952 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_950.x, x_950.y, x_952);
  let x_964 : vec3<f32> = txVec0;
  let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_964.xy, x_964.z);
  u_xlat3.x = x_966;
  let x_970 : f32 = x_602.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_970) + 1.0f);
  let x_974 : f32 = u_xlat3.x;
  let x_976 : f32 = x_602.x_MainLightShadowParams.x;
  let x_978 : f32 = u_xlat17;
  u_xlat3.x = ((x_974 * x_976) + x_978);
  let x_983 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_983);
  let x_987 : f32 = u_xlat3.z;
  u_xlatb31 = (x_987 >= 1.0f);
  let x_989 : bool = u_xlatb31;
  let x_990 : bool = u_xlatb17;
  u_xlatb17 = (x_989 | x_990);
  let x_992 : bool = u_xlatb17;
  if (x_992) {
    x_993 = 1.0f;
  } else {
    let x_998 : f32 = u_xlat3.x;
    x_993 = x_998;
  }
  let x_999 : f32 = x_993;
  u_xlat3.x = x_999;
  let x_1001 : vec3<f32> = vs_TEXCOORD7;
  let x_1003 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1005 : vec3<f32> = (x_1001 + -(x_1003));
  let x_1006 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat6;
  let x_1010 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec3<f32>(x_1008.x, x_1008.y, x_1008.z), vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1013 : f32 = u_xlat17;
  let x_1015 : f32 = x_602.x_MainLightShadowParams.z;
  let x_1018 : f32 = x_602.x_MainLightShadowParams.w;
  u_xlat17 = ((x_1013 * x_1015) + x_1018);
  let x_1020 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1020, 0.0f, 1.0f);
  let x_1024 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_1024) + 1.0f);
  let x_1027 : f32 = u_xlat17;
  let x_1028 : f32 = u_xlat31;
  let x_1031 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1027 * x_1028) + x_1031);
  let x_1034 : f32 = u_xlat47;
  let x_1037 : vec4<f32> = x_126.x_MainLightColor;
  let x_1039 : vec3<f32> = (vec3<f32>(x_1034, x_1034, x_1034) * vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : vec3<f32> = u_xlat2;
  let x_1044 : vec4<f32> = u_xlat1;
  u_xlat17 = dot(-(x_1042), vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : f32 = u_xlat17;
  let x_1048 : f32 = u_xlat17;
  u_xlat17 = (x_1047 + x_1048);
  let x_1050 : vec4<f32> = u_xlat1;
  let x_1052 : f32 = u_xlat17;
  let x_1056 : vec3<f32> = u_xlat2;
  let x_1058 : vec3<f32> = ((vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * -(vec3<f32>(x_1052, x_1052, x_1052))) + -(x_1056));
  let x_1059 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec4<f32> = u_xlat1;
  let x_1063 : vec3<f32> = u_xlat2;
  u_xlat17 = dot(vec3<f32>(x_1061.x, x_1061.y, x_1061.z), x_1063);
  let x_1065 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1065, 0.0f, 1.0f);
  let x_1067 : f32 = u_xlat17;
  u_xlat17 = (-(x_1067) + 1.0f);
  let x_1070 : f32 = u_xlat17;
  let x_1071 : f32 = u_xlat17;
  u_xlat17 = (x_1070 * x_1071);
  let x_1073 : f32 = u_xlat17;
  let x_1074 : f32 = u_xlat17;
  u_xlat17 = (x_1073 * x_1074);
  let x_1077 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1077) * 0.699999988f) + 1.700000048f);
  let x_1084 : f32 = u_xlat0.x;
  let x_1085 : f32 = u_xlat31;
  u_xlat0.x = (x_1084 * x_1085);
  let x_1089 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1089 * 6.0f);
  let x_1101 : vec4<f32> = u_xlat8;
  let x_1104 : f32 = u_xlat0.x;
  let x_1105 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1101.x, x_1101.y, x_1101.z), x_1104);
  u_xlat8 = x_1105;
  let x_1107 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1107 + -1.0f);
  let x_1115 : f32 = x_1113.unity_SpecCube0_HDR.w;
  let x_1117 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1115 * x_1117) + 1.0f);
  let x_1122 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1122, 0.0f);
  let x_1126 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1126);
  let x_1130 : f32 = u_xlat0.x;
  let x_1132 : f32 = x_1113.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1130 * x_1132);
  let x_1136 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1136);
  let x_1140 : f32 = u_xlat0.x;
  let x_1142 : f32 = x_1113.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1140 * x_1142);
  let x_1145 : vec4<f32> = u_xlat8;
  let x_1147 : vec3<f32> = u_xlat0;
  let x_1149 : vec3<f32> = (vec3<f32>(x_1145.x, x_1145.y, x_1145.z) * vec3<f32>(x_1147.x, x_1147.x, x_1147.x));
  let x_1150 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1152 : f32 = u_xlat28;
  let x_1154 : f32 = u_xlat28;
  let x_1158 : vec2<f32> = ((vec2<f32>(x_1152, x_1152) * vec2<f32>(x_1154, x_1154)) + vec2<f32>(-1.0f, 1.0f));
  let x_1159 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1158.x, x_1159.y, x_1158.y);
  let x_1162 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1162);
  let x_1164 : vec4<f32> = u_xlat5;
  let x_1167 : f32 = u_xlat44;
  let x_1169 : vec3<f32> = (-(vec3<f32>(x_1164.x, x_1164.y, x_1164.z)) + vec3<f32>(x_1167, x_1167, x_1167));
  let x_1170 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
  let x_1172 : f32 = u_xlat17;
  let x_1174 : vec4<f32> = u_xlat9;
  let x_1177 : vec4<f32> = u_xlat5;
  let x_1179 : vec3<f32> = ((vec3<f32>(x_1172, x_1172, x_1172) * vec3<f32>(x_1174.x, x_1174.y, x_1174.z)) + vec3<f32>(x_1177.x, x_1177.y, x_1177.z));
  let x_1180 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1182 : f32 = u_xlat28;
  let x_1184 : vec4<f32> = u_xlat9;
  let x_1186 : vec3<f32> = (vec3<f32>(x_1182, x_1182, x_1182) * vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : vec4<f32> = u_xlat8;
  let x_1191 : vec4<f32> = u_xlat9;
  let x_1193 : vec3<f32> = (vec3<f32>(x_1189.x, x_1189.y, x_1189.z) * vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : vec4<f32> = u_xlat4;
  let x_1198 : vec4<f32> = u_xlat7;
  let x_1201 : vec4<f32> = u_xlat8;
  let x_1203 : vec3<f32> = ((vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z)) + vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1207 : f32 = u_xlat3.x;
  let x_1209 : f32 = x_1113.unity_LightData.z;
  u_xlat28 = (x_1207 * x_1209);
  let x_1211 : vec4<f32> = u_xlat1;
  let x_1214 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1211.x, x_1211.y, x_1211.z), vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1217, 0.0f, 1.0f);
  let x_1219 : f32 = u_xlat28;
  let x_1220 : f32 = u_xlat44;
  u_xlat28 = (x_1219 * x_1220);
  let x_1222 : f32 = u_xlat28;
  let x_1224 : vec4<f32> = u_xlat6;
  let x_1226 : vec3<f32> = (vec3<f32>(x_1222, x_1222, x_1222) * vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
  let x_1229 : vec3<f32> = u_xlat2;
  let x_1231 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1233 : vec3<f32> = (x_1229 + vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
  let x_1234 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1236 : vec4<f32> = u_xlat6;
  let x_1238 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1236.x, x_1236.y, x_1236.z), vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : f32 = u_xlat28;
  u_xlat28 = max(x_1241, 1.17549435e-37f);
  let x_1244 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1244);
  let x_1246 : f32 = u_xlat28;
  let x_1248 : vec4<f32> = u_xlat6;
  let x_1250 : vec3<f32> = (vec3<f32>(x_1246, x_1246, x_1246) * vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1253 : vec4<f32> = u_xlat1;
  let x_1255 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1253.x, x_1253.y, x_1253.z), vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1258, 0.0f, 1.0f);
  let x_1261 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1263 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_1261.x, x_1261.y, x_1261.z), vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
  let x_1266 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1266, 0.0f, 1.0f);
  let x_1268 : f32 = u_xlat28;
  let x_1269 : f32 = u_xlat28;
  u_xlat28 = (x_1268 * x_1269);
  let x_1271 : f32 = u_xlat28;
  let x_1273 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1271 * x_1273) + 1.000010014f);
  let x_1277 : f32 = u_xlat44;
  let x_1278 : f32 = u_xlat44;
  u_xlat44 = (x_1277 * x_1278);
  let x_1280 : f32 = u_xlat28;
  let x_1281 : f32 = u_xlat28;
  u_xlat28 = (x_1280 * x_1281);
  let x_1283 : f32 = u_xlat44;
  u_xlat44 = max(x_1283, 0.100000001f);
  let x_1286 : f32 = u_xlat28;
  let x_1287 : f32 = u_xlat44;
  u_xlat28 = (x_1286 * x_1287);
  let x_1289 : f32 = u_xlat45;
  let x_1290 : f32 = u_xlat28;
  u_xlat28 = (x_1289 * x_1290);
  let x_1292 : f32 = u_xlat43;
  let x_1293 : f32 = u_xlat28;
  u_xlat28 = (x_1292 / x_1293);
  let x_1295 : vec4<f32> = u_xlat5;
  let x_1297 : f32 = u_xlat28;
  let x_1300 : vec4<f32> = u_xlat7;
  let x_1302 : vec3<f32> = ((vec3<f32>(x_1295.x, x_1295.y, x_1295.z) * vec3<f32>(x_1297, x_1297, x_1297)) + vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
  let x_1303 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
  let x_1305 : vec4<f32> = u_xlat3;
  let x_1307 : vec4<f32> = u_xlat6;
  let x_1309 : vec3<f32> = (vec3<f32>(x_1305.x, x_1305.y, x_1305.z) * vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
  let x_1310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
  let x_1313 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1315 : f32 = x_1113.unity_LightData.y;
  u_xlat28 = min(x_1313, x_1315);
  let x_1318 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1318));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1330 : u32 = u_xlatu_loop_1;
    let x_1331 : u32 = u_xlatu28;
    if ((x_1330 < x_1331)) {
    } else {
      break;
    }
    let x_1334 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1334 >> 2u);
    let x_1337 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1337 & 3u));
    let x_1340 : u32 = u_xlatu46;
    let x_1343 : vec4<f32> = x_1113.unity_LightIndices[bitcast<i32>(x_1340)];
    let x_1353 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1358 : vec4<u32> = indexable[x_1353];
    u_xlat46 = dot(x_1343, bitcast<vec4<f32>>(x_1358));
    let x_1362 : f32 = u_xlat46;
    u_xlati46 = i32(x_1362);
    let x_1364 : vec3<f32> = vs_TEXCOORD7;
    let x_1376 : i32 = u_xlati46;
    let x_1378 : vec4<f32> = x_1375.x_AdditionalLightsPosition[x_1376];
    let x_1381 : i32 = u_xlati46;
    let x_1383 : vec4<f32> = x_1375.x_AdditionalLightsPosition[x_1381];
    let x_1385 : vec3<f32> = ((-(x_1364) * vec3<f32>(x_1378.w, x_1378.w, x_1378.w)) + vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
    let x_1386 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
    let x_1389 : vec4<f32> = u_xlat8;
    let x_1391 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1389.x, x_1389.y, x_1389.z), vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
    let x_1394 : f32 = u_xlat48;
    u_xlat48 = max(x_1394, 6.10351562e-05f);
    let x_1397 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1397);
    let x_1399 : f32 = u_xlat49;
    let x_1401 : vec4<f32> = u_xlat8;
    let x_1403 : vec3<f32> = (vec3<f32>(x_1399, x_1399, x_1399) * vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
    let x_1404 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
    let x_1407 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1407);
    let x_1409 : f32 = u_xlat48;
    let x_1410 : i32 = u_xlati46;
    let x_1412 : f32 = x_1375.x_AdditionalLightsAttenuation[x_1410].x;
    u_xlat48 = (x_1409 * x_1412);
    let x_1414 : f32 = u_xlat48;
    let x_1416 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1414) * x_1416) + 1.0f);
    let x_1419 : f32 = u_xlat48;
    u_xlat48 = max(x_1419, 0.0f);
    let x_1421 : f32 = u_xlat48;
    let x_1422 : f32 = u_xlat48;
    u_xlat48 = (x_1421 * x_1422);
    let x_1424 : f32 = u_xlat48;
    let x_1425 : f32 = u_xlat50;
    u_xlat48 = (x_1424 * x_1425);
    let x_1427 : i32 = u_xlati46;
    let x_1429 : vec4<f32> = x_1375.x_AdditionalLightsSpotDir[x_1427];
    let x_1431 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1429.x, x_1429.y, x_1429.z), vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
    let x_1434 : f32 = u_xlat50;
    let x_1435 : i32 = u_xlati46;
    let x_1437 : f32 = x_1375.x_AdditionalLightsAttenuation[x_1435].z;
    let x_1439 : i32 = u_xlati46;
    let x_1441 : f32 = x_1375.x_AdditionalLightsAttenuation[x_1439].w;
    u_xlat50 = ((x_1434 * x_1437) + x_1441);
    let x_1443 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1443, 0.0f, 1.0f);
    let x_1445 : f32 = u_xlat50;
    let x_1446 : f32 = u_xlat50;
    u_xlat50 = (x_1445 * x_1446);
    let x_1448 : f32 = u_xlat48;
    let x_1449 : f32 = u_xlat50;
    u_xlat48 = (x_1448 * x_1449);
    let x_1451 : f32 = u_xlat47;
    let x_1453 : i32 = u_xlati46;
    let x_1455 : vec4<f32> = x_1375.x_AdditionalLightsColor[x_1453];
    let x_1457 : vec3<f32> = (vec3<f32>(x_1451, x_1451, x_1451) * vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
    let x_1458 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
    let x_1460 : vec4<f32> = u_xlat1;
    let x_1462 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1460.x, x_1460.y, x_1460.z), vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
    let x_1465 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1465, 0.0f, 1.0f);
    let x_1467 : f32 = u_xlat46;
    let x_1468 : f32 = u_xlat48;
    u_xlat46 = (x_1467 * x_1468);
    let x_1470 : f32 = u_xlat46;
    let x_1472 : vec4<f32> = u_xlat10;
    let x_1474 : vec3<f32> = (vec3<f32>(x_1470, x_1470, x_1470) * vec3<f32>(x_1472.x, x_1472.y, x_1472.z));
    let x_1475 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1475.w);
    let x_1477 : vec4<f32> = u_xlat8;
    let x_1479 : f32 = u_xlat49;
    let x_1482 : vec3<f32> = u_xlat2;
    let x_1483 : vec3<f32> = ((vec3<f32>(x_1477.x, x_1477.y, x_1477.z) * vec3<f32>(x_1479, x_1479, x_1479)) + x_1482);
    let x_1484 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1484.w);
    let x_1486 : vec4<f32> = u_xlat8;
    let x_1488 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1486.x, x_1486.y, x_1486.z), vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
    let x_1491 : f32 = u_xlat46;
    u_xlat46 = max(x_1491, 1.17549435e-37f);
    let x_1493 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1493);
    let x_1495 : f32 = u_xlat46;
    let x_1497 : vec4<f32> = u_xlat8;
    let x_1499 : vec3<f32> = (vec3<f32>(x_1495, x_1495, x_1495) * vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
    let x_1500 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
    let x_1502 : vec4<f32> = u_xlat1;
    let x_1504 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1502.x, x_1502.y, x_1502.z), vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
    let x_1507 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1507, 0.0f, 1.0f);
    let x_1509 : vec4<f32> = u_xlat9;
    let x_1511 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1509.x, x_1509.y, x_1509.z), vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
    let x_1514 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1514, 0.0f, 1.0f);
    let x_1516 : f32 = u_xlat46;
    let x_1517 : f32 = u_xlat46;
    u_xlat46 = (x_1516 * x_1517);
    let x_1519 : f32 = u_xlat46;
    let x_1521 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1519 * x_1521) + 1.000010014f);
    let x_1524 : f32 = u_xlat48;
    let x_1525 : f32 = u_xlat48;
    u_xlat48 = (x_1524 * x_1525);
    let x_1527 : f32 = u_xlat46;
    let x_1528 : f32 = u_xlat46;
    u_xlat46 = (x_1527 * x_1528);
    let x_1530 : f32 = u_xlat48;
    u_xlat48 = max(x_1530, 0.100000001f);
    let x_1532 : f32 = u_xlat46;
    let x_1533 : f32 = u_xlat48;
    u_xlat46 = (x_1532 * x_1533);
    let x_1535 : f32 = u_xlat45;
    let x_1536 : f32 = u_xlat46;
    u_xlat46 = (x_1535 * x_1536);
    let x_1538 : f32 = u_xlat43;
    let x_1539 : f32 = u_xlat46;
    u_xlat46 = (x_1538 / x_1539);
    let x_1541 : vec4<f32> = u_xlat5;
    let x_1543 : f32 = u_xlat46;
    let x_1546 : vec4<f32> = u_xlat7;
    let x_1548 : vec3<f32> = ((vec3<f32>(x_1541.x, x_1541.y, x_1541.z) * vec3<f32>(x_1543, x_1543, x_1543)) + vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
    let x_1549 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
    let x_1551 : vec4<f32> = u_xlat8;
    let x_1553 : vec4<f32> = u_xlat10;
    let x_1556 : vec4<f32> = u_xlat6;
    let x_1558 : vec3<f32> = ((vec3<f32>(x_1551.x, x_1551.y, x_1551.z) * vec3<f32>(x_1553.x, x_1553.y, x_1553.z)) + vec3<f32>(x_1556.x, x_1556.y, x_1556.z));
    let x_1559 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1559.w);

    continuing {
      let x_1561 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1561 + bitcast<u32>(1i));
    }
  }
  let x_1563 : vec4<f32> = u_xlat4;
  let x_1565 : f32 = u_xlat14;
  let x_1568 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_1563.x, x_1563.y, x_1563.z) * vec3<f32>(x_1565, x_1565, x_1565)) + vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1571 : vec4<f32> = u_xlat6;
  let x_1573 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1571.x, x_1571.y, x_1571.z) + x_1573);
  let x_1577 : f32 = u_xlat42;
  let x_1579 : vec3<f32> = u_xlat0;
  let x_1580 : vec3<f32> = (vec3<f32>(x_1577, x_1577, x_1577) * x_1579);
  let x_1581 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
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

