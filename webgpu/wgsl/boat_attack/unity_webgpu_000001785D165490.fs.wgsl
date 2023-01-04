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
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

@group(1) @binding(2) var<uniform> x_601 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_793 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2424 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat63 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb64 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat64 : f32;
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat22 : vec3<f32>;
  var x_548 : f32;
  var x_560 : f32;
  var x_571 : f32;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb46 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat67 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb67 : bool;
  var x_2023 : f32;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati68 : i32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
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
  u_xlat63 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb64 = (4.0f >= x_218);
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
  let x_280 : bool = u_xlatb64;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat64;
  u_xlat64 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat64;
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
  u_xlat42 = dot(x_436, x_437);
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
  u_xlat21 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat22;
  let x_536 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat22;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat22 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat22.x;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_126.unity_MatrixV[0i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.x = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat22.y;
    x_560 = x_564;
  } else {
    let x_567 : f32 = x_126.unity_MatrixV[1i].z;
    x_560 = x_567;
  }
  let x_568 : f32 = x_560;
  u_xlat2.y = x_568;
  let x_570 : bool = u_xlatb1;
  if (x_570) {
    let x_575 : f32 = u_xlat22.z;
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
  u_xlat1.w = 1.0f;
  let x_603 : vec4<f32> = x_601.unity_SHAr;
  let x_604 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_603, x_604);
  let x_608 : vec4<f32> = x_601.unity_SHAg;
  let x_609 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_608, x_609);
  let x_613 : vec4<f32> = x_601.unity_SHAb;
  let x_614 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_613, x_614);
  let x_617 : vec4<f32> = u_xlat1;
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_617.y, x_617.z, x_617.z, x_617.x) * vec4<f32>(x_619.x, x_619.y, x_619.z, x_619.z));
  let x_623 : vec4<f32> = x_601.unity_SHBr;
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_623, x_624);
  let x_628 : vec4<f32> = x_601.unity_SHBg;
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_628, x_629);
  let x_633 : vec4<f32> = x_601.unity_SHBb;
  let x_634 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_633, x_634);
  let x_638 : f32 = u_xlat1.y;
  let x_640 : f32 = u_xlat1.y;
  u_xlat64 = (x_638 * x_640);
  let x_643 : f32 = u_xlat1.x;
  let x_645 : f32 = u_xlat1.x;
  let x_647 : f32 = u_xlat64;
  u_xlat64 = ((x_643 * x_645) + -(x_647));
  let x_652 : vec4<f32> = x_601.unity_SHC;
  let x_654 : f32 = u_xlat64;
  let x_657 : vec4<f32> = u_xlat6;
  let x_659 : vec3<f32> = ((vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(x_654, x_654, x_654)) + vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec4<f32> = u_xlat4;
  let x_666 : vec3<f32> = (vec3<f32>(x_662.x, x_662.y, x_662.z) + vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat3;
  let x_672 : vec3<f32> = max(vec3<f32>(x_669.x, x_669.y, x_669.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_677 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
  let x_682 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_678.x, x_678.y));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat4;
  let x_687 : vec4<f32> = hlslcc_FragCoord;
  let x_689 : vec2<f32> = (vec2<f32>(x_685.x, x_685.y) * vec2<f32>(x_687.x, x_687.y));
  let x_690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
  let x_693 : f32 = u_xlat4.y;
  let x_695 : f32 = x_126.x_ScaleBiasRt.x;
  let x_698 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_693 * x_695) + x_698);
  let x_700 : f32 = u_xlat64;
  u_xlat4.z = (-(x_700) + 1.0f);
  let x_705 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_705) * 0.959999979f) + 0.959999979f);
  let x_711 : f32 = u_xlat42;
  let x_712 : f32 = u_xlat64;
  u_xlat65 = (x_711 + -(x_712));
  let x_715 : f32 = u_xlat64;
  let x_717 : vec4<f32> = u_xlat5;
  let x_719 : vec3<f32> = (vec3<f32>(x_715, x_715, x_715) * vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat5;
  let x_726 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_727 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec3<f32> = u_xlat0;
  let x_731 : vec4<f32> = u_xlat5;
  let x_736 : vec3<f32> = ((vec3<f32>(x_729.x, x_729.x, x_729.x) * vec3<f32>(x_731.x, x_731.y, x_731.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_737 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : f32 = u_xlat42;
  u_xlat0.x = (-(x_739) + 1.0f);
  let x_744 : f32 = u_xlat0.x;
  let x_746 : f32 = u_xlat0.x;
  u_xlat42 = (x_744 * x_746);
  let x_748 : f32 = u_xlat42;
  u_xlat42 = max(x_748, 0.0078125f);
  let x_751 : f32 = u_xlat42;
  let x_752 : f32 = u_xlat42;
  u_xlat64 = (x_751 * x_752);
  let x_754 : f32 = u_xlat65;
  u_xlat65 = (x_754 + 1.0f);
  let x_756 : f32 = u_xlat65;
  u_xlat65 = clamp(x_756, 0.0f, 1.0f);
  let x_759 : f32 = u_xlat42;
  u_xlat66 = ((x_759 * 4.0f) + 2.0f);
  let x_768 : vec4<f32> = u_xlat4;
  let x_771 : f32 = x_126.x_GlobalMipBias.x;
  let x_772 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_768.x, x_768.z), x_771);
  u_xlat4.x = x_772.x;
  let x_777 : f32 = u_xlat4.x;
  u_xlat25 = (x_777 + -1.0f);
  let x_780 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_781 : f32 = u_xlat25;
  u_xlat25 = ((x_780 * x_781) + 1.0f);
  let x_784 : f32 = u_xlat21;
  let x_786 : f32 = u_xlat4.x;
  u_xlat21 = min(x_784, x_786);
  let x_795 : f32 = x_793.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_795);
  let x_797 : bool = u_xlatb4;
  if (x_797) {
    let x_801 : f32 = x_793.x_MainLightShadowParams.y;
    u_xlatb4 = (x_801 == 1.0f);
    let x_803 : bool = u_xlatb4;
    if (x_803) {
      let x_807 : vec4<f32> = vs_TEXCOORD8;
      let x_810 : vec4<f32> = x_793.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_807.x, x_807.y, x_807.x, x_807.y) + x_810);
      let x_813 : vec4<f32> = u_xlat7;
      let x_814 : vec2<f32> = vec2<f32>(x_813.x, x_813.y);
      let x_816 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_814.x, x_814.y, x_816);
      let x_828 : vec3<f32> = txVec0;
      let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_828.xy, x_828.z);
      u_xlat8.x = x_830;
      let x_833 : vec4<f32> = u_xlat7;
      let x_834 : vec2<f32> = vec2<f32>(x_833.z, x_833.w);
      let x_836 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_834.x, x_834.y, x_836);
      let x_843 : vec3<f32> = txVec1;
      let x_845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_843.xy, x_843.z);
      u_xlat8.y = x_845;
      let x_847 : vec4<f32> = vs_TEXCOORD8;
      let x_850 : vec4<f32> = x_793.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_847.x, x_847.y, x_847.x, x_847.y) + x_850);
      let x_853 : vec4<f32> = u_xlat7;
      let x_854 : vec2<f32> = vec2<f32>(x_853.x, x_853.y);
      let x_856 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_854.x, x_854.y, x_856);
      let x_863 : vec3<f32> = txVec2;
      let x_865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_863.xy, x_863.z);
      u_xlat8.z = x_865;
      let x_868 : vec4<f32> = u_xlat7;
      let x_869 : vec2<f32> = vec2<f32>(x_868.z, x_868.w);
      let x_871 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_869.x, x_869.y, x_871);
      let x_878 : vec3<f32> = txVec3;
      let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_878.xy, x_878.z);
      u_xlat8.w = x_880;
      let x_882 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_882, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_890 : f32 = x_793.x_MainLightShadowParams.y;
      u_xlatb46 = (x_890 == 2.0f);
      let x_892 : bool = u_xlatb46;
      if (x_892) {
        let x_897 : vec4<f32> = vs_TEXCOORD8;
        let x_900 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_897.x, x_897.y) * vec2<f32>(x_900.z, x_900.w)) + vec2<f32>(0.5f, 0.5f));
        let x_904 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_904);
        let x_906 : vec4<f32> = vs_TEXCOORD8;
        let x_909 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_912 : vec2<f32> = u_xlat46;
        let x_914 : vec2<f32> = ((vec2<f32>(x_906.x, x_906.y) * vec2<f32>(x_909.z, x_909.w)) + -(x_912));
        let x_915 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
        let x_917 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_917.x, x_917.x, x_917.y, x_917.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_921 : vec4<f32> = u_xlat8;
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z) * vec4<f32>(x_923.x, x_923.x, x_923.z, x_923.z));
        let x_927 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_927.y, x_927.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_932 : vec4<f32> = u_xlat9;
        let x_935 : vec4<f32> = u_xlat7;
        let x_938 : vec2<f32> = ((vec2<f32>(x_932.x, x_932.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_935.x, x_935.y)));
        let x_939 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_938.x, x_939.y, x_938.y, x_939.w);
        let x_941 : vec4<f32> = u_xlat7;
        let x_944 : vec2<f32> = (-(vec2<f32>(x_941.x, x_941.y)) + vec2<f32>(1.0f, 1.0f));
        let x_945 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
        let x_948 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_948.x, x_948.y), vec2<f32>(0.0f, 0.0f));
        let x_952 : vec2<f32> = u_xlat51;
        let x_954 : vec2<f32> = u_xlat51;
        let x_956 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_952) * x_954) + vec2<f32>(x_956.x, x_956.y));
        let x_959 : vec4<f32> = u_xlat7;
        let x_961 : vec2<f32> = max(vec2<f32>(x_959.x, x_959.y), vec2<f32>(0.0f, 0.0f));
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat7;
        let x_967 : vec4<f32> = u_xlat7;
        let x_970 : vec4<f32> = u_xlat8;
        let x_972 : vec2<f32> = ((-(vec2<f32>(x_964.x, x_964.y)) * vec2<f32>(x_967.x, x_967.y)) + vec2<f32>(x_970.y, x_970.w));
        let x_973 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_975 + vec2<f32>(1.0f, 1.0f));
        let x_977 : vec4<f32> = u_xlat7;
        let x_979 : vec2<f32> = (vec2<f32>(x_977.x, x_977.y) + vec2<f32>(1.0f, 1.0f));
        let x_980 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat8;
        let x_986 : vec2<f32> = (vec2<f32>(x_982.x, x_982.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_987 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_986.x, x_986.y, x_987.z, x_987.w);
        let x_989 : vec4<f32> = u_xlat9;
        let x_991 : vec2<f32> = (vec2<f32>(x_989.x, x_989.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_992 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_991.x, x_991.y, x_992.z, x_992.w);
        let x_994 : vec2<f32> = u_xlat51;
        let x_995 : vec2<f32> = (x_994 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_996 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat7;
        let x_1000 : vec2<f32> = (vec2<f32>(x_998.x, x_998.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1001 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1003 : vec4<f32> = u_xlat8;
        let x_1005 : vec2<f32> = (vec2<f32>(x_1003.y, x_1003.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1006 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1005.x, x_1005.y, x_1006.z, x_1006.w);
        let x_1009 : f32 = u_xlat9.x;
        u_xlat10.z = x_1009;
        let x_1012 : f32 = u_xlat7.x;
        u_xlat10.w = x_1012;
        let x_1015 : f32 = u_xlat12.x;
        u_xlat11.z = x_1015;
        let x_1018 : f32 = u_xlat49.x;
        u_xlat11.w = x_1018;
        let x_1020 : vec4<f32> = u_xlat10;
        let x_1022 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1020.z, x_1020.w, x_1020.x, x_1020.z) + vec4<f32>(x_1022.z, x_1022.w, x_1022.x, x_1022.z));
        let x_1026 : f32 = u_xlat10.y;
        u_xlat9.z = x_1026;
        let x_1029 : f32 = u_xlat7.y;
        u_xlat9.w = x_1029;
        let x_1032 : f32 = u_xlat11.y;
        u_xlat12.z = x_1032;
        let x_1035 : f32 = u_xlat49.y;
        u_xlat12.w = x_1035;
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1039 : vec4<f32> = u_xlat12;
        let x_1041 : vec3<f32> = (vec3<f32>(x_1037.z, x_1037.y, x_1037.w) + vec3<f32>(x_1039.z, x_1039.y, x_1039.w));
        let x_1042 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat11;
        let x_1046 : vec4<f32> = u_xlat8;
        let x_1048 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.z, x_1044.w) / vec3<f32>(x_1046.z, x_1046.w, x_1046.y));
        let x_1049 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat9;
        let x_1057 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1058 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat12;
        let x_1062 : vec4<f32> = u_xlat7;
        let x_1064 : vec3<f32> = (vec3<f32>(x_1060.z, x_1060.y, x_1060.w) / vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
        let x_1065 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1069 : vec3<f32> = (vec3<f32>(x_1067.x, x_1067.y, x_1067.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1070 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat9;
        let x_1075 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1077 : vec3<f32> = (vec3<f32>(x_1072.y, x_1072.x, x_1072.z) * vec3<f32>(x_1075.x, x_1075.x, x_1075.x));
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1080 : vec4<f32> = u_xlat10;
        let x_1083 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1085 : vec3<f32> = (vec3<f32>(x_1080.x, x_1080.y, x_1080.z) * vec3<f32>(x_1083.y, x_1083.y, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
        let x_1089 : f32 = u_xlat10.x;
        u_xlat9.w = x_1089;
        let x_1091 : vec2<f32> = u_xlat46;
        let x_1094 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y) * vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y)) + vec4<f32>(x_1097.y, x_1097.w, x_1097.x, x_1097.w));
        let x_1100 : vec2<f32> = u_xlat46;
        let x_1102 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1105 : vec4<f32> = u_xlat9;
        let x_1107 : vec2<f32> = ((x_1100 * vec2<f32>(x_1102.x, x_1102.y)) + vec2<f32>(x_1105.z, x_1105.w));
        let x_1108 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1111 : f32 = u_xlat9.y;
        u_xlat10.w = x_1111;
        let x_1113 : vec4<f32> = u_xlat10;
        let x_1114 : vec2<f32> = vec2<f32>(x_1113.y, x_1113.z);
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1115.x, x_1114.x, x_1115.z, x_1114.y);
        let x_1117 : vec2<f32> = u_xlat46;
        let x_1120 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1123.y));
        let x_1126 : vec2<f32> = u_xlat46;
        let x_1129 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y) * vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y)) + vec4<f32>(x_1132.w, x_1132.y, x_1132.w, x_1132.z));
        let x_1135 : vec2<f32> = u_xlat46;
        let x_1138 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y) * vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y)) + vec4<f32>(x_1141.x, x_1141.w, x_1141.z, x_1141.w));
        let x_1145 : vec4<f32> = u_xlat7;
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1145.x, x_1145.x, x_1145.x, x_1145.y) * vec4<f32>(x_1147.z, x_1147.w, x_1147.y, x_1147.z));
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1151.y, x_1151.y, x_1151.z, x_1151.z) * x_1153);
        let x_1156 : f32 = u_xlat7.z;
        let x_1158 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1156 * x_1158);
        let x_1162 : vec4<f32> = u_xlat11;
        let x_1163 : vec2<f32> = vec2<f32>(x_1162.x, x_1162.y);
        let x_1165 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1163.x, x_1163.y, x_1165);
        let x_1173 : vec3<f32> = txVec4;
        let x_1175 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1173.xy, x_1173.z);
        u_xlat67 = x_1175;
        let x_1177 : vec4<f32> = u_xlat11;
        let x_1178 : vec2<f32> = vec2<f32>(x_1177.z, x_1177.w);
        let x_1180 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1178.x, x_1178.y, x_1180);
        let x_1188 : vec3<f32> = txVec5;
        let x_1190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1188.xy, x_1188.z);
        u_xlat68 = x_1190;
        let x_1191 : f32 = u_xlat68;
        let x_1193 : f32 = u_xlat14.y;
        u_xlat68 = (x_1191 * x_1193);
        let x_1196 : f32 = u_xlat14.x;
        let x_1197 : f32 = u_xlat67;
        let x_1199 : f32 = u_xlat68;
        u_xlat67 = ((x_1196 * x_1197) + x_1199);
        let x_1202 : vec4<f32> = u_xlat12;
        let x_1203 : vec2<f32> = vec2<f32>(x_1202.x, x_1202.y);
        let x_1205 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
        let x_1212 : vec3<f32> = txVec6;
        let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1212.xy, x_1212.z);
        u_xlat68 = x_1214;
        let x_1216 : f32 = u_xlat14.z;
        let x_1217 : f32 = u_xlat68;
        let x_1219 : f32 = u_xlat67;
        u_xlat67 = ((x_1216 * x_1217) + x_1219);
        let x_1222 : vec4<f32> = u_xlat10;
        let x_1223 : vec2<f32> = vec2<f32>(x_1222.x, x_1222.y);
        let x_1225 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
        let x_1232 : vec3<f32> = txVec7;
        let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1232.xy, x_1232.z);
        u_xlat68 = x_1234;
        let x_1236 : f32 = u_xlat14.w;
        let x_1237 : f32 = u_xlat68;
        let x_1239 : f32 = u_xlat67;
        u_xlat67 = ((x_1236 * x_1237) + x_1239);
        let x_1242 : vec4<f32> = u_xlat13;
        let x_1243 : vec2<f32> = vec2<f32>(x_1242.x, x_1242.y);
        let x_1245 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1243.x, x_1243.y, x_1245);
        let x_1252 : vec3<f32> = txVec8;
        let x_1254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1252.xy, x_1252.z);
        u_xlat68 = x_1254;
        let x_1256 : f32 = u_xlat15.x;
        let x_1257 : f32 = u_xlat68;
        let x_1259 : f32 = u_xlat67;
        u_xlat67 = ((x_1256 * x_1257) + x_1259);
        let x_1262 : vec4<f32> = u_xlat13;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.z, x_1262.w);
        let x_1265 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec9;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1272.xy, x_1272.z);
        u_xlat68 = x_1274;
        let x_1276 : f32 = u_xlat15.y;
        let x_1277 : f32 = u_xlat68;
        let x_1279 : f32 = u_xlat67;
        u_xlat67 = ((x_1276 * x_1277) + x_1279);
        let x_1282 : vec4<f32> = u_xlat10;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.z, x_1282.w);
        let x_1285 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec10;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1292.xy, x_1292.z);
        u_xlat68 = x_1294;
        let x_1296 : f32 = u_xlat15.z;
        let x_1297 : f32 = u_xlat68;
        let x_1299 : f32 = u_xlat67;
        u_xlat67 = ((x_1296 * x_1297) + x_1299);
        let x_1302 : vec4<f32> = u_xlat9;
        let x_1303 : vec2<f32> = vec2<f32>(x_1302.x, x_1302.y);
        let x_1305 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1303.x, x_1303.y, x_1305);
        let x_1312 : vec3<f32> = txVec11;
        let x_1314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1312.xy, x_1312.z);
        u_xlat68 = x_1314;
        let x_1316 : f32 = u_xlat15.w;
        let x_1317 : f32 = u_xlat68;
        let x_1319 : f32 = u_xlat67;
        u_xlat67 = ((x_1316 * x_1317) + x_1319);
        let x_1322 : vec4<f32> = u_xlat9;
        let x_1323 : vec2<f32> = vec2<f32>(x_1322.z, x_1322.w);
        let x_1325 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1323.x, x_1323.y, x_1325);
        let x_1332 : vec3<f32> = txVec12;
        let x_1334 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1332.xy, x_1332.z);
        u_xlat68 = x_1334;
        let x_1336 : f32 = u_xlat46.x;
        let x_1337 : f32 = u_xlat68;
        let x_1339 : f32 = u_xlat67;
        u_xlat4.x = ((x_1336 * x_1337) + x_1339);
      } else {
        let x_1343 : vec4<f32> = vs_TEXCOORD8;
        let x_1346 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1343.x, x_1343.y) * vec2<f32>(x_1346.z, x_1346.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1350 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1350);
        let x_1352 : vec4<f32> = vs_TEXCOORD8;
        let x_1355 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1358 : vec2<f32> = u_xlat46;
        let x_1360 : vec2<f32> = ((vec2<f32>(x_1352.x, x_1352.y) * vec2<f32>(x_1355.z, x_1355.w)) + -(x_1358));
        let x_1361 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1360.x, x_1360.y, x_1361.z, x_1361.w);
        let x_1363 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1363.x, x_1363.x, x_1363.y, x_1363.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1366 : vec4<f32> = u_xlat8;
        let x_1368 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1366.x, x_1366.x, x_1366.z, x_1366.z) * vec4<f32>(x_1368.x, x_1368.x, x_1368.z, x_1368.z));
        let x_1371 : vec4<f32> = u_xlat9;
        let x_1375 : vec2<f32> = (vec2<f32>(x_1371.y, x_1371.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1376 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1376.x, x_1375.x, x_1376.z, x_1375.y);
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1381 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1378.x, x_1378.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1381.x, x_1381.y)));
        let x_1385 : vec4<f32> = u_xlat7;
        let x_1388 : vec2<f32> = (-(vec2<f32>(x_1385.x, x_1385.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1389 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1388.x, x_1389.y, x_1388.y, x_1389.w);
        let x_1391 : vec4<f32> = u_xlat7;
        let x_1393 : vec2<f32> = min(vec2<f32>(x_1391.x, x_1391.y), vec2<f32>(0.0f, 0.0f));
        let x_1394 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1393.x, x_1393.y, x_1394.z, x_1394.w);
        let x_1396 : vec4<f32> = u_xlat9;
        let x_1399 : vec4<f32> = u_xlat9;
        let x_1402 : vec4<f32> = u_xlat8;
        let x_1404 : vec2<f32> = ((-(vec2<f32>(x_1396.x, x_1396.y)) * vec2<f32>(x_1399.x, x_1399.y)) + vec2<f32>(x_1402.x, x_1402.z));
        let x_1405 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1404.x, x_1405.y, x_1404.y, x_1405.w);
        let x_1407 : vec4<f32> = u_xlat7;
        let x_1409 : vec2<f32> = max(vec2<f32>(x_1407.x, x_1407.y), vec2<f32>(0.0f, 0.0f));
        let x_1410 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1409.x, x_1409.y, x_1410.z, x_1410.w);
        let x_1412 : vec4<f32> = u_xlat9;
        let x_1415 : vec4<f32> = u_xlat9;
        let x_1418 : vec4<f32> = u_xlat8;
        let x_1420 : vec2<f32> = ((-(vec2<f32>(x_1412.x, x_1412.y)) * vec2<f32>(x_1415.x, x_1415.y)) + vec2<f32>(x_1418.y, x_1418.w));
        let x_1421 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1421.x, x_1420.x, x_1421.z, x_1420.y);
        let x_1423 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1423 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1427 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1427 * 0.081632003f);
        let x_1431 : vec2<f32> = u_xlat49;
        let x_1434 : vec2<f32> = (vec2<f32>(x_1431.y, x_1431.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1435 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1434.x, x_1434.y, x_1435.z, x_1435.w);
        let x_1437 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1437.x, x_1437.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1441 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1441 * 0.081632003f);
        let x_1445 : f32 = u_xlat11.y;
        u_xlat9.x = x_1445;
        let x_1447 : vec4<f32> = u_xlat7;
        let x_1454 : vec2<f32> = ((vec2<f32>(x_1447.x, x_1447.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1455 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1455.x, x_1454.x, x_1455.z, x_1454.y);
        let x_1457 : vec4<f32> = u_xlat7;
        let x_1461 : vec2<f32> = ((vec2<f32>(x_1457.x, x_1457.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1462 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1461.x, x_1462.y, x_1461.y, x_1462.w);
        let x_1465 : f32 = u_xlat49.x;
        u_xlat8.y = x_1465;
        let x_1468 : f32 = u_xlat10.y;
        u_xlat8.w = x_1468;
        let x_1470 : vec4<f32> = u_xlat8;
        let x_1471 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1470 + x_1471);
        let x_1473 : vec4<f32> = u_xlat7;
        let x_1476 : vec2<f32> = ((vec2<f32>(x_1473.y, x_1473.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1477 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1477.x, x_1476.x, x_1477.z, x_1476.y);
        let x_1479 : vec4<f32> = u_xlat7;
        let x_1482 : vec2<f32> = ((vec2<f32>(x_1479.y, x_1479.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1483 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1482.x, x_1483.y, x_1482.y, x_1483.w);
        let x_1486 : f32 = u_xlat49.y;
        u_xlat10.y = x_1486;
        let x_1488 : vec4<f32> = u_xlat10;
        let x_1489 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1488 + x_1489);
        let x_1491 : vec4<f32> = u_xlat8;
        let x_1492 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1491 / x_1492);
        let x_1494 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1494 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1500 : vec4<f32> = u_xlat10;
        let x_1501 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1500 / x_1501);
        let x_1503 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1503 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1505 : vec4<f32> = u_xlat8;
        let x_1508 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1505.w, x_1505.x, x_1505.y, x_1505.z) * vec4<f32>(x_1508.x, x_1508.x, x_1508.x, x_1508.x));
        let x_1511 : vec4<f32> = u_xlat10;
        let x_1514 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1511.x, x_1511.w, x_1511.y, x_1511.z) * vec4<f32>(x_1514.y, x_1514.y, x_1514.y, x_1514.y));
        let x_1517 : vec4<f32> = u_xlat8;
        let x_1518 : vec3<f32> = vec3<f32>(x_1517.y, x_1517.z, x_1517.w);
        let x_1519 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1518.x, x_1519.y, x_1518.y, x_1518.z);
        let x_1522 : f32 = u_xlat10.x;
        u_xlat11.y = x_1522;
        let x_1524 : vec2<f32> = u_xlat46;
        let x_1527 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1530 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1524.x, x_1524.y, x_1524.x, x_1524.y) * vec4<f32>(x_1527.x, x_1527.y, x_1527.x, x_1527.y)) + vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1530.y));
        let x_1533 : vec2<f32> = u_xlat46;
        let x_1535 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat11;
        let x_1540 : vec2<f32> = ((x_1533 * vec2<f32>(x_1535.x, x_1535.y)) + vec2<f32>(x_1538.w, x_1538.y));
        let x_1541 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1540.x, x_1540.y, x_1541.z, x_1541.w);
        let x_1544 : f32 = u_xlat11.y;
        u_xlat8.y = x_1544;
        let x_1547 : f32 = u_xlat10.z;
        u_xlat11.y = x_1547;
        let x_1549 : vec2<f32> = u_xlat46;
        let x_1552 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1555 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1549.x, x_1549.y, x_1549.x, x_1549.y) * vec4<f32>(x_1552.x, x_1552.y, x_1552.x, x_1552.y)) + vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1555.y));
        let x_1559 : vec2<f32> = u_xlat46;
        let x_1561 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1564 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1559 * vec2<f32>(x_1561.x, x_1561.y)) + vec2<f32>(x_1564.w, x_1564.y));
        let x_1568 : f32 = u_xlat11.y;
        u_xlat8.z = x_1568;
        let x_1570 : vec2<f32> = u_xlat46;
        let x_1573 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1570.x, x_1570.y, x_1570.x, x_1570.y) * vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.y)) + vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.z));
        let x_1580 : f32 = u_xlat10.w;
        u_xlat11.y = x_1580;
        let x_1583 : vec2<f32> = u_xlat46;
        let x_1586 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1583.x, x_1583.y, x_1583.x, x_1583.y) * vec4<f32>(x_1586.x, x_1586.y, x_1586.x, x_1586.y)) + vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1589.y));
        let x_1593 : vec2<f32> = u_xlat46;
        let x_1595 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1598 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1593 * vec2<f32>(x_1595.x, x_1595.y)) + vec2<f32>(x_1598.w, x_1598.y));
        let x_1602 : f32 = u_xlat11.y;
        u_xlat8.w = x_1602;
        let x_1605 : vec2<f32> = u_xlat46;
        let x_1607 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1610 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1605 * vec2<f32>(x_1607.x, x_1607.y)) + vec2<f32>(x_1610.x, x_1610.w));
        let x_1613 : vec4<f32> = u_xlat11;
        let x_1614 : vec3<f32> = vec3<f32>(x_1613.x, x_1613.z, x_1613.w);
        let x_1615 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1614.x, x_1615.y, x_1614.y, x_1614.z);
        let x_1617 : vec2<f32> = u_xlat46;
        let x_1620 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1623 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1617.x, x_1617.y, x_1617.x, x_1617.y) * vec4<f32>(x_1620.x, x_1620.y, x_1620.x, x_1620.y)) + vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1623.y));
        let x_1627 : vec2<f32> = u_xlat46;
        let x_1629 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1632 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1627 * vec2<f32>(x_1629.x, x_1629.y)) + vec2<f32>(x_1632.w, x_1632.y));
        let x_1636 : f32 = u_xlat8.x;
        u_xlat10.x = x_1636;
        let x_1638 : vec2<f32> = u_xlat46;
        let x_1640 : vec4<f32> = x_793.x_MainLightShadowmapSize;
        let x_1643 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_1638 * vec2<f32>(x_1640.x, x_1640.y)) + vec2<f32>(x_1643.x, x_1643.y));
        let x_1647 : vec4<f32> = u_xlat7;
        let x_1649 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1647.x, x_1647.x, x_1647.x, x_1647.x) * x_1649);
        let x_1652 : vec4<f32> = u_xlat7;
        let x_1654 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1652.y, x_1652.y, x_1652.y, x_1652.y) * x_1654);
        let x_1657 : vec4<f32> = u_xlat7;
        let x_1659 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1657.z, x_1657.z, x_1657.z, x_1657.z) * x_1659);
        let x_1661 : vec4<f32> = u_xlat7;
        let x_1663 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1661.w, x_1661.w, x_1661.w, x_1661.w) * x_1663);
        let x_1666 : vec4<f32> = u_xlat12;
        let x_1667 : vec2<f32> = vec2<f32>(x_1666.x, x_1666.y);
        let x_1669 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1667.x, x_1667.y, x_1669);
        let x_1676 : vec3<f32> = txVec13;
        let x_1678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1676.xy, x_1676.z);
        u_xlat68 = x_1678;
        let x_1680 : vec4<f32> = u_xlat12;
        let x_1681 : vec2<f32> = vec2<f32>(x_1680.z, x_1680.w);
        let x_1683 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1691 : vec3<f32> = txVec14;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1691.xy, x_1691.z);
        u_xlat69 = x_1693;
        let x_1694 : f32 = u_xlat69;
        let x_1696 : f32 = u_xlat18.y;
        u_xlat69 = (x_1694 * x_1696);
        let x_1699 : f32 = u_xlat18.x;
        let x_1700 : f32 = u_xlat68;
        let x_1702 : f32 = u_xlat69;
        u_xlat68 = ((x_1699 * x_1700) + x_1702);
        let x_1705 : vec4<f32> = u_xlat13;
        let x_1706 : vec2<f32> = vec2<f32>(x_1705.x, x_1705.y);
        let x_1708 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec15;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1715.xy, x_1715.z);
        u_xlat69 = x_1717;
        let x_1719 : f32 = u_xlat18.z;
        let x_1720 : f32 = u_xlat69;
        let x_1722 : f32 = u_xlat68;
        u_xlat68 = ((x_1719 * x_1720) + x_1722);
        let x_1725 : vec4<f32> = u_xlat15;
        let x_1726 : vec2<f32> = vec2<f32>(x_1725.x, x_1725.y);
        let x_1728 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1726.x, x_1726.y, x_1728);
        let x_1735 : vec3<f32> = txVec16;
        let x_1737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1735.xy, x_1735.z);
        u_xlat69 = x_1737;
        let x_1739 : f32 = u_xlat18.w;
        let x_1740 : f32 = u_xlat69;
        let x_1742 : f32 = u_xlat68;
        u_xlat68 = ((x_1739 * x_1740) + x_1742);
        let x_1745 : vec4<f32> = u_xlat14;
        let x_1746 : vec2<f32> = vec2<f32>(x_1745.x, x_1745.y);
        let x_1748 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1746.x, x_1746.y, x_1748);
        let x_1755 : vec3<f32> = txVec17;
        let x_1757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1755.xy, x_1755.z);
        u_xlat69 = x_1757;
        let x_1759 : f32 = u_xlat19.x;
        let x_1760 : f32 = u_xlat69;
        let x_1762 : f32 = u_xlat68;
        u_xlat68 = ((x_1759 * x_1760) + x_1762);
        let x_1765 : vec4<f32> = u_xlat14;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.z, x_1765.w);
        let x_1768 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec18;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1775.xy, x_1775.z);
        u_xlat69 = x_1777;
        let x_1779 : f32 = u_xlat19.y;
        let x_1780 : f32 = u_xlat69;
        let x_1782 : f32 = u_xlat68;
        u_xlat68 = ((x_1779 * x_1780) + x_1782);
        let x_1785 : vec2<f32> = u_xlat55;
        let x_1787 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
        let x_1794 : vec3<f32> = txVec19;
        let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1794.xy, x_1794.z);
        u_xlat69 = x_1796;
        let x_1798 : f32 = u_xlat19.z;
        let x_1799 : f32 = u_xlat69;
        let x_1801 : f32 = u_xlat68;
        u_xlat68 = ((x_1798 * x_1799) + x_1801);
        let x_1804 : vec4<f32> = u_xlat15;
        let x_1805 : vec2<f32> = vec2<f32>(x_1804.z, x_1804.w);
        let x_1807 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1805.x, x_1805.y, x_1807);
        let x_1814 : vec3<f32> = txVec20;
        let x_1816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1814.xy, x_1814.z);
        u_xlat69 = x_1816;
        let x_1818 : f32 = u_xlat19.w;
        let x_1819 : f32 = u_xlat69;
        let x_1821 : f32 = u_xlat68;
        u_xlat68 = ((x_1818 * x_1819) + x_1821);
        let x_1824 : vec4<f32> = u_xlat16;
        let x_1825 : vec2<f32> = vec2<f32>(x_1824.x, x_1824.y);
        let x_1827 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1825.x, x_1825.y, x_1827);
        let x_1834 : vec3<f32> = txVec21;
        let x_1836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1834.xy, x_1834.z);
        u_xlat69 = x_1836;
        let x_1838 : f32 = u_xlat20.x;
        let x_1839 : f32 = u_xlat69;
        let x_1841 : f32 = u_xlat68;
        u_xlat68 = ((x_1838 * x_1839) + x_1841);
        let x_1844 : vec4<f32> = u_xlat16;
        let x_1845 : vec2<f32> = vec2<f32>(x_1844.z, x_1844.w);
        let x_1847 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1845.x, x_1845.y, x_1847);
        let x_1854 : vec3<f32> = txVec22;
        let x_1856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1854.xy, x_1854.z);
        u_xlat69 = x_1856;
        let x_1858 : f32 = u_xlat20.y;
        let x_1859 : f32 = u_xlat69;
        let x_1861 : f32 = u_xlat68;
        u_xlat68 = ((x_1858 * x_1859) + x_1861);
        let x_1864 : vec2<f32> = u_xlat29;
        let x_1866 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1864.x, x_1864.y, x_1866);
        let x_1873 : vec3<f32> = txVec23;
        let x_1875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1873.xy, x_1873.z);
        u_xlat69 = x_1875;
        let x_1877 : f32 = u_xlat20.z;
        let x_1878 : f32 = u_xlat69;
        let x_1880 : f32 = u_xlat68;
        u_xlat68 = ((x_1877 * x_1878) + x_1880);
        let x_1883 : vec2<f32> = u_xlat17;
        let x_1885 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1883.x, x_1883.y, x_1885);
        let x_1892 : vec3<f32> = txVec24;
        let x_1894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1892.xy, x_1892.z);
        u_xlat69 = x_1894;
        let x_1896 : f32 = u_xlat20.w;
        let x_1897 : f32 = u_xlat69;
        let x_1899 : f32 = u_xlat68;
        u_xlat68 = ((x_1896 * x_1897) + x_1899);
        let x_1902 : vec4<f32> = u_xlat11;
        let x_1903 : vec2<f32> = vec2<f32>(x_1902.x, x_1902.y);
        let x_1905 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
        let x_1912 : vec3<f32> = txVec25;
        let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1912.xy, x_1912.z);
        u_xlat69 = x_1914;
        let x_1916 : f32 = u_xlat7.x;
        let x_1917 : f32 = u_xlat69;
        let x_1919 : f32 = u_xlat68;
        u_xlat68 = ((x_1916 * x_1917) + x_1919);
        let x_1922 : vec4<f32> = u_xlat11;
        let x_1923 : vec2<f32> = vec2<f32>(x_1922.z, x_1922.w);
        let x_1925 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1923.x, x_1923.y, x_1925);
        let x_1932 : vec3<f32> = txVec26;
        let x_1934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1932.xy, x_1932.z);
        u_xlat69 = x_1934;
        let x_1936 : f32 = u_xlat7.y;
        let x_1937 : f32 = u_xlat69;
        let x_1939 : f32 = u_xlat68;
        u_xlat68 = ((x_1936 * x_1937) + x_1939);
        let x_1942 : vec2<f32> = u_xlat52;
        let x_1944 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1942.x, x_1942.y, x_1944);
        let x_1951 : vec3<f32> = txVec27;
        let x_1953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1951.xy, x_1951.z);
        u_xlat69 = x_1953;
        let x_1955 : f32 = u_xlat7.z;
        let x_1956 : f32 = u_xlat69;
        let x_1958 : f32 = u_xlat68;
        u_xlat68 = ((x_1955 * x_1956) + x_1958);
        let x_1961 : vec2<f32> = u_xlat46;
        let x_1963 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1961.x, x_1961.y, x_1963);
        let x_1970 : vec3<f32> = txVec28;
        let x_1972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1970.xy, x_1970.z);
        u_xlat46.x = x_1972;
        let x_1975 : f32 = u_xlat7.w;
        let x_1977 : f32 = u_xlat46.x;
        let x_1979 : f32 = u_xlat68;
        u_xlat4.x = ((x_1975 * x_1977) + x_1979);
      }
    }
  } else {
    let x_1984 : vec4<f32> = vs_TEXCOORD8;
    let x_1985 : vec2<f32> = vec2<f32>(x_1984.x, x_1984.y);
    let x_1987 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1985.x, x_1985.y, x_1987);
    let x_1994 : vec3<f32> = txVec29;
    let x_1996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1994.xy, x_1994.z);
    u_xlat4.x = x_1996;
  }
  let x_1999 : f32 = x_793.x_MainLightShadowParams.x;
  u_xlat46.x = (-(x_1999) + 1.0f);
  let x_2004 : f32 = u_xlat4.x;
  let x_2006 : f32 = x_793.x_MainLightShadowParams.x;
  let x_2009 : f32 = u_xlat46.x;
  u_xlat4.x = ((x_2004 * x_2006) + x_2009);
  let x_2013 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_2013);
  let x_2017 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (x_2017 >= 1.0f);
  let x_2019 : bool = u_xlatb67;
  let x_2020 : bool = u_xlatb46;
  u_xlatb46 = (x_2019 | x_2020);
  let x_2022 : bool = u_xlatb46;
  if (x_2022) {
    x_2023 = 1.0f;
  } else {
    let x_2028 : f32 = u_xlat4.x;
    x_2023 = x_2028;
  }
  let x_2029 : f32 = x_2023;
  u_xlat4.x = x_2029;
  let x_2031 : vec3<f32> = vs_TEXCOORD7;
  let x_2033 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2035 : vec3<f32> = (x_2031 + -(x_2033));
  let x_2036 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
  let x_2038 : vec4<f32> = u_xlat7;
  let x_2040 : vec4<f32> = u_xlat7;
  u_xlat46.x = dot(vec3<f32>(x_2038.x, x_2038.y, x_2038.z), vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
  let x_2045 : f32 = u_xlat46.x;
  let x_2047 : f32 = x_793.x_MainLightShadowParams.z;
  let x_2050 : f32 = x_793.x_MainLightShadowParams.w;
  u_xlat46.x = ((x_2045 * x_2047) + x_2050);
  let x_2054 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2054, 0.0f, 1.0f);
  let x_2058 : f32 = u_xlat4.x;
  u_xlat67 = (-(x_2058) + 1.0f);
  let x_2062 : f32 = u_xlat46.x;
  let x_2063 : f32 = u_xlat67;
  let x_2066 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2062 * x_2063) + x_2066);
  let x_2069 : f32 = u_xlat25;
  let x_2073 : vec4<f32> = x_126.x_MainLightColor;
  let x_2075 : vec3<f32> = (vec3<f32>(x_2069, x_2069, x_2069) * vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
  let x_2076 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
  let x_2078 : vec3<f32> = u_xlat2;
  let x_2080 : vec4<f32> = u_xlat1;
  u_xlat46.x = dot(-(x_2078), vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
  let x_2085 : f32 = u_xlat46.x;
  let x_2087 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2085 + x_2087);
  let x_2090 : vec4<f32> = u_xlat1;
  let x_2092 : vec2<f32> = u_xlat46;
  let x_2096 : vec3<f32> = u_xlat2;
  let x_2098 : vec3<f32> = ((vec3<f32>(x_2090.x, x_2090.y, x_2090.z) * -(vec3<f32>(x_2092.x, x_2092.x, x_2092.x))) + -(x_2096));
  let x_2099 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2099.w);
  let x_2101 : vec4<f32> = u_xlat1;
  let x_2103 : vec3<f32> = u_xlat2;
  u_xlat46.x = dot(vec3<f32>(x_2101.x, x_2101.y, x_2101.z), x_2103);
  let x_2107 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2107, 0.0f, 1.0f);
  let x_2111 : f32 = u_xlat46.x;
  u_xlat46.x = (-(x_2111) + 1.0f);
  let x_2116 : f32 = u_xlat46.x;
  let x_2118 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2116 * x_2118);
  let x_2122 : f32 = u_xlat46.x;
  let x_2124 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2122 * x_2124);
  let x_2128 : f32 = u_xlat0.x;
  u_xlat67 = ((-(x_2128) * 0.699999988f) + 1.700000048f);
  let x_2135 : f32 = u_xlat0.x;
  let x_2136 : f32 = u_xlat67;
  u_xlat0.x = (x_2135 * x_2136);
  let x_2140 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2140 * 6.0f);
  let x_2152 : vec4<f32> = u_xlat8;
  let x_2155 : f32 = u_xlat0.x;
  let x_2156 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2152.x, x_2152.y, x_2152.z), x_2155);
  u_xlat8 = x_2156;
  let x_2158 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2158 + -1.0f);
  let x_2162 : f32 = x_601.unity_SpecCube0_HDR.w;
  let x_2164 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2162 * x_2164) + 1.0f);
  let x_2169 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2169, 0.0f);
  let x_2173 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2173);
  let x_2177 : f32 = u_xlat0.x;
  let x_2179 : f32 = x_601.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2177 * x_2179);
  let x_2183 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2183);
  let x_2187 : f32 = u_xlat0.x;
  let x_2189 : f32 = x_601.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2187 * x_2189);
  let x_2192 : vec4<f32> = u_xlat8;
  let x_2194 : vec3<f32> = u_xlat0;
  let x_2196 : vec3<f32> = (vec3<f32>(x_2192.x, x_2192.y, x_2192.z) * vec3<f32>(x_2194.x, x_2194.x, x_2194.x));
  let x_2197 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
  let x_2199 : f32 = u_xlat42;
  let x_2201 : f32 = u_xlat42;
  let x_2205 : vec2<f32> = ((vec2<f32>(x_2199, x_2199) * vec2<f32>(x_2201, x_2201)) + vec2<f32>(-1.0f, 1.0f));
  let x_2206 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2205.x, x_2206.y, x_2205.y);
  let x_2209 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2209);
  let x_2211 : vec4<f32> = u_xlat5;
  let x_2214 : f32 = u_xlat65;
  let x_2216 : vec3<f32> = (-(vec3<f32>(x_2211.x, x_2211.y, x_2211.z)) + vec3<f32>(x_2214, x_2214, x_2214));
  let x_2217 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2216.x, x_2216.y, x_2216.z, x_2217.w);
  let x_2219 : vec2<f32> = u_xlat46;
  let x_2221 : vec4<f32> = u_xlat9;
  let x_2224 : vec4<f32> = u_xlat5;
  let x_2226 : vec3<f32> = ((vec3<f32>(x_2219.x, x_2219.x, x_2219.x) * vec3<f32>(x_2221.x, x_2221.y, x_2221.z)) + vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
  let x_2227 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
  let x_2229 : f32 = u_xlat42;
  let x_2231 : vec4<f32> = u_xlat9;
  let x_2233 : vec3<f32> = (vec3<f32>(x_2229, x_2229, x_2229) * vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
  let x_2234 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
  let x_2236 : vec4<f32> = u_xlat8;
  let x_2238 : vec4<f32> = u_xlat9;
  let x_2240 : vec3<f32> = (vec3<f32>(x_2236.x, x_2236.y, x_2236.z) * vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
  let x_2241 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
  let x_2243 : vec4<f32> = u_xlat3;
  let x_2245 : vec4<f32> = u_xlat6;
  let x_2248 : vec4<f32> = u_xlat8;
  let x_2250 : vec3<f32> = ((vec3<f32>(x_2243.x, x_2243.y, x_2243.z) * vec3<f32>(x_2245.x, x_2245.y, x_2245.z)) + vec3<f32>(x_2248.x, x_2248.y, x_2248.z));
  let x_2251 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
  let x_2254 : f32 = u_xlat4.x;
  let x_2256 : f32 = x_601.unity_LightData.z;
  u_xlat42 = (x_2254 * x_2256);
  let x_2258 : vec4<f32> = u_xlat1;
  let x_2261 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2258.x, x_2258.y, x_2258.z), vec3<f32>(x_2261.x, x_2261.y, x_2261.z));
  let x_2264 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2264, 0.0f, 1.0f);
  let x_2266 : f32 = u_xlat42;
  let x_2267 : f32 = u_xlat65;
  u_xlat42 = (x_2266 * x_2267);
  let x_2269 : f32 = u_xlat42;
  let x_2271 : vec4<f32> = u_xlat7;
  let x_2273 : vec3<f32> = (vec3<f32>(x_2269, x_2269, x_2269) * vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
  let x_2274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2273.x, x_2274.y, x_2273.y, x_2273.z);
  let x_2276 : vec3<f32> = u_xlat2;
  let x_2278 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2280 : vec3<f32> = (x_2276 + vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
  let x_2281 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2281.w);
  let x_2283 : vec4<f32> = u_xlat7;
  let x_2285 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2283.x, x_2283.y, x_2283.z), vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
  let x_2288 : f32 = u_xlat42;
  u_xlat42 = max(x_2288, 1.17549435e-37f);
  let x_2291 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2291);
  let x_2293 : f32 = u_xlat42;
  let x_2295 : vec4<f32> = u_xlat7;
  let x_2297 : vec3<f32> = (vec3<f32>(x_2293, x_2293, x_2293) * vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
  let x_2298 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2297.x, x_2297.y, x_2297.z, x_2298.w);
  let x_2300 : vec4<f32> = u_xlat1;
  let x_2302 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2300.x, x_2300.y, x_2300.z), vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
  let x_2305 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2305, 0.0f, 1.0f);
  let x_2308 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2310 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2308.x, x_2308.y, x_2308.z), vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
  let x_2313 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2313, 0.0f, 1.0f);
  let x_2315 : f32 = u_xlat42;
  let x_2316 : f32 = u_xlat42;
  u_xlat42 = (x_2315 * x_2316);
  let x_2318 : f32 = u_xlat42;
  let x_2320 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2318 * x_2320) + 1.000010014f);
  let x_2324 : f32 = u_xlat65;
  let x_2325 : f32 = u_xlat65;
  u_xlat65 = (x_2324 * x_2325);
  let x_2327 : f32 = u_xlat42;
  let x_2328 : f32 = u_xlat42;
  u_xlat42 = (x_2327 * x_2328);
  let x_2330 : f32 = u_xlat65;
  u_xlat65 = max(x_2330, 0.100000001f);
  let x_2333 : f32 = u_xlat42;
  let x_2334 : f32 = u_xlat65;
  u_xlat42 = (x_2333 * x_2334);
  let x_2336 : f32 = u_xlat66;
  let x_2337 : f32 = u_xlat42;
  u_xlat42 = (x_2336 * x_2337);
  let x_2339 : f32 = u_xlat64;
  let x_2340 : f32 = u_xlat42;
  u_xlat42 = (x_2339 / x_2340);
  let x_2342 : vec4<f32> = u_xlat5;
  let x_2344 : f32 = u_xlat42;
  let x_2347 : vec4<f32> = u_xlat6;
  let x_2349 : vec3<f32> = ((vec3<f32>(x_2342.x, x_2342.y, x_2342.z) * vec3<f32>(x_2344, x_2344, x_2344)) + vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
  let x_2350 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
  let x_2352 : vec4<f32> = u_xlat4;
  let x_2354 : vec4<f32> = u_xlat7;
  let x_2356 : vec3<f32> = (vec3<f32>(x_2352.x, x_2352.z, x_2352.w) * vec3<f32>(x_2354.x, x_2354.y, x_2354.z));
  let x_2357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2356.x, x_2357.y, x_2356.y, x_2356.z);
  let x_2360 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2362 : f32 = x_601.unity_LightData.y;
  u_xlat42 = min(x_2360, x_2362);
  let x_2366 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2366));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2378 : u32 = u_xlatu_loop_1;
    let x_2379 : u32 = u_xlatu42;
    if ((x_2378 < x_2379)) {
    } else {
      break;
    }
    let x_2382 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2382 >> 2u);
    let x_2386 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2386 & 3u));
    let x_2389 : u32 = u_xlatu68;
    let x_2392 : vec4<f32> = x_601.unity_LightIndices[bitcast<i32>(x_2389)];
    let x_2402 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2407 : vec4<u32> = indexable[x_2402];
    u_xlat68 = dot(x_2392, bitcast<vec4<f32>>(x_2407));
    let x_2411 : f32 = u_xlat68;
    u_xlati68 = i32(x_2411);
    let x_2413 : vec3<f32> = vs_TEXCOORD7;
    let x_2425 : i32 = u_xlati68;
    let x_2427 : vec4<f32> = x_2424.x_AdditionalLightsPosition[x_2425];
    let x_2430 : i32 = u_xlati68;
    let x_2432 : vec4<f32> = x_2424.x_AdditionalLightsPosition[x_2430];
    let x_2434 : vec3<f32> = ((-(x_2413) * vec3<f32>(x_2427.w, x_2427.w, x_2427.w)) + vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
    let x_2435 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
    let x_2437 : vec4<f32> = u_xlat8;
    let x_2439 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2437.x, x_2437.y, x_2437.z), vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
    let x_2442 : f32 = u_xlat69;
    u_xlat69 = max(x_2442, 6.10351562e-05f);
    let x_2445 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2445);
    let x_2447 : f32 = u_xlat70;
    let x_2449 : vec4<f32> = u_xlat8;
    let x_2451 : vec3<f32> = (vec3<f32>(x_2447, x_2447, x_2447) * vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
    let x_2452 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
    let x_2455 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2455);
    let x_2457 : f32 = u_xlat69;
    let x_2458 : i32 = u_xlati68;
    let x_2460 : f32 = x_2424.x_AdditionalLightsAttenuation[x_2458].x;
    u_xlat69 = (x_2457 * x_2460);
    let x_2462 : f32 = u_xlat69;
    let x_2464 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2462) * x_2464) + 1.0f);
    let x_2467 : f32 = u_xlat69;
    u_xlat69 = max(x_2467, 0.0f);
    let x_2469 : f32 = u_xlat69;
    let x_2470 : f32 = u_xlat69;
    u_xlat69 = (x_2469 * x_2470);
    let x_2472 : f32 = u_xlat69;
    let x_2473 : f32 = u_xlat71;
    u_xlat69 = (x_2472 * x_2473);
    let x_2475 : i32 = u_xlati68;
    let x_2477 : vec4<f32> = x_2424.x_AdditionalLightsSpotDir[x_2475];
    let x_2479 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2477.x, x_2477.y, x_2477.z), vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
    let x_2482 : f32 = u_xlat71;
    let x_2483 : i32 = u_xlati68;
    let x_2485 : f32 = x_2424.x_AdditionalLightsAttenuation[x_2483].z;
    let x_2487 : i32 = u_xlati68;
    let x_2489 : f32 = x_2424.x_AdditionalLightsAttenuation[x_2487].w;
    u_xlat71 = ((x_2482 * x_2485) + x_2489);
    let x_2491 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2491, 0.0f, 1.0f);
    let x_2493 : f32 = u_xlat71;
    let x_2494 : f32 = u_xlat71;
    u_xlat71 = (x_2493 * x_2494);
    let x_2496 : f32 = u_xlat69;
    let x_2497 : f32 = u_xlat71;
    u_xlat69 = (x_2496 * x_2497);
    let x_2499 : f32 = u_xlat25;
    let x_2501 : i32 = u_xlati68;
    let x_2503 : vec4<f32> = x_2424.x_AdditionalLightsColor[x_2501];
    let x_2505 : vec3<f32> = (vec3<f32>(x_2499, x_2499, x_2499) * vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
    let x_2506 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2505.x, x_2505.y, x_2505.z, x_2506.w);
    let x_2508 : vec4<f32> = u_xlat1;
    let x_2510 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2508.x, x_2508.y, x_2508.z), vec3<f32>(x_2510.x, x_2510.y, x_2510.z));
    let x_2513 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2513, 0.0f, 1.0f);
    let x_2515 : f32 = u_xlat68;
    let x_2516 : f32 = u_xlat69;
    u_xlat68 = (x_2515 * x_2516);
    let x_2518 : f32 = u_xlat68;
    let x_2520 : vec4<f32> = u_xlat10;
    let x_2522 : vec3<f32> = (vec3<f32>(x_2518, x_2518, x_2518) * vec3<f32>(x_2520.x, x_2520.y, x_2520.z));
    let x_2523 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2522.x, x_2522.y, x_2522.z, x_2523.w);
    let x_2525 : vec4<f32> = u_xlat8;
    let x_2527 : f32 = u_xlat70;
    let x_2530 : vec3<f32> = u_xlat2;
    let x_2531 : vec3<f32> = ((vec3<f32>(x_2525.x, x_2525.y, x_2525.z) * vec3<f32>(x_2527, x_2527, x_2527)) + x_2530);
    let x_2532 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2531.x, x_2531.y, x_2531.z, x_2532.w);
    let x_2534 : vec4<f32> = u_xlat8;
    let x_2536 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2534.x, x_2534.y, x_2534.z), vec3<f32>(x_2536.x, x_2536.y, x_2536.z));
    let x_2539 : f32 = u_xlat68;
    u_xlat68 = max(x_2539, 1.17549435e-37f);
    let x_2541 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2541);
    let x_2543 : f32 = u_xlat68;
    let x_2545 : vec4<f32> = u_xlat8;
    let x_2547 : vec3<f32> = (vec3<f32>(x_2543, x_2543, x_2543) * vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
    let x_2548 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);
    let x_2550 : vec4<f32> = u_xlat1;
    let x_2552 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2550.x, x_2550.y, x_2550.z), vec3<f32>(x_2552.x, x_2552.y, x_2552.z));
    let x_2555 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2555, 0.0f, 1.0f);
    let x_2557 : vec4<f32> = u_xlat9;
    let x_2559 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2557.x, x_2557.y, x_2557.z), vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
    let x_2562 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2562, 0.0f, 1.0f);
    let x_2564 : f32 = u_xlat68;
    let x_2565 : f32 = u_xlat68;
    u_xlat68 = (x_2564 * x_2565);
    let x_2567 : f32 = u_xlat68;
    let x_2569 : f32 = u_xlat0.x;
    u_xlat68 = ((x_2567 * x_2569) + 1.000010014f);
    let x_2572 : f32 = u_xlat69;
    let x_2573 : f32 = u_xlat69;
    u_xlat69 = (x_2572 * x_2573);
    let x_2575 : f32 = u_xlat68;
    let x_2576 : f32 = u_xlat68;
    u_xlat68 = (x_2575 * x_2576);
    let x_2578 : f32 = u_xlat69;
    u_xlat69 = max(x_2578, 0.100000001f);
    let x_2580 : f32 = u_xlat68;
    let x_2581 : f32 = u_xlat69;
    u_xlat68 = (x_2580 * x_2581);
    let x_2583 : f32 = u_xlat66;
    let x_2584 : f32 = u_xlat68;
    u_xlat68 = (x_2583 * x_2584);
    let x_2586 : f32 = u_xlat64;
    let x_2587 : f32 = u_xlat68;
    u_xlat68 = (x_2586 / x_2587);
    let x_2589 : vec4<f32> = u_xlat5;
    let x_2591 : f32 = u_xlat68;
    let x_2594 : vec4<f32> = u_xlat6;
    let x_2596 : vec3<f32> = ((vec3<f32>(x_2589.x, x_2589.y, x_2589.z) * vec3<f32>(x_2591, x_2591, x_2591)) + vec3<f32>(x_2594.x, x_2594.y, x_2594.z));
    let x_2597 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2596.x, x_2596.y, x_2596.z, x_2597.w);
    let x_2599 : vec4<f32> = u_xlat8;
    let x_2601 : vec4<f32> = u_xlat10;
    let x_2604 : vec4<f32> = u_xlat7;
    let x_2606 : vec3<f32> = ((vec3<f32>(x_2599.x, x_2599.y, x_2599.z) * vec3<f32>(x_2601.x, x_2601.y, x_2601.z)) + vec3<f32>(x_2604.x, x_2604.y, x_2604.z));
    let x_2607 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2607.w);

    continuing {
      let x_2609 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2609 + bitcast<u32>(1i));
    }
  }
  let x_2611 : vec4<f32> = u_xlat3;
  let x_2613 : f32 = u_xlat21;
  let x_2616 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_2611.x, x_2611.y, x_2611.z) * vec3<f32>(x_2613, x_2613, x_2613)) + vec3<f32>(x_2616.x, x_2616.z, x_2616.w));
  let x_2619 : vec4<f32> = u_xlat7;
  let x_2621 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2619.x, x_2619.y, x_2619.z) + x_2621);
  let x_2625 : f32 = u_xlat63;
  let x_2627 : vec3<f32> = u_xlat0;
  let x_2628 : vec3<f32> = (vec3<f32>(x_2625, x_2625, x_2625) * x_2627);
  let x_2629 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2629.w);
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

