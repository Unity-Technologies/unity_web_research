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

@group(1) @binding(1) var<uniform> x_2649 : AdditionalLights;

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
  var u_xlatb3 : vec4<bool>;
  var u_xlat65 : f32;
  var u_xlatu65 : u32;
  var u_xlati65 : i32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat27 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat70 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec3<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb24 : bool;
  var u_xlatb45 : bool;
  var x_2249 : f32;
  var u_xlat24 : f32;
  var u_xlat45 : f32;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati64 : i32;
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
  u_xlat65 = dot(x_708, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_713 : f32 = u_xlat65;
  u_xlat65 = (-(x_713) + 4.0f);
  let x_718 : f32 = u_xlat65;
  u_xlatu65 = u32(x_718);
  let x_722 : u32 = u_xlatu65;
  u_xlati65 = (bitcast<i32>(x_722) << bitcast<u32>(2i));
  let x_725 : vec3<f32> = vs_TEXCOORD7;
  let x_727 : i32 = u_xlati65;
  let x_730 : i32 = u_xlati65;
  let x_734 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_727 + 1i) / 4i)][((x_730 + 1i) % 4i)];
  let x_736 : vec3<f32> = (vec3<f32>(x_725.y, x_725.y, x_725.y) * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : i32 = u_xlati65;
  let x_741 : i32 = u_xlati65;
  let x_744 : vec4<f32> = x_602.x_MainLightWorldToShadow[(x_739 / 4i)][(x_741 % 4i)];
  let x_746 : vec3<f32> = vs_TEXCOORD7;
  let x_749 : vec4<f32> = u_xlat3;
  let x_751 : vec3<f32> = ((vec3<f32>(x_744.x, x_744.y, x_744.z) * vec3<f32>(x_746.x, x_746.x, x_746.x)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : i32 = u_xlati65;
  let x_757 : i32 = u_xlati65;
  let x_761 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_754 + 2i) / 4i)][((x_757 + 2i) % 4i)];
  let x_763 : vec3<f32> = vs_TEXCOORD7;
  let x_766 : vec4<f32> = u_xlat3;
  let x_768 : vec3<f32> = ((vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(x_763.z, x_763.z, x_763.z)) + vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat3;
  let x_773 : i32 = u_xlati65;
  let x_776 : i32 = u_xlati65;
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
  u_xlat64 = (x_826 * x_828);
  let x_831 : f32 = u_xlat1.x;
  let x_833 : f32 = u_xlat1.x;
  let x_835 : f32 = u_xlat64;
  u_xlat64 = ((x_831 * x_833) + -(x_835));
  let x_840 : vec4<f32> = x_789.unity_SHC;
  let x_842 : f32 = u_xlat64;
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
  u_xlat64 = ((x_880 * x_882) + x_885);
  let x_887 : f32 = u_xlat64;
  u_xlat6.z = (-(x_887) + 1.0f);
  let x_892 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_892) * 0.959999979f) + 0.959999979f);
  let x_897 : f32 = u_xlat64;
  u_xlat65 = (-(x_897) + 1.0f);
  let x_900 : f32 = u_xlat64;
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
  let x_924 : f32 = u_xlat42;
  u_xlat0.x = (-(x_924) + 1.0f);
  let x_929 : f32 = u_xlat0.x;
  let x_931 : f32 = u_xlat0.x;
  u_xlat64 = (x_929 * x_931);
  let x_933 : f32 = u_xlat64;
  u_xlat64 = max(x_933, 0.0078125f);
  let x_937 : f32 = u_xlat64;
  let x_938 : f32 = u_xlat64;
  u_xlat66 = (x_937 * x_938);
  let x_940 : f32 = u_xlat42;
  let x_941 : f32 = u_xlat65;
  u_xlat42 = (x_940 + x_941);
  let x_943 : f32 = u_xlat42;
  u_xlat42 = clamp(x_943, 0.0f, 1.0f);
  let x_945 : f32 = u_xlat64;
  u_xlat65 = ((x_945 * 4.0f) + 2.0f);
  let x_954 : vec4<f32> = u_xlat6;
  let x_957 : f32 = x_126.x_GlobalMipBias.x;
  let x_958 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_954.x, x_954.z), x_957);
  u_xlat67 = x_958.x;
  let x_961 : f32 = u_xlat67;
  u_xlat68 = (x_961 + -1.0f);
  let x_964 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_965 : f32 = u_xlat68;
  u_xlat68 = ((x_964 * x_965) + 1.0f);
  let x_968 : f32 = u_xlat21;
  let x_969 : f32 = u_xlat67;
  u_xlat21 = min(x_968, x_969);
  let x_973 : f32 = x_602.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_973);
  let x_975 : bool = u_xlatb67;
  if (x_975) {
    let x_979 : f32 = x_602.x_MainLightShadowParams.y;
    u_xlatb67 = (x_979 == 1.0f);
    let x_981 : bool = u_xlatb67;
    if (x_981) {
      let x_984 : vec4<f32> = u_xlat3;
      let x_987 : vec4<f32> = x_602.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.y) + x_987);
      let x_990 : vec4<f32> = u_xlat6;
      let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
      let x_993 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_991.x, x_991.y, x_993);
      let x_1005 : vec3<f32> = txVec0;
      let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1005.xy, x_1005.z);
      u_xlat8.x = x_1007;
      let x_1010 : vec4<f32> = u_xlat6;
      let x_1011 : vec2<f32> = vec2<f32>(x_1010.z, x_1010.w);
      let x_1013 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_1011.x, x_1011.y, x_1013);
      let x_1020 : vec3<f32> = txVec1;
      let x_1022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1020.xy, x_1020.z);
      u_xlat8.y = x_1022;
      let x_1024 : vec4<f32> = u_xlat3;
      let x_1027 : vec4<f32> = x_602.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) + x_1027);
      let x_1030 : vec4<f32> = u_xlat6;
      let x_1031 : vec2<f32> = vec2<f32>(x_1030.x, x_1030.y);
      let x_1033 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1031.x, x_1031.y, x_1033);
      let x_1040 : vec3<f32> = txVec2;
      let x_1042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1040.xy, x_1040.z);
      u_xlat8.z = x_1042;
      let x_1045 : vec4<f32> = u_xlat6;
      let x_1046 : vec2<f32> = vec2<f32>(x_1045.z, x_1045.w);
      let x_1048 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
      let x_1055 : vec3<f32> = txVec3;
      let x_1057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1055.xy, x_1055.z);
      u_xlat8.w = x_1057;
      let x_1059 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_1059, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1066 : f32 = x_602.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1066 == 2.0f);
      let x_1068 : bool = u_xlatb6;
      if (x_1068) {
        let x_1071 : vec4<f32> = u_xlat3;
        let x_1074 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(x_1074.z, x_1074.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec4<f32> = u_xlat6;
        let x_1082 : vec2<f32> = floor(vec2<f32>(x_1080.x, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1087 : vec4<f32> = u_xlat3;
        let x_1090 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1087.x, x_1087.y) * vec2<f32>(x_1090.z, x_1090.w)) + -(vec2<f32>(x_1093.x, x_1093.y)));
        let x_1097 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1097.x, x_1097.x, x_1097.y, x_1097.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1101.x, x_1101.x, x_1101.z, x_1101.z) * vec4<f32>(x_1103.x, x_1103.x, x_1103.z, x_1103.z));
        let x_1106 : vec4<f32> = u_xlat9;
        let x_1110 : vec2<f32> = (vec2<f32>(x_1106.y, x_1106.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1111 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1110.x, x_1111.y, x_1110.y, x_1111.w);
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1116 : vec2<f32> = u_xlat48;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1113.x, x_1113.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1116));
        let x_1119 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1122 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1122) + vec2<f32>(1.0f, 1.0f));
        let x_1125 : vec2<f32> = u_xlat48;
        let x_1127 : vec2<f32> = min(x_1125, vec2<f32>(0.0f, 0.0f));
        let x_1128 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        let x_1130 : vec4<f32> = u_xlat10;
        let x_1133 : vec4<f32> = u_xlat10;
        let x_1136 : vec2<f32> = u_xlat51;
        let x_1137 : vec2<f32> = ((-(vec2<f32>(x_1130.x, x_1130.y)) * vec2<f32>(x_1133.x, x_1133.y)) + x_1136);
        let x_1138 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1140, vec2<f32>(0.0f, 0.0f));
        let x_1142 : vec2<f32> = u_xlat48;
        let x_1144 : vec2<f32> = u_xlat48;
        let x_1146 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1142) * x_1144) + vec2<f32>(x_1146.y, x_1146.w));
        let x_1149 : vec4<f32> = u_xlat10;
        let x_1151 : vec2<f32> = (vec2<f32>(x_1149.x, x_1149.y) + vec2<f32>(1.0f, 1.0f));
        let x_1152 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
        let x_1154 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1154 + vec2<f32>(1.0f, 1.0f));
        let x_1156 : vec4<f32> = u_xlat9;
        let x_1160 : vec2<f32> = (vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1161 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec2<f32> = u_xlat51;
        let x_1164 : vec2<f32> = (x_1163 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat10;
        let x_1169 : vec2<f32> = (vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1170 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1170.w);
        let x_1172 : vec2<f32> = u_xlat48;
        let x_1173 : vec2<f32> = (x_1172 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1174 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1176.y, x_1176.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1180 : f32 = u_xlat10.x;
        u_xlat11.z = x_1180;
        let x_1183 : f32 = u_xlat48.x;
        u_xlat11.w = x_1183;
        let x_1186 : f32 = u_xlat12.x;
        u_xlat9.z = x_1186;
        let x_1189 : f32 = u_xlat8.x;
        u_xlat9.w = x_1189;
        let x_1191 : vec4<f32> = u_xlat9;
        let x_1193 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1191.z, x_1191.w, x_1191.x, x_1191.z) + vec4<f32>(x_1193.z, x_1193.w, x_1193.x, x_1193.z));
        let x_1197 : f32 = u_xlat11.y;
        u_xlat10.z = x_1197;
        let x_1200 : f32 = u_xlat48.y;
        u_xlat10.w = x_1200;
        let x_1203 : f32 = u_xlat9.y;
        u_xlat12.z = x_1203;
        let x_1206 : f32 = u_xlat8.z;
        u_xlat12.w = x_1206;
        let x_1208 : vec4<f32> = u_xlat10;
        let x_1210 : vec4<f32> = u_xlat12;
        let x_1212 : vec3<f32> = (vec3<f32>(x_1208.z, x_1208.y, x_1208.w) + vec3<f32>(x_1210.z, x_1210.y, x_1210.w));
        let x_1213 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat9;
        let x_1217 : vec4<f32> = u_xlat13;
        let x_1219 : vec3<f32> = (vec3<f32>(x_1215.x, x_1215.z, x_1215.w) / vec3<f32>(x_1217.z, x_1217.w, x_1217.y));
        let x_1220 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat9;
        let x_1228 : vec3<f32> = (vec3<f32>(x_1222.x, x_1222.y, x_1222.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1231 : vec4<f32> = u_xlat12;
        let x_1233 : vec4<f32> = u_xlat8;
        let x_1235 : vec3<f32> = (vec3<f32>(x_1231.z, x_1231.y, x_1231.w) / vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat10;
        let x_1240 : vec3<f32> = (vec3<f32>(x_1238.x, x_1238.y, x_1238.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1241 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat9;
        let x_1246 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1248 : vec3<f32> = (vec3<f32>(x_1243.y, x_1243.x, x_1243.z) * vec3<f32>(x_1246.x, x_1246.x, x_1246.x));
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
        let x_1251 : vec4<f32> = u_xlat10;
        let x_1254 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1256 : vec3<f32> = (vec3<f32>(x_1251.x, x_1251.y, x_1251.z) * vec3<f32>(x_1254.y, x_1254.y, x_1254.y));
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
        let x_1260 : f32 = u_xlat10.x;
        u_xlat9.w = x_1260;
        let x_1262 : vec4<f32> = u_xlat6;
        let x_1265 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y) * vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y)) + vec4<f32>(x_1268.y, x_1268.w, x_1268.x, x_1268.w));
        let x_1271 : vec4<f32> = u_xlat6;
        let x_1274 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1271.x, x_1271.y) * vec2<f32>(x_1274.x, x_1274.y)) + vec2<f32>(x_1277.z, x_1277.w));
        let x_1281 : f32 = u_xlat9.y;
        u_xlat10.w = x_1281;
        let x_1283 : vec4<f32> = u_xlat10;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.y, x_1283.z);
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1285.x, x_1284.x, x_1285.z, x_1284.y);
        let x_1287 : vec4<f32> = u_xlat6;
        let x_1290 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1293 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y) * vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y)) + vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1293.y));
        let x_1296 : vec4<f32> = u_xlat6;
        let x_1299 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y) * vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y)) + vec4<f32>(x_1302.w, x_1302.y, x_1302.w, x_1302.z));
        let x_1305 : vec4<f32> = u_xlat6;
        let x_1308 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y) * vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y)) + vec4<f32>(x_1311.x, x_1311.w, x_1311.z, x_1311.w));
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1317 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.x, x_1315.y) * vec4<f32>(x_1317.z, x_1317.w, x_1317.y, x_1317.z));
        let x_1321 : vec4<f32> = u_xlat8;
        let x_1323 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1321.y, x_1321.y, x_1321.z, x_1321.z) * x_1323);
        let x_1326 : f32 = u_xlat8.z;
        let x_1328 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1326 * x_1328);
        let x_1332 : vec4<f32> = u_xlat11;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1343 : vec3<f32> = txVec4;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1343.xy, x_1343.z);
        u_xlat27 = x_1345;
        let x_1347 : vec4<f32> = u_xlat11;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.z, x_1347.w);
        let x_1350 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1358 : vec3<f32> = txVec5;
        let x_1360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1358.xy, x_1358.z);
        u_xlat70 = x_1360;
        let x_1361 : f32 = u_xlat70;
        let x_1363 : f32 = u_xlat14.y;
        u_xlat70 = (x_1361 * x_1363);
        let x_1366 : f32 = u_xlat14.x;
        let x_1367 : f32 = u_xlat27;
        let x_1369 : f32 = u_xlat70;
        u_xlat27 = ((x_1366 * x_1367) + x_1369);
        let x_1372 : vec2<f32> = u_xlat48;
        let x_1374 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec6;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1381.xy, x_1381.z);
        u_xlat48.x = x_1383;
        let x_1386 : f32 = u_xlat14.z;
        let x_1388 : f32 = u_xlat48.x;
        let x_1390 : f32 = u_xlat27;
        u_xlat27 = ((x_1386 * x_1388) + x_1390);
        let x_1393 : vec4<f32> = u_xlat10;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.x, x_1393.y);
        let x_1396 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec7;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1403.xy, x_1403.z);
        u_xlat48.x = x_1405;
        let x_1408 : f32 = u_xlat14.w;
        let x_1410 : f32 = u_xlat48.x;
        let x_1412 : f32 = u_xlat27;
        u_xlat27 = ((x_1408 * x_1410) + x_1412);
        let x_1415 : vec4<f32> = u_xlat12;
        let x_1416 : vec2<f32> = vec2<f32>(x_1415.x, x_1415.y);
        let x_1418 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec8;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1425.xy, x_1425.z);
        u_xlat48.x = x_1427;
        let x_1430 : f32 = u_xlat15.x;
        let x_1432 : f32 = u_xlat48.x;
        let x_1434 : f32 = u_xlat27;
        u_xlat27 = ((x_1430 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat12;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.z, x_1437.w);
        let x_1440 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec9;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1447.xy, x_1447.z);
        u_xlat48.x = x_1449;
        let x_1452 : f32 = u_xlat15.y;
        let x_1454 : f32 = u_xlat48.x;
        let x_1456 : f32 = u_xlat27;
        u_xlat27 = ((x_1452 * x_1454) + x_1456);
        let x_1459 : vec4<f32> = u_xlat10;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.z, x_1459.w);
        let x_1462 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec10;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1469.xy, x_1469.z);
        u_xlat48.x = x_1471;
        let x_1474 : f32 = u_xlat15.z;
        let x_1476 : f32 = u_xlat48.x;
        let x_1478 : f32 = u_xlat27;
        u_xlat27 = ((x_1474 * x_1476) + x_1478);
        let x_1481 : vec4<f32> = u_xlat9;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec11;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1491.xy, x_1491.z);
        u_xlat48.x = x_1493;
        let x_1496 : f32 = u_xlat15.w;
        let x_1498 : f32 = u_xlat48.x;
        let x_1500 : f32 = u_xlat27;
        u_xlat27 = ((x_1496 * x_1498) + x_1500);
        let x_1503 : vec4<f32> = u_xlat9;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.z, x_1503.w);
        let x_1506 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec12;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1513.xy, x_1513.z);
        u_xlat48.x = x_1515;
        let x_1518 : f32 = u_xlat6.x;
        let x_1520 : f32 = u_xlat48.x;
        let x_1522 : f32 = u_xlat27;
        u_xlat67 = ((x_1518 * x_1520) + x_1522);
      } else {
        let x_1525 : vec4<f32> = u_xlat3;
        let x_1528 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1531 : vec2<f32> = ((vec2<f32>(x_1525.x, x_1525.y) * vec2<f32>(x_1528.z, x_1528.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1531.x, x_1531.y, x_1532.z, x_1532.w);
        let x_1534 : vec4<f32> = u_xlat6;
        let x_1536 : vec2<f32> = floor(vec2<f32>(x_1534.x, x_1534.y));
        let x_1537 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1536.x, x_1536.y, x_1537.z, x_1537.w);
        let x_1539 : vec4<f32> = u_xlat3;
        let x_1542 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1539.x, x_1539.y) * vec2<f32>(x_1542.z, x_1542.w)) + -(vec2<f32>(x_1545.x, x_1545.y)));
        let x_1549 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1549.x, x_1549.x, x_1549.y, x_1549.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1552 : vec4<f32> = u_xlat8;
        let x_1554 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1552.x, x_1552.x, x_1552.z, x_1552.z) * vec4<f32>(x_1554.x, x_1554.x, x_1554.z, x_1554.z));
        let x_1557 : vec4<f32> = u_xlat9;
        let x_1561 : vec2<f32> = (vec2<f32>(x_1557.y, x_1557.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1562 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1562.x, x_1561.x, x_1562.z, x_1561.y);
        let x_1564 : vec4<f32> = u_xlat9;
        let x_1567 : vec2<f32> = u_xlat48;
        let x_1569 : vec2<f32> = ((vec2<f32>(x_1564.x, x_1564.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1567));
        let x_1570 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1569.x, x_1570.y, x_1569.y, x_1570.w);
        let x_1572 : vec2<f32> = u_xlat48;
        let x_1574 : vec2<f32> = (-(x_1572) + vec2<f32>(1.0f, 1.0f));
        let x_1575 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1574.x, x_1574.y, x_1575.z, x_1575.w);
        let x_1577 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1577, vec2<f32>(0.0f, 0.0f));
        let x_1579 : vec2<f32> = u_xlat51;
        let x_1581 : vec2<f32> = u_xlat51;
        let x_1583 : vec4<f32> = u_xlat9;
        let x_1585 : vec2<f32> = ((-(x_1579) * x_1581) + vec2<f32>(x_1583.x, x_1583.y));
        let x_1586 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1585.x, x_1585.y, x_1586.z, x_1586.w);
        let x_1588 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1588, vec2<f32>(0.0f, 0.0f));
        let x_1591 : vec2<f32> = u_xlat51;
        let x_1593 : vec2<f32> = u_xlat51;
        let x_1595 : vec4<f32> = u_xlat8;
        let x_1597 : vec2<f32> = ((-(x_1591) * x_1593) + vec2<f32>(x_1595.y, x_1595.w));
        let x_1598 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1597.x, x_1598.y, x_1597.y);
        let x_1600 : vec4<f32> = u_xlat9;
        let x_1603 : vec2<f32> = (vec2<f32>(x_1600.x, x_1600.y) + vec2<f32>(2.0f, 2.0f));
        let x_1604 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1603.x, x_1603.y, x_1604.z, x_1604.w);
        let x_1606 : vec3<f32> = u_xlat29;
        let x_1608 : vec2<f32> = (vec2<f32>(x_1606.x, x_1606.z) + vec2<f32>(2.0f, 2.0f));
        let x_1609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1609.x, x_1608.x, x_1609.z, x_1608.y);
        let x_1612 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1612 * 0.081632003f);
        let x_1616 : vec4<f32> = u_xlat8;
        let x_1619 : vec3<f32> = (vec3<f32>(x_1616.z, x_1616.x, x_1616.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1620 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1620.w);
        let x_1622 : vec4<f32> = u_xlat9;
        let x_1625 : vec2<f32> = (vec2<f32>(x_1622.x, x_1622.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1626 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1625.x, x_1625.y, x_1626.z, x_1626.w);
        let x_1629 : f32 = u_xlat12.y;
        u_xlat11.x = x_1629;
        let x_1631 : vec2<f32> = u_xlat48;
        let x_1638 : vec2<f32> = ((vec2<f32>(x_1631.x, x_1631.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1639 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1639.x, x_1638.x, x_1639.z, x_1638.y);
        let x_1641 : vec2<f32> = u_xlat48;
        let x_1645 : vec2<f32> = ((vec2<f32>(x_1641.x, x_1641.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1646 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1645.x, x_1646.y, x_1645.y, x_1646.w);
        let x_1649 : f32 = u_xlat8.x;
        u_xlat9.y = x_1649;
        let x_1652 : f32 = u_xlat10.y;
        u_xlat9.w = x_1652;
        let x_1654 : vec4<f32> = u_xlat9;
        let x_1655 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1654 + x_1655);
        let x_1657 : vec2<f32> = u_xlat48;
        let x_1660 : vec2<f32> = ((vec2<f32>(x_1657.y, x_1657.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1661 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1661.x, x_1660.x, x_1661.z, x_1660.y);
        let x_1663 : vec2<f32> = u_xlat48;
        let x_1666 : vec2<f32> = ((vec2<f32>(x_1663.y, x_1663.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1667 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1666.x, x_1667.y, x_1666.y, x_1667.w);
        let x_1670 : f32 = u_xlat8.y;
        u_xlat10.y = x_1670;
        let x_1672 : vec4<f32> = u_xlat10;
        let x_1673 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1672 + x_1673);
        let x_1675 : vec4<f32> = u_xlat9;
        let x_1676 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1675 / x_1676);
        let x_1678 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1678 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1684 : vec4<f32> = u_xlat10;
        let x_1685 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1684 / x_1685);
        let x_1687 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1687 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1689 : vec4<f32> = u_xlat9;
        let x_1692 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1689.w, x_1689.x, x_1689.y, x_1689.z) * vec4<f32>(x_1692.x, x_1692.x, x_1692.x, x_1692.x));
        let x_1695 : vec4<f32> = u_xlat10;
        let x_1698 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1695.x, x_1695.w, x_1695.y, x_1695.z) * vec4<f32>(x_1698.y, x_1698.y, x_1698.y, x_1698.y));
        let x_1701 : vec4<f32> = u_xlat9;
        let x_1702 : vec3<f32> = vec3<f32>(x_1701.y, x_1701.z, x_1701.w);
        let x_1703 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1702.x, x_1703.y, x_1702.y, x_1702.z);
        let x_1706 : f32 = u_xlat10.x;
        u_xlat12.y = x_1706;
        let x_1708 : vec4<f32> = u_xlat6;
        let x_1711 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1708.x, x_1708.y, x_1708.x, x_1708.y) * vec4<f32>(x_1711.x, x_1711.y, x_1711.x, x_1711.y)) + vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1714.y));
        let x_1717 : vec4<f32> = u_xlat6;
        let x_1720 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1723 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1717.x, x_1717.y) * vec2<f32>(x_1720.x, x_1720.y)) + vec2<f32>(x_1723.w, x_1723.y));
        let x_1727 : f32 = u_xlat12.y;
        u_xlat9.y = x_1727;
        let x_1730 : f32 = u_xlat10.z;
        u_xlat12.y = x_1730;
        let x_1732 : vec4<f32> = u_xlat6;
        let x_1735 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1738 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1732.x, x_1732.y, x_1732.x, x_1732.y) * vec4<f32>(x_1735.x, x_1735.y, x_1735.x, x_1735.y)) + vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1738.y));
        let x_1741 : vec4<f32> = u_xlat6;
        let x_1744 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1747 : vec4<f32> = u_xlat12;
        let x_1749 : vec2<f32> = ((vec2<f32>(x_1741.x, x_1741.y) * vec2<f32>(x_1744.x, x_1744.y)) + vec2<f32>(x_1747.w, x_1747.y));
        let x_1750 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1749.x, x_1749.y, x_1750.z, x_1750.w);
        let x_1753 : f32 = u_xlat12.y;
        u_xlat9.z = x_1753;
        let x_1756 : vec4<f32> = u_xlat6;
        let x_1759 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1762 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1756.x, x_1756.y, x_1756.x, x_1756.y) * vec4<f32>(x_1759.x, x_1759.y, x_1759.x, x_1759.y)) + vec4<f32>(x_1762.x, x_1762.y, x_1762.x, x_1762.z));
        let x_1766 : f32 = u_xlat10.w;
        u_xlat12.y = x_1766;
        let x_1769 : vec4<f32> = u_xlat6;
        let x_1772 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1775 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1769.x, x_1769.y, x_1769.x, x_1769.y) * vec4<f32>(x_1772.x, x_1772.y, x_1772.x, x_1772.y)) + vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1775.y));
        let x_1779 : vec4<f32> = u_xlat6;
        let x_1782 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1785 : vec4<f32> = u_xlat12;
        let x_1787 : vec2<f32> = ((vec2<f32>(x_1779.x, x_1779.y) * vec2<f32>(x_1782.x, x_1782.y)) + vec2<f32>(x_1785.w, x_1785.y));
        let x_1788 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1787.x, x_1787.y, x_1788.z);
        let x_1791 : f32 = u_xlat12.y;
        u_xlat9.w = x_1791;
        let x_1794 : vec4<f32> = u_xlat6;
        let x_1797 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1800 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1794.x, x_1794.y) * vec2<f32>(x_1797.x, x_1797.y)) + vec2<f32>(x_1800.x, x_1800.w));
        let x_1803 : vec4<f32> = u_xlat12;
        let x_1804 : vec3<f32> = vec3<f32>(x_1803.x, x_1803.z, x_1803.w);
        let x_1805 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1804.x, x_1805.y, x_1804.y, x_1804.z);
        let x_1807 : vec4<f32> = u_xlat6;
        let x_1810 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1813 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1807.x, x_1807.y, x_1807.x, x_1807.y) * vec4<f32>(x_1810.x, x_1810.y, x_1810.x, x_1810.y)) + vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1813.y));
        let x_1817 : vec4<f32> = u_xlat6;
        let x_1820 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1823 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1817.x, x_1817.y) * vec2<f32>(x_1820.x, x_1820.y)) + vec2<f32>(x_1823.w, x_1823.y));
        let x_1827 : f32 = u_xlat9.x;
        u_xlat10.x = x_1827;
        let x_1829 : vec4<f32> = u_xlat6;
        let x_1832 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1835 : vec4<f32> = u_xlat10;
        let x_1837 : vec2<f32> = ((vec2<f32>(x_1829.x, x_1829.y) * vec2<f32>(x_1832.x, x_1832.y)) + vec2<f32>(x_1835.x, x_1835.y));
        let x_1838 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1837.x, x_1837.y, x_1838.z, x_1838.w);
        let x_1841 : vec4<f32> = u_xlat8;
        let x_1843 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1841.x, x_1841.x, x_1841.x, x_1841.x) * x_1843);
        let x_1846 : vec4<f32> = u_xlat8;
        let x_1848 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1846.y, x_1846.y, x_1846.y, x_1846.y) * x_1848);
        let x_1851 : vec4<f32> = u_xlat8;
        let x_1853 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1851.z, x_1851.z, x_1851.z, x_1851.z) * x_1853);
        let x_1855 : vec4<f32> = u_xlat8;
        let x_1857 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1855.w, x_1855.w, x_1855.w, x_1855.w) * x_1857);
        let x_1860 : vec4<f32> = u_xlat13;
        let x_1861 : vec2<f32> = vec2<f32>(x_1860.x, x_1860.y);
        let x_1863 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1861.x, x_1861.y, x_1863);
        let x_1870 : vec3<f32> = txVec13;
        let x_1872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1870.xy, x_1870.z);
        u_xlat70 = x_1872;
        let x_1874 : vec4<f32> = u_xlat13;
        let x_1875 : vec2<f32> = vec2<f32>(x_1874.z, x_1874.w);
        let x_1877 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1875.x, x_1875.y, x_1877);
        let x_1884 : vec3<f32> = txVec14;
        let x_1886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1884.xy, x_1884.z);
        u_xlat9.x = x_1886;
        let x_1889 : f32 = u_xlat9.x;
        let x_1891 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1889 * x_1891);
        let x_1895 : f32 = u_xlat18.x;
        let x_1896 : f32 = u_xlat70;
        let x_1899 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1895 * x_1896) + x_1899);
        let x_1902 : vec2<f32> = u_xlat48;
        let x_1904 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
        let x_1911 : vec3<f32> = txVec15;
        let x_1913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1911.xy, x_1911.z);
        u_xlat48.x = x_1913;
        let x_1916 : f32 = u_xlat18.z;
        let x_1918 : f32 = u_xlat48.x;
        let x_1920 : f32 = u_xlat70;
        u_xlat48.x = ((x_1916 * x_1918) + x_1920);
        let x_1924 : vec4<f32> = u_xlat16;
        let x_1925 : vec2<f32> = vec2<f32>(x_1924.x, x_1924.y);
        let x_1927 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1925.x, x_1925.y, x_1927);
        let x_1935 : vec3<f32> = txVec16;
        let x_1937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1935.xy, x_1935.z);
        u_xlat69 = x_1937;
        let x_1939 : f32 = u_xlat18.w;
        let x_1940 : f32 = u_xlat69;
        let x_1943 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1939 * x_1940) + x_1943);
        let x_1947 : vec4<f32> = u_xlat14;
        let x_1948 : vec2<f32> = vec2<f32>(x_1947.x, x_1947.y);
        let x_1950 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1948.x, x_1948.y, x_1950);
        let x_1957 : vec3<f32> = txVec17;
        let x_1959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1957.xy, x_1957.z);
        u_xlat69 = x_1959;
        let x_1961 : f32 = u_xlat19.x;
        let x_1962 : f32 = u_xlat69;
        let x_1965 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1961 * x_1962) + x_1965);
        let x_1969 : vec4<f32> = u_xlat14;
        let x_1970 : vec2<f32> = vec2<f32>(x_1969.z, x_1969.w);
        let x_1972 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1970.x, x_1970.y, x_1972);
        let x_1979 : vec3<f32> = txVec18;
        let x_1981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1979.xy, x_1979.z);
        u_xlat69 = x_1981;
        let x_1983 : f32 = u_xlat19.y;
        let x_1984 : f32 = u_xlat69;
        let x_1987 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1983 * x_1984) + x_1987);
        let x_1991 : vec4<f32> = u_xlat15;
        let x_1992 : vec2<f32> = vec2<f32>(x_1991.x, x_1991.y);
        let x_1994 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec19;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2001.xy, x_2001.z);
        u_xlat69 = x_2003;
        let x_2005 : f32 = u_xlat19.z;
        let x_2006 : f32 = u_xlat69;
        let x_2009 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2005 * x_2006) + x_2009);
        let x_2013 : vec4<f32> = u_xlat16;
        let x_2014 : vec2<f32> = vec2<f32>(x_2013.z, x_2013.w);
        let x_2016 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2014.x, x_2014.y, x_2016);
        let x_2023 : vec3<f32> = txVec20;
        let x_2025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2023.xy, x_2023.z);
        u_xlat69 = x_2025;
        let x_2027 : f32 = u_xlat19.w;
        let x_2028 : f32 = u_xlat69;
        let x_2031 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2027 * x_2028) + x_2031);
        let x_2035 : vec4<f32> = u_xlat17;
        let x_2036 : vec2<f32> = vec2<f32>(x_2035.x, x_2035.y);
        let x_2038 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
        let x_2045 : vec3<f32> = txVec21;
        let x_2047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2045.xy, x_2045.z);
        u_xlat69 = x_2047;
        let x_2049 : f32 = u_xlat20.x;
        let x_2050 : f32 = u_xlat69;
        let x_2053 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2049 * x_2050) + x_2053);
        let x_2057 : vec4<f32> = u_xlat17;
        let x_2058 : vec2<f32> = vec2<f32>(x_2057.z, x_2057.w);
        let x_2060 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2058.x, x_2058.y, x_2060);
        let x_2067 : vec3<f32> = txVec22;
        let x_2069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2067.xy, x_2067.z);
        u_xlat69 = x_2069;
        let x_2071 : f32 = u_xlat20.y;
        let x_2072 : f32 = u_xlat69;
        let x_2075 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2071 * x_2072) + x_2075);
        let x_2079 : vec3<f32> = u_xlat30;
        let x_2080 : vec2<f32> = vec2<f32>(x_2079.x, x_2079.y);
        let x_2082 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
        let x_2089 : vec3<f32> = txVec23;
        let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2089.xy, x_2089.z);
        u_xlat69 = x_2091;
        let x_2093 : f32 = u_xlat20.z;
        let x_2094 : f32 = u_xlat69;
        let x_2097 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2093 * x_2094) + x_2097);
        let x_2101 : vec2<f32> = u_xlat57;
        let x_2103 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2101.x, x_2101.y, x_2103);
        let x_2110 : vec3<f32> = txVec24;
        let x_2112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2110.xy, x_2110.z);
        u_xlat69 = x_2112;
        let x_2114 : f32 = u_xlat20.w;
        let x_2115 : f32 = u_xlat69;
        let x_2118 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2114 * x_2115) + x_2118);
        let x_2122 : vec4<f32> = u_xlat12;
        let x_2123 : vec2<f32> = vec2<f32>(x_2122.x, x_2122.y);
        let x_2125 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2123.x, x_2123.y, x_2125);
        let x_2132 : vec3<f32> = txVec25;
        let x_2134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2132.xy, x_2132.z);
        u_xlat69 = x_2134;
        let x_2136 : f32 = u_xlat8.x;
        let x_2137 : f32 = u_xlat69;
        let x_2140 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2136 * x_2137) + x_2140);
        let x_2144 : vec4<f32> = u_xlat12;
        let x_2145 : vec2<f32> = vec2<f32>(x_2144.z, x_2144.w);
        let x_2147 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2145.x, x_2145.y, x_2147);
        let x_2154 : vec3<f32> = txVec26;
        let x_2156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2154.xy, x_2154.z);
        u_xlat69 = x_2156;
        let x_2158 : f32 = u_xlat8.y;
        let x_2159 : f32 = u_xlat69;
        let x_2162 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2158 * x_2159) + x_2162);
        let x_2166 : vec2<f32> = u_xlat52;
        let x_2168 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2166.x, x_2166.y, x_2168);
        let x_2175 : vec3<f32> = txVec27;
        let x_2177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2175.xy, x_2175.z);
        u_xlat69 = x_2177;
        let x_2179 : f32 = u_xlat8.z;
        let x_2180 : f32 = u_xlat69;
        let x_2183 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2179 * x_2180) + x_2183);
        let x_2187 : vec4<f32> = u_xlat6;
        let x_2188 : vec2<f32> = vec2<f32>(x_2187.x, x_2187.y);
        let x_2190 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
        let x_2197 : vec3<f32> = txVec28;
        let x_2199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2197.xy, x_2197.z);
        u_xlat6.x = x_2199;
        let x_2202 : f32 = u_xlat8.w;
        let x_2204 : f32 = u_xlat6.x;
        let x_2207 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2202 * x_2204) + x_2207);
      }
    }
  } else {
    let x_2211 : vec4<f32> = u_xlat3;
    let x_2212 : vec2<f32> = vec2<f32>(x_2211.x, x_2211.y);
    let x_2214 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2212.x, x_2212.y, x_2214);
    let x_2221 : vec3<f32> = txVec29;
    let x_2223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2221.xy, x_2221.z);
    u_xlat67 = x_2223;
  }
  let x_2225 : f32 = x_602.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2225) + 1.0f);
  let x_2229 : f32 = u_xlat67;
  let x_2231 : f32 = x_602.x_MainLightShadowParams.x;
  let x_2234 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2229 * x_2231) + x_2234);
  let x_2239 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_2239);
  let x_2243 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2243 >= 1.0f);
  let x_2245 : bool = u_xlatb45;
  let x_2246 : bool = u_xlatb24;
  u_xlatb24 = (x_2245 | x_2246);
  let x_2248 : bool = u_xlatb24;
  if (x_2248) {
    x_2249 = 1.0f;
  } else {
    let x_2254 : f32 = u_xlat3.x;
    x_2249 = x_2254;
  }
  let x_2255 : f32 = x_2249;
  u_xlat3.x = x_2255;
  let x_2257 : vec3<f32> = vs_TEXCOORD7;
  let x_2259 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2261 : vec3<f32> = (x_2257 + -(x_2259));
  let x_2262 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
  let x_2265 : vec4<f32> = u_xlat6;
  let x_2267 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_2265.x, x_2265.y, x_2265.z), vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
  let x_2270 : f32 = u_xlat24;
  let x_2272 : f32 = x_602.x_MainLightShadowParams.z;
  let x_2275 : f32 = x_602.x_MainLightShadowParams.w;
  u_xlat24 = ((x_2270 * x_2272) + x_2275);
  let x_2277 : f32 = u_xlat24;
  u_xlat24 = clamp(x_2277, 0.0f, 1.0f);
  let x_2281 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2281) + 1.0f);
  let x_2284 : f32 = u_xlat24;
  let x_2285 : f32 = u_xlat45;
  let x_2288 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2284 * x_2285) + x_2288);
  let x_2291 : f32 = u_xlat68;
  let x_2294 : vec4<f32> = x_126.x_MainLightColor;
  let x_2296 : vec3<f32> = (vec3<f32>(x_2291, x_2291, x_2291) * vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
  let x_2297 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
  let x_2299 : vec3<f32> = u_xlat2;
  let x_2301 : vec4<f32> = u_xlat1;
  u_xlat24 = dot(-(x_2299), vec3<f32>(x_2301.x, x_2301.y, x_2301.z));
  let x_2304 : f32 = u_xlat24;
  let x_2305 : f32 = u_xlat24;
  u_xlat24 = (x_2304 + x_2305);
  let x_2307 : vec4<f32> = u_xlat1;
  let x_2309 : f32 = u_xlat24;
  let x_2313 : vec3<f32> = u_xlat2;
  let x_2315 : vec3<f32> = ((vec3<f32>(x_2307.x, x_2307.y, x_2307.z) * -(vec3<f32>(x_2309, x_2309, x_2309))) + -(x_2313));
  let x_2316 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
  let x_2318 : vec4<f32> = u_xlat1;
  let x_2320 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_2318.x, x_2318.y, x_2318.z), x_2320);
  let x_2322 : f32 = u_xlat24;
  u_xlat24 = clamp(x_2322, 0.0f, 1.0f);
  let x_2324 : f32 = u_xlat24;
  u_xlat24 = (-(x_2324) + 1.0f);
  let x_2327 : f32 = u_xlat24;
  let x_2328 : f32 = u_xlat24;
  u_xlat24 = (x_2327 * x_2328);
  let x_2330 : f32 = u_xlat24;
  let x_2331 : f32 = u_xlat24;
  u_xlat24 = (x_2330 * x_2331);
  let x_2334 : f32 = u_xlat0.x;
  u_xlat45 = ((-(x_2334) * 0.699999988f) + 1.700000048f);
  let x_2341 : f32 = u_xlat0.x;
  let x_2342 : f32 = u_xlat45;
  u_xlat0.x = (x_2341 * x_2342);
  let x_2346 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2346 * 6.0f);
  let x_2358 : vec4<f32> = u_xlat8;
  let x_2361 : f32 = u_xlat0.x;
  let x_2362 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2358.x, x_2358.y, x_2358.z), x_2361);
  u_xlat8 = x_2362;
  let x_2364 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2364 + -1.0f);
  let x_2368 : f32 = x_789.unity_SpecCube0_HDR.w;
  let x_2370 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2368 * x_2370) + 1.0f);
  let x_2375 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2375, 0.0f);
  let x_2379 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2379);
  let x_2383 : f32 = u_xlat0.x;
  let x_2385 : f32 = x_789.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2383 * x_2385);
  let x_2389 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2389);
  let x_2393 : f32 = u_xlat0.x;
  let x_2395 : f32 = x_789.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2393 * x_2395);
  let x_2398 : vec4<f32> = u_xlat8;
  let x_2400 : vec3<f32> = u_xlat0;
  let x_2402 : vec3<f32> = (vec3<f32>(x_2398.x, x_2398.y, x_2398.z) * vec3<f32>(x_2400.x, x_2400.x, x_2400.x));
  let x_2403 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
  let x_2405 : f32 = u_xlat64;
  let x_2407 : f32 = u_xlat64;
  let x_2411 : vec2<f32> = ((vec2<f32>(x_2405, x_2405) * vec2<f32>(x_2407, x_2407)) + vec2<f32>(-1.0f, 1.0f));
  let x_2412 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2411.x, x_2411.y, x_2412.z, x_2412.w);
  let x_2415 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2415);
  let x_2418 : vec4<f32> = u_xlat5;
  let x_2421 : f32 = u_xlat42;
  u_xlat30 = (-(vec3<f32>(x_2418.x, x_2418.y, x_2418.z)) + vec3<f32>(x_2421, x_2421, x_2421));
  let x_2424 : f32 = u_xlat24;
  let x_2426 : vec3<f32> = u_xlat30;
  let x_2428 : vec4<f32> = u_xlat5;
  u_xlat30 = ((vec3<f32>(x_2424, x_2424, x_2424) * x_2426) + vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
  let x_2431 : vec3<f32> = u_xlat0;
  let x_2433 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2431.x, x_2431.x, x_2431.x) * x_2433);
  let x_2435 : vec4<f32> = u_xlat8;
  let x_2437 : vec3<f32> = u_xlat30;
  let x_2438 : vec3<f32> = (vec3<f32>(x_2435.x, x_2435.y, x_2435.z) * x_2437);
  let x_2439 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2438.x, x_2438.y, x_2438.z, x_2439.w);
  let x_2441 : vec4<f32> = u_xlat4;
  let x_2443 : vec4<f32> = u_xlat7;
  let x_2446 : vec4<f32> = u_xlat8;
  let x_2448 : vec3<f32> = ((vec3<f32>(x_2441.x, x_2441.y, x_2441.z) * vec3<f32>(x_2443.x, x_2443.y, x_2443.z)) + vec3<f32>(x_2446.x, x_2446.y, x_2446.z));
  let x_2449 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
  let x_2452 : f32 = u_xlat3.x;
  let x_2454 : f32 = x_789.unity_LightData.z;
  u_xlat0.x = (x_2452 * x_2454);
  let x_2457 : vec4<f32> = u_xlat1;
  let x_2460 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat42 = dot(vec3<f32>(x_2457.x, x_2457.y, x_2457.z), vec3<f32>(x_2460.x, x_2460.y, x_2460.z));
  let x_2463 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2463, 0.0f, 1.0f);
  let x_2465 : f32 = u_xlat42;
  let x_2467 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2465 * x_2467);
  let x_2470 : vec3<f32> = u_xlat0;
  let x_2472 : vec4<f32> = u_xlat6;
  let x_2474 : vec3<f32> = (vec3<f32>(x_2470.x, x_2470.x, x_2470.x) * vec3<f32>(x_2472.x, x_2472.y, x_2472.z));
  let x_2475 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
  let x_2477 : vec3<f32> = u_xlat2;
  let x_2479 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2481 : vec3<f32> = (x_2477 + vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
  let x_2482 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2481.x, x_2481.y, x_2481.z, x_2482.w);
  let x_2484 : vec4<f32> = u_xlat6;
  let x_2486 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_2484.x, x_2484.y, x_2484.z), vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
  let x_2491 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2491, 1.17549435e-37f);
  let x_2496 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2496);
  let x_2499 : vec3<f32> = u_xlat0;
  let x_2501 : vec4<f32> = u_xlat6;
  let x_2503 : vec3<f32> = (vec3<f32>(x_2499.x, x_2499.x, x_2499.x) * vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
  let x_2504 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
  let x_2506 : vec4<f32> = u_xlat1;
  let x_2508 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_2506.x, x_2506.y, x_2506.z), vec3<f32>(x_2508.x, x_2508.y, x_2508.z));
  let x_2513 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2513, 0.0f, 1.0f);
  let x_2517 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2519 : vec4<f32> = u_xlat6;
  u_xlat0.z = dot(vec3<f32>(x_2517.x, x_2517.y, x_2517.z), vec3<f32>(x_2519.x, x_2519.y, x_2519.z));
  let x_2524 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2524, 0.0f, 1.0f);
  let x_2527 : vec3<f32> = u_xlat0;
  let x_2529 : vec3<f32> = u_xlat0;
  let x_2531 : vec2<f32> = (vec2<f32>(x_2527.x, x_2527.z) * vec2<f32>(x_2529.x, x_2529.z));
  let x_2532 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2531.x, x_2532.y, x_2531.y);
  let x_2535 : f32 = u_xlat0.x;
  let x_2537 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2535 * x_2537) + 1.000010014f);
  let x_2543 : f32 = u_xlat0.x;
  let x_2545 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2543 * x_2545);
  let x_2549 : f32 = u_xlat0.z;
  u_xlat42 = max(x_2549, 0.100000001f);
  let x_2552 : f32 = u_xlat42;
  let x_2554 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2552 * x_2554);
  let x_2557 : f32 = u_xlat65;
  let x_2559 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2557 * x_2559);
  let x_2562 : f32 = u_xlat66;
  let x_2564 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2562 / x_2564);
  let x_2567 : vec4<f32> = u_xlat5;
  let x_2569 : vec3<f32> = u_xlat0;
  let x_2572 : vec4<f32> = u_xlat7;
  let x_2574 : vec3<f32> = ((vec3<f32>(x_2567.x, x_2567.y, x_2567.z) * vec3<f32>(x_2569.x, x_2569.x, x_2569.x)) + vec3<f32>(x_2572.x, x_2572.y, x_2572.z));
  let x_2575 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
  let x_2577 : vec4<f32> = u_xlat3;
  let x_2579 : vec4<f32> = u_xlat6;
  let x_2581 : vec3<f32> = (vec3<f32>(x_2577.x, x_2577.y, x_2577.z) * vec3<f32>(x_2579.x, x_2579.y, x_2579.z));
  let x_2582 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
  let x_2585 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2587 : f32 = x_789.unity_LightData.y;
  u_xlat0.x = min(x_2585, x_2587);
  let x_2592 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2592));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2604 : u32 = u_xlatu_loop_1;
    let x_2605 : u32 = u_xlatu0;
    if ((x_2604 < x_2605)) {
    } else {
      break;
    }
    let x_2608 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2608 >> 2u);
    let x_2611 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2611 & 3u));
    let x_2614 : u32 = u_xlatu64;
    let x_2617 : vec4<f32> = x_789.unity_LightIndices[bitcast<i32>(x_2614)];
    let x_2627 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2632 : vec4<u32> = indexable[x_2627];
    u_xlat64 = dot(x_2617, bitcast<vec4<f32>>(x_2632));
    let x_2636 : f32 = u_xlat64;
    u_xlati64 = i32(x_2636);
    let x_2638 : vec3<f32> = vs_TEXCOORD7;
    let x_2650 : i32 = u_xlati64;
    let x_2652 : vec4<f32> = x_2649.x_AdditionalLightsPosition[x_2650];
    let x_2655 : i32 = u_xlati64;
    let x_2657 : vec4<f32> = x_2649.x_AdditionalLightsPosition[x_2655];
    let x_2659 : vec3<f32> = ((-(x_2638) * vec3<f32>(x_2652.w, x_2652.w, x_2652.w)) + vec3<f32>(x_2657.x, x_2657.y, x_2657.z));
    let x_2660 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2659.x, x_2659.y, x_2659.z, x_2660.w);
    let x_2662 : vec4<f32> = u_xlat8;
    let x_2664 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2662.x, x_2662.y, x_2662.z), vec3<f32>(x_2664.x, x_2664.y, x_2664.z));
    let x_2667 : f32 = u_xlat67;
    u_xlat67 = max(x_2667, 6.10351562e-05f);
    let x_2669 : f32 = u_xlat67;
    u_xlat69 = inverseSqrt(x_2669);
    let x_2671 : f32 = u_xlat69;
    let x_2673 : vec4<f32> = u_xlat8;
    u_xlat30 = (vec3<f32>(x_2671, x_2671, x_2671) * vec3<f32>(x_2673.x, x_2673.y, x_2673.z));
    let x_2676 : f32 = u_xlat67;
    u_xlat70 = (1.0f / x_2676);
    let x_2678 : f32 = u_xlat67;
    let x_2679 : i32 = u_xlati64;
    let x_2681 : f32 = x_2649.x_AdditionalLightsAttenuation[x_2679].x;
    u_xlat67 = (x_2678 * x_2681);
    let x_2683 : f32 = u_xlat67;
    let x_2685 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2683) * x_2685) + 1.0f);
    let x_2688 : f32 = u_xlat67;
    u_xlat67 = max(x_2688, 0.0f);
    let x_2690 : f32 = u_xlat67;
    let x_2691 : f32 = u_xlat67;
    u_xlat67 = (x_2690 * x_2691);
    let x_2693 : f32 = u_xlat67;
    let x_2694 : f32 = u_xlat70;
    u_xlat67 = (x_2693 * x_2694);
    let x_2696 : i32 = u_xlati64;
    let x_2698 : vec4<f32> = x_2649.x_AdditionalLightsSpotDir[x_2696];
    let x_2700 : vec3<f32> = u_xlat30;
    u_xlat70 = dot(vec3<f32>(x_2698.x, x_2698.y, x_2698.z), x_2700);
    let x_2702 : f32 = u_xlat70;
    let x_2703 : i32 = u_xlati64;
    let x_2705 : f32 = x_2649.x_AdditionalLightsAttenuation[x_2703].z;
    let x_2707 : i32 = u_xlati64;
    let x_2709 : f32 = x_2649.x_AdditionalLightsAttenuation[x_2707].w;
    u_xlat70 = ((x_2702 * x_2705) + x_2709);
    let x_2711 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2711, 0.0f, 1.0f);
    let x_2713 : f32 = u_xlat70;
    let x_2714 : f32 = u_xlat70;
    u_xlat70 = (x_2713 * x_2714);
    let x_2716 : f32 = u_xlat67;
    let x_2717 : f32 = u_xlat70;
    u_xlat67 = (x_2716 * x_2717);
    let x_2719 : f32 = u_xlat68;
    let x_2721 : i32 = u_xlati64;
    let x_2723 : vec4<f32> = x_2649.x_AdditionalLightsColor[x_2721];
    let x_2725 : vec3<f32> = (vec3<f32>(x_2719, x_2719, x_2719) * vec3<f32>(x_2723.x, x_2723.y, x_2723.z));
    let x_2726 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2725.x, x_2725.y, x_2725.z, x_2726.w);
    let x_2728 : vec4<f32> = u_xlat1;
    let x_2730 : vec3<f32> = u_xlat30;
    u_xlat64 = dot(vec3<f32>(x_2728.x, x_2728.y, x_2728.z), x_2730);
    let x_2732 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2732, 0.0f, 1.0f);
    let x_2734 : f32 = u_xlat64;
    let x_2735 : f32 = u_xlat67;
    u_xlat64 = (x_2734 * x_2735);
    let x_2737 : f32 = u_xlat64;
    let x_2739 : vec4<f32> = u_xlat10;
    let x_2741 : vec3<f32> = (vec3<f32>(x_2737, x_2737, x_2737) * vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
    let x_2742 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2741.x, x_2741.y, x_2741.z, x_2742.w);
    let x_2744 : vec4<f32> = u_xlat8;
    let x_2746 : f32 = u_xlat69;
    let x_2749 : vec3<f32> = u_xlat2;
    let x_2750 : vec3<f32> = ((vec3<f32>(x_2744.x, x_2744.y, x_2744.z) * vec3<f32>(x_2746, x_2746, x_2746)) + x_2749);
    let x_2751 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
    let x_2753 : vec4<f32> = u_xlat8;
    let x_2755 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2753.x, x_2753.y, x_2753.z), vec3<f32>(x_2755.x, x_2755.y, x_2755.z));
    let x_2758 : f32 = u_xlat64;
    u_xlat64 = max(x_2758, 1.17549435e-37f);
    let x_2760 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_2760);
    let x_2762 : f32 = u_xlat64;
    let x_2764 : vec4<f32> = u_xlat8;
    let x_2766 : vec3<f32> = (vec3<f32>(x_2762, x_2762, x_2762) * vec3<f32>(x_2764.x, x_2764.y, x_2764.z));
    let x_2767 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2766.x, x_2766.y, x_2766.z, x_2767.w);
    let x_2769 : vec4<f32> = u_xlat1;
    let x_2771 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2769.x, x_2769.y, x_2769.z), vec3<f32>(x_2771.x, x_2771.y, x_2771.z));
    let x_2774 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2774, 0.0f, 1.0f);
    let x_2776 : vec3<f32> = u_xlat30;
    let x_2777 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(x_2776, vec3<f32>(x_2777.x, x_2777.y, x_2777.z));
    let x_2780 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2780, 0.0f, 1.0f);
    let x_2782 : f32 = u_xlat64;
    let x_2783 : f32 = u_xlat64;
    u_xlat64 = (x_2782 * x_2783);
    let x_2785 : f32 = u_xlat64;
    let x_2787 : f32 = u_xlat9.x;
    u_xlat64 = ((x_2785 * x_2787) + 1.000010014f);
    let x_2790 : f32 = u_xlat67;
    let x_2791 : f32 = u_xlat67;
    u_xlat67 = (x_2790 * x_2791);
    let x_2793 : f32 = u_xlat64;
    let x_2794 : f32 = u_xlat64;
    u_xlat64 = (x_2793 * x_2794);
    let x_2796 : f32 = u_xlat67;
    u_xlat67 = max(x_2796, 0.100000001f);
    let x_2798 : f32 = u_xlat64;
    let x_2799 : f32 = u_xlat67;
    u_xlat64 = (x_2798 * x_2799);
    let x_2801 : f32 = u_xlat65;
    let x_2802 : f32 = u_xlat64;
    u_xlat64 = (x_2801 * x_2802);
    let x_2804 : f32 = u_xlat66;
    let x_2805 : f32 = u_xlat64;
    u_xlat64 = (x_2804 / x_2805);
    let x_2807 : vec4<f32> = u_xlat5;
    let x_2809 : f32 = u_xlat64;
    let x_2812 : vec4<f32> = u_xlat7;
    let x_2814 : vec3<f32> = ((vec3<f32>(x_2807.x, x_2807.y, x_2807.z) * vec3<f32>(x_2809, x_2809, x_2809)) + vec3<f32>(x_2812.x, x_2812.y, x_2812.z));
    let x_2815 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2814.x, x_2814.y, x_2814.z, x_2815.w);
    let x_2817 : vec4<f32> = u_xlat8;
    let x_2819 : vec4<f32> = u_xlat10;
    let x_2822 : vec4<f32> = u_xlat6;
    let x_2824 : vec3<f32> = ((vec3<f32>(x_2817.x, x_2817.y, x_2817.z) * vec3<f32>(x_2819.x, x_2819.y, x_2819.z)) + vec3<f32>(x_2822.x, x_2822.y, x_2822.z));
    let x_2825 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2824.x, x_2824.y, x_2824.z, x_2825.w);

    continuing {
      let x_2827 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2827 + bitcast<u32>(1i));
    }
  }
  let x_2829 : vec4<f32> = u_xlat4;
  let x_2831 : f32 = u_xlat21;
  let x_2834 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2829.x, x_2829.y, x_2829.z) * vec3<f32>(x_2831, x_2831, x_2831)) + vec3<f32>(x_2834.x, x_2834.y, x_2834.z));
  let x_2837 : vec4<f32> = u_xlat6;
  let x_2839 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2837.x, x_2837.y, x_2837.z) + x_2839);
  let x_2843 : f32 = u_xlat63;
  let x_2845 : vec3<f32> = u_xlat0;
  let x_2846 : vec3<f32> = (vec3<f32>(x_2843, x_2843, x_2843) * x_2845);
  let x_2847 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2847.w);
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

