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

@group(1) @binding(4) var<uniform> x_728 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2099 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2363 : AdditionalLights;

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
  var x_1958 : f32;
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
  u_xlat64 = ((x_628 * x_630) + x_633);
  let x_635 : f32 = u_xlat64;
  u_xlat4.z = (-(x_635) + 1.0f);
  let x_640 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_640) * 0.959999979f) + 0.959999979f);
  let x_646 : f32 = u_xlat42;
  let x_647 : f32 = u_xlat64;
  u_xlat65 = (x_646 + -(x_647));
  let x_650 : f32 = u_xlat64;
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
  let x_674 : f32 = u_xlat42;
  u_xlat0.x = (-(x_674) + 1.0f);
  let x_679 : f32 = u_xlat0.x;
  let x_681 : f32 = u_xlat0.x;
  u_xlat42 = (x_679 * x_681);
  let x_683 : f32 = u_xlat42;
  u_xlat42 = max(x_683, 0.0078125f);
  let x_686 : f32 = u_xlat42;
  let x_687 : f32 = u_xlat42;
  u_xlat64 = (x_686 * x_687);
  let x_689 : f32 = u_xlat65;
  u_xlat65 = (x_689 + 1.0f);
  let x_691 : f32 = u_xlat65;
  u_xlat65 = clamp(x_691, 0.0f, 1.0f);
  let x_694 : f32 = u_xlat42;
  u_xlat66 = ((x_694 * 4.0f) + 2.0f);
  let x_703 : vec4<f32> = u_xlat4;
  let x_706 : f32 = x_126.x_GlobalMipBias.x;
  let x_707 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_703.x, x_703.z), x_706);
  u_xlat4.x = x_707.x;
  let x_712 : f32 = u_xlat4.x;
  u_xlat25 = (x_712 + -1.0f);
  let x_715 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_716 : f32 = u_xlat25;
  u_xlat25 = ((x_715 * x_716) + 1.0f);
  let x_719 : f32 = u_xlat21;
  let x_721 : f32 = u_xlat4.x;
  u_xlat21 = min(x_719, x_721);
  let x_730 : f32 = x_728.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_730);
  let x_732 : bool = u_xlatb4;
  if (x_732) {
    let x_736 : f32 = x_728.x_MainLightShadowParams.y;
    u_xlatb4 = (x_736 == 1.0f);
    let x_738 : bool = u_xlatb4;
    if (x_738) {
      let x_742 : vec4<f32> = vs_TEXCOORD8;
      let x_745 : vec4<f32> = x_728.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y) + x_745);
      let x_748 : vec4<f32> = u_xlat7;
      let x_749 : vec2<f32> = vec2<f32>(x_748.x, x_748.y);
      let x_751 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_749.x, x_749.y, x_751);
      let x_763 : vec3<f32> = txVec0;
      let x_765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_763.xy, x_763.z);
      u_xlat8.x = x_765;
      let x_768 : vec4<f32> = u_xlat7;
      let x_769 : vec2<f32> = vec2<f32>(x_768.z, x_768.w);
      let x_771 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_769.x, x_769.y, x_771);
      let x_778 : vec3<f32> = txVec1;
      let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_778.xy, x_778.z);
      u_xlat8.y = x_780;
      let x_782 : vec4<f32> = vs_TEXCOORD8;
      let x_785 : vec4<f32> = x_728.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y) + x_785);
      let x_788 : vec4<f32> = u_xlat7;
      let x_789 : vec2<f32> = vec2<f32>(x_788.x, x_788.y);
      let x_791 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_789.x, x_789.y, x_791);
      let x_798 : vec3<f32> = txVec2;
      let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_798.xy, x_798.z);
      u_xlat8.z = x_800;
      let x_803 : vec4<f32> = u_xlat7;
      let x_804 : vec2<f32> = vec2<f32>(x_803.z, x_803.w);
      let x_806 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_804.x, x_804.y, x_806);
      let x_813 : vec3<f32> = txVec3;
      let x_815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_813.xy, x_813.z);
      u_xlat8.w = x_815;
      let x_817 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_817, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_825 : f32 = x_728.x_MainLightShadowParams.y;
      u_xlatb46 = (x_825 == 2.0f);
      let x_827 : bool = u_xlatb46;
      if (x_827) {
        let x_832 : vec4<f32> = vs_TEXCOORD8;
        let x_835 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_832.x, x_832.y) * vec2<f32>(x_835.z, x_835.w)) + vec2<f32>(0.5f, 0.5f));
        let x_839 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_839);
        let x_841 : vec4<f32> = vs_TEXCOORD8;
        let x_844 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_847 : vec2<f32> = u_xlat46;
        let x_849 : vec2<f32> = ((vec2<f32>(x_841.x, x_841.y) * vec2<f32>(x_844.z, x_844.w)) + -(x_847));
        let x_850 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_852.x, x_852.x, x_852.y, x_852.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_856 : vec4<f32> = u_xlat8;
        let x_858 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_856.x, x_856.x, x_856.z, x_856.z) * vec4<f32>(x_858.x, x_858.x, x_858.z, x_858.z));
        let x_862 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_862.y, x_862.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_867 : vec4<f32> = u_xlat9;
        let x_870 : vec4<f32> = u_xlat7;
        let x_873 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_870.x, x_870.y)));
        let x_874 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_873.x, x_874.y, x_873.y, x_874.w);
        let x_876 : vec4<f32> = u_xlat7;
        let x_879 : vec2<f32> = (-(vec2<f32>(x_876.x, x_876.y)) + vec2<f32>(1.0f, 1.0f));
        let x_880 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
        let x_883 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_883.x, x_883.y), vec2<f32>(0.0f, 0.0f));
        let x_887 : vec2<f32> = u_xlat51;
        let x_889 : vec2<f32> = u_xlat51;
        let x_891 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_887) * x_889) + vec2<f32>(x_891.x, x_891.y));
        let x_894 : vec4<f32> = u_xlat7;
        let x_896 : vec2<f32> = max(vec2<f32>(x_894.x, x_894.y), vec2<f32>(0.0f, 0.0f));
        let x_897 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
        let x_899 : vec4<f32> = u_xlat7;
        let x_902 : vec4<f32> = u_xlat7;
        let x_905 : vec4<f32> = u_xlat8;
        let x_907 : vec2<f32> = ((-(vec2<f32>(x_899.x, x_899.y)) * vec2<f32>(x_902.x, x_902.y)) + vec2<f32>(x_905.y, x_905.w));
        let x_908 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_910 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_910 + vec2<f32>(1.0f, 1.0f));
        let x_912 : vec4<f32> = u_xlat7;
        let x_914 : vec2<f32> = (vec2<f32>(x_912.x, x_912.y) + vec2<f32>(1.0f, 1.0f));
        let x_915 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
        let x_917 : vec4<f32> = u_xlat8;
        let x_921 : vec2<f32> = (vec2<f32>(x_917.x, x_917.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_922 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat9;
        let x_926 : vec2<f32> = (vec2<f32>(x_924.x, x_924.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_927 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec2<f32> = u_xlat51;
        let x_930 : vec2<f32> = (x_929 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat7;
        let x_935 : vec2<f32> = (vec2<f32>(x_933.x, x_933.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_936 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat8;
        let x_940 : vec2<f32> = (vec2<f32>(x_938.y, x_938.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_941 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_944 : f32 = u_xlat9.x;
        u_xlat10.z = x_944;
        let x_947 : f32 = u_xlat7.x;
        u_xlat10.w = x_947;
        let x_950 : f32 = u_xlat12.x;
        u_xlat11.z = x_950;
        let x_953 : f32 = u_xlat49.x;
        u_xlat11.w = x_953;
        let x_955 : vec4<f32> = u_xlat10;
        let x_957 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_955.z, x_955.w, x_955.x, x_955.z) + vec4<f32>(x_957.z, x_957.w, x_957.x, x_957.z));
        let x_961 : f32 = u_xlat10.y;
        u_xlat9.z = x_961;
        let x_964 : f32 = u_xlat7.y;
        u_xlat9.w = x_964;
        let x_967 : f32 = u_xlat11.y;
        u_xlat12.z = x_967;
        let x_970 : f32 = u_xlat49.y;
        u_xlat12.w = x_970;
        let x_972 : vec4<f32> = u_xlat9;
        let x_974 : vec4<f32> = u_xlat12;
        let x_976 : vec3<f32> = (vec3<f32>(x_972.z, x_972.y, x_972.w) + vec3<f32>(x_974.z, x_974.y, x_974.w));
        let x_977 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
        let x_979 : vec4<f32> = u_xlat11;
        let x_981 : vec4<f32> = u_xlat8;
        let x_983 : vec3<f32> = (vec3<f32>(x_979.x, x_979.z, x_979.w) / vec3<f32>(x_981.z, x_981.w, x_981.y));
        let x_984 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
        let x_986 : vec4<f32> = u_xlat9;
        let x_992 : vec3<f32> = (vec3<f32>(x_986.x, x_986.y, x_986.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_993 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
        let x_995 : vec4<f32> = u_xlat12;
        let x_997 : vec4<f32> = u_xlat7;
        let x_999 : vec3<f32> = (vec3<f32>(x_995.z, x_995.y, x_995.w) / vec3<f32>(x_997.x, x_997.y, x_997.z));
        let x_1000 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
        let x_1002 : vec4<f32> = u_xlat10;
        let x_1004 : vec3<f32> = (vec3<f32>(x_1002.x, x_1002.y, x_1002.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1005 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
        let x_1007 : vec4<f32> = u_xlat9;
        let x_1010 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1012 : vec3<f32> = (vec3<f32>(x_1007.y, x_1007.x, x_1007.z) * vec3<f32>(x_1010.x, x_1010.x, x_1010.x));
        let x_1013 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat10;
        let x_1018 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1020 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * vec3<f32>(x_1018.y, x_1018.y, x_1018.y));
        let x_1021 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
        let x_1024 : f32 = u_xlat10.x;
        u_xlat9.w = x_1024;
        let x_1026 : vec2<f32> = u_xlat46;
        let x_1029 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.y, x_1032.w, x_1032.x, x_1032.w));
        let x_1035 : vec2<f32> = u_xlat46;
        let x_1037 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1040 : vec4<f32> = u_xlat9;
        let x_1042 : vec2<f32> = ((x_1035 * vec2<f32>(x_1037.x, x_1037.y)) + vec2<f32>(x_1040.z, x_1040.w));
        let x_1043 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
        let x_1046 : f32 = u_xlat9.y;
        u_xlat10.w = x_1046;
        let x_1048 : vec4<f32> = u_xlat10;
        let x_1049 : vec2<f32> = vec2<f32>(x_1048.y, x_1048.z);
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1050.x, x_1049.x, x_1050.z, x_1049.y);
        let x_1052 : vec2<f32> = u_xlat46;
        let x_1055 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1058 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y) * vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y)) + vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1058.y));
        let x_1061 : vec2<f32> = u_xlat46;
        let x_1064 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1067 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1061.x, x_1061.y, x_1061.x, x_1061.y) * vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y)) + vec4<f32>(x_1067.w, x_1067.y, x_1067.w, x_1067.z));
        let x_1070 : vec2<f32> = u_xlat46;
        let x_1073 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.y) * vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y)) + vec4<f32>(x_1076.x, x_1076.w, x_1076.z, x_1076.w));
        let x_1080 : vec4<f32> = u_xlat7;
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1080.x, x_1080.x, x_1080.x, x_1080.y) * vec4<f32>(x_1082.z, x_1082.w, x_1082.y, x_1082.z));
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1086.y, x_1086.y, x_1086.z, x_1086.z) * x_1088);
        let x_1091 : f32 = u_xlat7.z;
        let x_1093 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1091 * x_1093);
        let x_1097 : vec4<f32> = u_xlat11;
        let x_1098 : vec2<f32> = vec2<f32>(x_1097.x, x_1097.y);
        let x_1100 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1098.x, x_1098.y, x_1100);
        let x_1108 : vec3<f32> = txVec4;
        let x_1110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1108.xy, x_1108.z);
        u_xlat67 = x_1110;
        let x_1112 : vec4<f32> = u_xlat11;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.z, x_1112.w);
        let x_1115 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1113.x, x_1113.y, x_1115);
        let x_1123 : vec3<f32> = txVec5;
        let x_1125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1123.xy, x_1123.z);
        u_xlat68 = x_1125;
        let x_1126 : f32 = u_xlat68;
        let x_1128 : f32 = u_xlat14.y;
        u_xlat68 = (x_1126 * x_1128);
        let x_1131 : f32 = u_xlat14.x;
        let x_1132 : f32 = u_xlat67;
        let x_1134 : f32 = u_xlat68;
        u_xlat67 = ((x_1131 * x_1132) + x_1134);
        let x_1137 : vec4<f32> = u_xlat12;
        let x_1138 : vec2<f32> = vec2<f32>(x_1137.x, x_1137.y);
        let x_1140 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1138.x, x_1138.y, x_1140);
        let x_1147 : vec3<f32> = txVec6;
        let x_1149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1147.xy, x_1147.z);
        u_xlat68 = x_1149;
        let x_1151 : f32 = u_xlat14.z;
        let x_1152 : f32 = u_xlat68;
        let x_1154 : f32 = u_xlat67;
        u_xlat67 = ((x_1151 * x_1152) + x_1154);
        let x_1157 : vec4<f32> = u_xlat10;
        let x_1158 : vec2<f32> = vec2<f32>(x_1157.x, x_1157.y);
        let x_1160 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1158.x, x_1158.y, x_1160);
        let x_1167 : vec3<f32> = txVec7;
        let x_1169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1167.xy, x_1167.z);
        u_xlat68 = x_1169;
        let x_1171 : f32 = u_xlat14.w;
        let x_1172 : f32 = u_xlat68;
        let x_1174 : f32 = u_xlat67;
        u_xlat67 = ((x_1171 * x_1172) + x_1174);
        let x_1177 : vec4<f32> = u_xlat13;
        let x_1178 : vec2<f32> = vec2<f32>(x_1177.x, x_1177.y);
        let x_1180 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1178.x, x_1178.y, x_1180);
        let x_1187 : vec3<f32> = txVec8;
        let x_1189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1187.xy, x_1187.z);
        u_xlat68 = x_1189;
        let x_1191 : f32 = u_xlat15.x;
        let x_1192 : f32 = u_xlat68;
        let x_1194 : f32 = u_xlat67;
        u_xlat67 = ((x_1191 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat13;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.z, x_1197.w);
        let x_1200 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec9;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1207.xy, x_1207.z);
        u_xlat68 = x_1209;
        let x_1211 : f32 = u_xlat15.y;
        let x_1212 : f32 = u_xlat68;
        let x_1214 : f32 = u_xlat67;
        u_xlat67 = ((x_1211 * x_1212) + x_1214);
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.z, x_1217.w);
        let x_1220 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec10;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1227.xy, x_1227.z);
        u_xlat68 = x_1229;
        let x_1231 : f32 = u_xlat15.z;
        let x_1232 : f32 = u_xlat68;
        let x_1234 : f32 = u_xlat67;
        u_xlat67 = ((x_1231 * x_1232) + x_1234);
        let x_1237 : vec4<f32> = u_xlat9;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.x, x_1237.y);
        let x_1240 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec11;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1247.xy, x_1247.z);
        u_xlat68 = x_1249;
        let x_1251 : f32 = u_xlat15.w;
        let x_1252 : f32 = u_xlat68;
        let x_1254 : f32 = u_xlat67;
        u_xlat67 = ((x_1251 * x_1252) + x_1254);
        let x_1257 : vec4<f32> = u_xlat9;
        let x_1258 : vec2<f32> = vec2<f32>(x_1257.z, x_1257.w);
        let x_1260 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1258.x, x_1258.y, x_1260);
        let x_1267 : vec3<f32> = txVec12;
        let x_1269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1267.xy, x_1267.z);
        u_xlat68 = x_1269;
        let x_1271 : f32 = u_xlat46.x;
        let x_1272 : f32 = u_xlat68;
        let x_1274 : f32 = u_xlat67;
        u_xlat4.x = ((x_1271 * x_1272) + x_1274);
      } else {
        let x_1278 : vec4<f32> = vs_TEXCOORD8;
        let x_1281 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1281.z, x_1281.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1285 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1285);
        let x_1287 : vec4<f32> = vs_TEXCOORD8;
        let x_1290 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1293 : vec2<f32> = u_xlat46;
        let x_1295 : vec2<f32> = ((vec2<f32>(x_1287.x, x_1287.y) * vec2<f32>(x_1290.z, x_1290.w)) + -(x_1293));
        let x_1296 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1295.x, x_1295.y, x_1296.z, x_1296.w);
        let x_1298 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1298.x, x_1298.x, x_1298.y, x_1298.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1303 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1301.x, x_1301.x, x_1301.z, x_1301.z) * vec4<f32>(x_1303.x, x_1303.x, x_1303.z, x_1303.z));
        let x_1306 : vec4<f32> = u_xlat9;
        let x_1310 : vec2<f32> = (vec2<f32>(x_1306.y, x_1306.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1311 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1311.x, x_1310.x, x_1311.z, x_1310.y);
        let x_1313 : vec4<f32> = u_xlat9;
        let x_1316 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1313.x, x_1313.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1316.x, x_1316.y)));
        let x_1320 : vec4<f32> = u_xlat7;
        let x_1323 : vec2<f32> = (-(vec2<f32>(x_1320.x, x_1320.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1324 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1323.x, x_1324.y, x_1323.y, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat7;
        let x_1328 : vec2<f32> = min(vec2<f32>(x_1326.x, x_1326.y), vec2<f32>(0.0f, 0.0f));
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1328.x, x_1328.y, x_1329.z, x_1329.w);
        let x_1331 : vec4<f32> = u_xlat9;
        let x_1334 : vec4<f32> = u_xlat9;
        let x_1337 : vec4<f32> = u_xlat8;
        let x_1339 : vec2<f32> = ((-(vec2<f32>(x_1331.x, x_1331.y)) * vec2<f32>(x_1334.x, x_1334.y)) + vec2<f32>(x_1337.x, x_1337.z));
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1339.x, x_1340.y, x_1339.y, x_1340.w);
        let x_1342 : vec4<f32> = u_xlat7;
        let x_1344 : vec2<f32> = max(vec2<f32>(x_1342.x, x_1342.y), vec2<f32>(0.0f, 0.0f));
        let x_1345 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1347 : vec4<f32> = u_xlat9;
        let x_1350 : vec4<f32> = u_xlat9;
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1355 : vec2<f32> = ((-(vec2<f32>(x_1347.x, x_1347.y)) * vec2<f32>(x_1350.x, x_1350.y)) + vec2<f32>(x_1353.y, x_1353.w));
        let x_1356 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1356.x, x_1355.x, x_1356.z, x_1355.y);
        let x_1358 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1358 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1362 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1362 * 0.081632003f);
        let x_1366 : vec2<f32> = u_xlat49;
        let x_1369 : vec2<f32> = (vec2<f32>(x_1366.y, x_1366.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1370 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
        let x_1372 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1372.x, x_1372.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1376 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1376 * 0.081632003f);
        let x_1380 : f32 = u_xlat11.y;
        u_xlat9.x = x_1380;
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1389 : vec2<f32> = ((vec2<f32>(x_1382.x, x_1382.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1390 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1390.x, x_1389.x, x_1390.z, x_1389.y);
        let x_1392 : vec4<f32> = u_xlat7;
        let x_1396 : vec2<f32> = ((vec2<f32>(x_1392.x, x_1392.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1397 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1396.x, x_1397.y, x_1396.y, x_1397.w);
        let x_1400 : f32 = u_xlat49.x;
        u_xlat8.y = x_1400;
        let x_1403 : f32 = u_xlat10.y;
        u_xlat8.w = x_1403;
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1406 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1405 + x_1406);
        let x_1408 : vec4<f32> = u_xlat7;
        let x_1411 : vec2<f32> = ((vec2<f32>(x_1408.y, x_1408.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1412 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1412.x, x_1411.x, x_1412.z, x_1411.y);
        let x_1414 : vec4<f32> = u_xlat7;
        let x_1417 : vec2<f32> = ((vec2<f32>(x_1414.y, x_1414.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1418 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1417.x, x_1418.y, x_1417.y, x_1418.w);
        let x_1421 : f32 = u_xlat49.y;
        u_xlat10.y = x_1421;
        let x_1423 : vec4<f32> = u_xlat10;
        let x_1424 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1423 + x_1424);
        let x_1426 : vec4<f32> = u_xlat8;
        let x_1427 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1426 / x_1427);
        let x_1429 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1429 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1435 : vec4<f32> = u_xlat10;
        let x_1436 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1435 / x_1436);
        let x_1438 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1438 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1440 : vec4<f32> = u_xlat8;
        let x_1443 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1440.w, x_1440.x, x_1440.y, x_1440.z) * vec4<f32>(x_1443.x, x_1443.x, x_1443.x, x_1443.x));
        let x_1446 : vec4<f32> = u_xlat10;
        let x_1449 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1446.x, x_1446.w, x_1446.y, x_1446.z) * vec4<f32>(x_1449.y, x_1449.y, x_1449.y, x_1449.y));
        let x_1452 : vec4<f32> = u_xlat8;
        let x_1453 : vec3<f32> = vec3<f32>(x_1452.y, x_1452.z, x_1452.w);
        let x_1454 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1453.x, x_1454.y, x_1453.y, x_1453.z);
        let x_1457 : f32 = u_xlat10.x;
        u_xlat11.y = x_1457;
        let x_1459 : vec2<f32> = u_xlat46;
        let x_1462 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1465 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1459.x, x_1459.y, x_1459.x, x_1459.y) * vec4<f32>(x_1462.x, x_1462.y, x_1462.x, x_1462.y)) + vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1465.y));
        let x_1468 : vec2<f32> = u_xlat46;
        let x_1470 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1473 : vec4<f32> = u_xlat11;
        let x_1475 : vec2<f32> = ((x_1468 * vec2<f32>(x_1470.x, x_1470.y)) + vec2<f32>(x_1473.w, x_1473.y));
        let x_1476 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1475.x, x_1475.y, x_1476.z, x_1476.w);
        let x_1479 : f32 = u_xlat11.y;
        u_xlat8.y = x_1479;
        let x_1482 : f32 = u_xlat10.z;
        u_xlat11.y = x_1482;
        let x_1484 : vec2<f32> = u_xlat46;
        let x_1487 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1490 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y) * vec4<f32>(x_1487.x, x_1487.y, x_1487.x, x_1487.y)) + vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1490.y));
        let x_1494 : vec2<f32> = u_xlat46;
        let x_1496 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1499 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1494 * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1499.w, x_1499.y));
        let x_1503 : f32 = u_xlat11.y;
        u_xlat8.z = x_1503;
        let x_1505 : vec2<f32> = u_xlat46;
        let x_1508 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1511 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1505.x, x_1505.y, x_1505.x, x_1505.y) * vec4<f32>(x_1508.x, x_1508.y, x_1508.x, x_1508.y)) + vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.z));
        let x_1515 : f32 = u_xlat10.w;
        u_xlat11.y = x_1515;
        let x_1518 : vec2<f32> = u_xlat46;
        let x_1521 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1518.x, x_1518.y, x_1518.x, x_1518.y) * vec4<f32>(x_1521.x, x_1521.y, x_1521.x, x_1521.y)) + vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1524.y));
        let x_1528 : vec2<f32> = u_xlat46;
        let x_1530 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1533 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1528 * vec2<f32>(x_1530.x, x_1530.y)) + vec2<f32>(x_1533.w, x_1533.y));
        let x_1537 : f32 = u_xlat11.y;
        u_xlat8.w = x_1537;
        let x_1540 : vec2<f32> = u_xlat46;
        let x_1542 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1540 * vec2<f32>(x_1542.x, x_1542.y)) + vec2<f32>(x_1545.x, x_1545.w));
        let x_1548 : vec4<f32> = u_xlat11;
        let x_1549 : vec3<f32> = vec3<f32>(x_1548.x, x_1548.z, x_1548.w);
        let x_1550 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1549.x, x_1550.y, x_1549.y, x_1549.z);
        let x_1552 : vec2<f32> = u_xlat46;
        let x_1555 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1558 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1552.x, x_1552.y, x_1552.x, x_1552.y) * vec4<f32>(x_1555.x, x_1555.y, x_1555.x, x_1555.y)) + vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1558.y));
        let x_1562 : vec2<f32> = u_xlat46;
        let x_1564 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1567 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1562 * vec2<f32>(x_1564.x, x_1564.y)) + vec2<f32>(x_1567.w, x_1567.y));
        let x_1571 : f32 = u_xlat8.x;
        u_xlat10.x = x_1571;
        let x_1573 : vec2<f32> = u_xlat46;
        let x_1575 : vec4<f32> = x_728.x_MainLightShadowmapSize;
        let x_1578 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_1573 * vec2<f32>(x_1575.x, x_1575.y)) + vec2<f32>(x_1578.x, x_1578.y));
        let x_1582 : vec4<f32> = u_xlat7;
        let x_1584 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1582.x, x_1582.x, x_1582.x, x_1582.x) * x_1584);
        let x_1587 : vec4<f32> = u_xlat7;
        let x_1589 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1587.y, x_1587.y, x_1587.y, x_1587.y) * x_1589);
        let x_1592 : vec4<f32> = u_xlat7;
        let x_1594 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1592.z, x_1592.z, x_1592.z, x_1592.z) * x_1594);
        let x_1596 : vec4<f32> = u_xlat7;
        let x_1598 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1596.w, x_1596.w, x_1596.w, x_1596.w) * x_1598);
        let x_1601 : vec4<f32> = u_xlat12;
        let x_1602 : vec2<f32> = vec2<f32>(x_1601.x, x_1601.y);
        let x_1604 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec13;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1611.xy, x_1611.z);
        u_xlat68 = x_1613;
        let x_1615 : vec4<f32> = u_xlat12;
        let x_1616 : vec2<f32> = vec2<f32>(x_1615.z, x_1615.w);
        let x_1618 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1626 : vec3<f32> = txVec14;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1626.xy, x_1626.z);
        u_xlat69 = x_1628;
        let x_1629 : f32 = u_xlat69;
        let x_1631 : f32 = u_xlat18.y;
        u_xlat69 = (x_1629 * x_1631);
        let x_1634 : f32 = u_xlat18.x;
        let x_1635 : f32 = u_xlat68;
        let x_1637 : f32 = u_xlat69;
        u_xlat68 = ((x_1634 * x_1635) + x_1637);
        let x_1640 : vec4<f32> = u_xlat13;
        let x_1641 : vec2<f32> = vec2<f32>(x_1640.x, x_1640.y);
        let x_1643 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec15;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1650.xy, x_1650.z);
        u_xlat69 = x_1652;
        let x_1654 : f32 = u_xlat18.z;
        let x_1655 : f32 = u_xlat69;
        let x_1657 : f32 = u_xlat68;
        u_xlat68 = ((x_1654 * x_1655) + x_1657);
        let x_1660 : vec4<f32> = u_xlat15;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.x, x_1660.y);
        let x_1663 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1670 : vec3<f32> = txVec16;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1670.xy, x_1670.z);
        u_xlat69 = x_1672;
        let x_1674 : f32 = u_xlat18.w;
        let x_1675 : f32 = u_xlat69;
        let x_1677 : f32 = u_xlat68;
        u_xlat68 = ((x_1674 * x_1675) + x_1677);
        let x_1680 : vec4<f32> = u_xlat14;
        let x_1681 : vec2<f32> = vec2<f32>(x_1680.x, x_1680.y);
        let x_1683 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1690 : vec3<f32> = txVec17;
        let x_1692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1690.xy, x_1690.z);
        u_xlat69 = x_1692;
        let x_1694 : f32 = u_xlat19.x;
        let x_1695 : f32 = u_xlat69;
        let x_1697 : f32 = u_xlat68;
        u_xlat68 = ((x_1694 * x_1695) + x_1697);
        let x_1700 : vec4<f32> = u_xlat14;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.z, x_1700.w);
        let x_1703 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec18;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1710.xy, x_1710.z);
        u_xlat69 = x_1712;
        let x_1714 : f32 = u_xlat19.y;
        let x_1715 : f32 = u_xlat69;
        let x_1717 : f32 = u_xlat68;
        u_xlat68 = ((x_1714 * x_1715) + x_1717);
        let x_1720 : vec2<f32> = u_xlat55;
        let x_1722 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec19;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1729.xy, x_1729.z);
        u_xlat69 = x_1731;
        let x_1733 : f32 = u_xlat19.z;
        let x_1734 : f32 = u_xlat69;
        let x_1736 : f32 = u_xlat68;
        u_xlat68 = ((x_1733 * x_1734) + x_1736);
        let x_1739 : vec4<f32> = u_xlat15;
        let x_1740 : vec2<f32> = vec2<f32>(x_1739.z, x_1739.w);
        let x_1742 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1740.x, x_1740.y, x_1742);
        let x_1749 : vec3<f32> = txVec20;
        let x_1751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1749.xy, x_1749.z);
        u_xlat69 = x_1751;
        let x_1753 : f32 = u_xlat19.w;
        let x_1754 : f32 = u_xlat69;
        let x_1756 : f32 = u_xlat68;
        u_xlat68 = ((x_1753 * x_1754) + x_1756);
        let x_1759 : vec4<f32> = u_xlat16;
        let x_1760 : vec2<f32> = vec2<f32>(x_1759.x, x_1759.y);
        let x_1762 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1760.x, x_1760.y, x_1762);
        let x_1769 : vec3<f32> = txVec21;
        let x_1771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1769.xy, x_1769.z);
        u_xlat69 = x_1771;
        let x_1773 : f32 = u_xlat20.x;
        let x_1774 : f32 = u_xlat69;
        let x_1776 : f32 = u_xlat68;
        u_xlat68 = ((x_1773 * x_1774) + x_1776);
        let x_1779 : vec4<f32> = u_xlat16;
        let x_1780 : vec2<f32> = vec2<f32>(x_1779.z, x_1779.w);
        let x_1782 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1780.x, x_1780.y, x_1782);
        let x_1789 : vec3<f32> = txVec22;
        let x_1791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1789.xy, x_1789.z);
        u_xlat69 = x_1791;
        let x_1793 : f32 = u_xlat20.y;
        let x_1794 : f32 = u_xlat69;
        let x_1796 : f32 = u_xlat68;
        u_xlat68 = ((x_1793 * x_1794) + x_1796);
        let x_1799 : vec2<f32> = u_xlat29;
        let x_1801 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1799.x, x_1799.y, x_1801);
        let x_1808 : vec3<f32> = txVec23;
        let x_1810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1808.xy, x_1808.z);
        u_xlat69 = x_1810;
        let x_1812 : f32 = u_xlat20.z;
        let x_1813 : f32 = u_xlat69;
        let x_1815 : f32 = u_xlat68;
        u_xlat68 = ((x_1812 * x_1813) + x_1815);
        let x_1818 : vec2<f32> = u_xlat17;
        let x_1820 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1818.x, x_1818.y, x_1820);
        let x_1827 : vec3<f32> = txVec24;
        let x_1829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1827.xy, x_1827.z);
        u_xlat69 = x_1829;
        let x_1831 : f32 = u_xlat20.w;
        let x_1832 : f32 = u_xlat69;
        let x_1834 : f32 = u_xlat68;
        u_xlat68 = ((x_1831 * x_1832) + x_1834);
        let x_1837 : vec4<f32> = u_xlat11;
        let x_1838 : vec2<f32> = vec2<f32>(x_1837.x, x_1837.y);
        let x_1840 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1838.x, x_1838.y, x_1840);
        let x_1847 : vec3<f32> = txVec25;
        let x_1849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1847.xy, x_1847.z);
        u_xlat69 = x_1849;
        let x_1851 : f32 = u_xlat7.x;
        let x_1852 : f32 = u_xlat69;
        let x_1854 : f32 = u_xlat68;
        u_xlat68 = ((x_1851 * x_1852) + x_1854);
        let x_1857 : vec4<f32> = u_xlat11;
        let x_1858 : vec2<f32> = vec2<f32>(x_1857.z, x_1857.w);
        let x_1860 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1858.x, x_1858.y, x_1860);
        let x_1867 : vec3<f32> = txVec26;
        let x_1869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1867.xy, x_1867.z);
        u_xlat69 = x_1869;
        let x_1871 : f32 = u_xlat7.y;
        let x_1872 : f32 = u_xlat69;
        let x_1874 : f32 = u_xlat68;
        u_xlat68 = ((x_1871 * x_1872) + x_1874);
        let x_1877 : vec2<f32> = u_xlat52;
        let x_1879 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
        let x_1886 : vec3<f32> = txVec27;
        let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1886.xy, x_1886.z);
        u_xlat69 = x_1888;
        let x_1890 : f32 = u_xlat7.z;
        let x_1891 : f32 = u_xlat69;
        let x_1893 : f32 = u_xlat68;
        u_xlat68 = ((x_1890 * x_1891) + x_1893);
        let x_1896 : vec2<f32> = u_xlat46;
        let x_1898 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1896.x, x_1896.y, x_1898);
        let x_1905 : vec3<f32> = txVec28;
        let x_1907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1905.xy, x_1905.z);
        u_xlat46.x = x_1907;
        let x_1910 : f32 = u_xlat7.w;
        let x_1912 : f32 = u_xlat46.x;
        let x_1914 : f32 = u_xlat68;
        u_xlat4.x = ((x_1910 * x_1912) + x_1914);
      }
    }
  } else {
    let x_1919 : vec4<f32> = vs_TEXCOORD8;
    let x_1920 : vec2<f32> = vec2<f32>(x_1919.x, x_1919.y);
    let x_1922 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1920.x, x_1920.y, x_1922);
    let x_1929 : vec3<f32> = txVec29;
    let x_1931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1929.xy, x_1929.z);
    u_xlat4.x = x_1931;
  }
  let x_1934 : f32 = x_728.x_MainLightShadowParams.x;
  u_xlat46.x = (-(x_1934) + 1.0f);
  let x_1939 : f32 = u_xlat4.x;
  let x_1941 : f32 = x_728.x_MainLightShadowParams.x;
  let x_1944 : f32 = u_xlat46.x;
  u_xlat4.x = ((x_1939 * x_1941) + x_1944);
  let x_1948 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_1948);
  let x_1952 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (x_1952 >= 1.0f);
  let x_1954 : bool = u_xlatb67;
  let x_1955 : bool = u_xlatb46;
  u_xlatb46 = (x_1954 | x_1955);
  let x_1957 : bool = u_xlatb46;
  if (x_1957) {
    x_1958 = 1.0f;
  } else {
    let x_1963 : f32 = u_xlat4.x;
    x_1958 = x_1963;
  }
  let x_1964 : f32 = x_1958;
  u_xlat4.x = x_1964;
  let x_1966 : vec3<f32> = vs_TEXCOORD7;
  let x_1968 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1970 : vec3<f32> = (x_1966 + -(x_1968));
  let x_1971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1973 : vec4<f32> = u_xlat7;
  let x_1975 : vec4<f32> = u_xlat7;
  u_xlat46.x = dot(vec3<f32>(x_1973.x, x_1973.y, x_1973.z), vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1980 : f32 = u_xlat46.x;
  let x_1982 : f32 = x_728.x_MainLightShadowParams.z;
  let x_1985 : f32 = x_728.x_MainLightShadowParams.w;
  u_xlat46.x = ((x_1980 * x_1982) + x_1985);
  let x_1989 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_1989, 0.0f, 1.0f);
  let x_1993 : f32 = u_xlat4.x;
  u_xlat67 = (-(x_1993) + 1.0f);
  let x_1997 : f32 = u_xlat46.x;
  let x_1998 : f32 = u_xlat67;
  let x_2001 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1997 * x_1998) + x_2001);
  let x_2004 : f32 = u_xlat25;
  let x_2008 : vec4<f32> = x_126.x_MainLightColor;
  let x_2010 : vec3<f32> = (vec3<f32>(x_2004, x_2004, x_2004) * vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
  let x_2011 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
  let x_2013 : vec3<f32> = u_xlat2;
  let x_2015 : vec4<f32> = u_xlat1;
  u_xlat46.x = dot(-(x_2013), vec3<f32>(x_2015.x, x_2015.y, x_2015.z));
  let x_2020 : f32 = u_xlat46.x;
  let x_2022 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2020 + x_2022);
  let x_2025 : vec4<f32> = u_xlat1;
  let x_2027 : vec2<f32> = u_xlat46;
  let x_2031 : vec3<f32> = u_xlat2;
  let x_2033 : vec3<f32> = ((vec3<f32>(x_2025.x, x_2025.y, x_2025.z) * -(vec3<f32>(x_2027.x, x_2027.x, x_2027.x))) + -(x_2031));
  let x_2034 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2033.x, x_2033.y, x_2033.z, x_2034.w);
  let x_2036 : vec4<f32> = u_xlat1;
  let x_2038 : vec3<f32> = u_xlat2;
  u_xlat46.x = dot(vec3<f32>(x_2036.x, x_2036.y, x_2036.z), x_2038);
  let x_2042 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2042, 0.0f, 1.0f);
  let x_2046 : f32 = u_xlat46.x;
  u_xlat46.x = (-(x_2046) + 1.0f);
  let x_2051 : f32 = u_xlat46.x;
  let x_2053 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2051 * x_2053);
  let x_2057 : f32 = u_xlat46.x;
  let x_2059 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2057 * x_2059);
  let x_2063 : f32 = u_xlat0.x;
  u_xlat67 = ((-(x_2063) * 0.699999988f) + 1.700000048f);
  let x_2070 : f32 = u_xlat0.x;
  let x_2071 : f32 = u_xlat67;
  u_xlat0.x = (x_2070 * x_2071);
  let x_2075 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2075 * 6.0f);
  let x_2087 : vec4<f32> = u_xlat8;
  let x_2090 : f32 = u_xlat0.x;
  let x_2091 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2087.x, x_2087.y, x_2087.z), x_2090);
  u_xlat8 = x_2091;
  let x_2093 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2093 + -1.0f);
  let x_2101 : f32 = x_2099.unity_SpecCube0_HDR.w;
  let x_2103 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2101 * x_2103) + 1.0f);
  let x_2108 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2108, 0.0f);
  let x_2112 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2112);
  let x_2116 : f32 = u_xlat0.x;
  let x_2118 : f32 = x_2099.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2116 * x_2118);
  let x_2122 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2122);
  let x_2126 : f32 = u_xlat0.x;
  let x_2128 : f32 = x_2099.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2126 * x_2128);
  let x_2131 : vec4<f32> = u_xlat8;
  let x_2133 : vec3<f32> = u_xlat0;
  let x_2135 : vec3<f32> = (vec3<f32>(x_2131.x, x_2131.y, x_2131.z) * vec3<f32>(x_2133.x, x_2133.x, x_2133.x));
  let x_2136 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
  let x_2138 : f32 = u_xlat42;
  let x_2140 : f32 = u_xlat42;
  let x_2144 : vec2<f32> = ((vec2<f32>(x_2138, x_2138) * vec2<f32>(x_2140, x_2140)) + vec2<f32>(-1.0f, 1.0f));
  let x_2145 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2144.x, x_2145.y, x_2144.y);
  let x_2148 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2148);
  let x_2150 : vec4<f32> = u_xlat5;
  let x_2153 : f32 = u_xlat65;
  let x_2155 : vec3<f32> = (-(vec3<f32>(x_2150.x, x_2150.y, x_2150.z)) + vec3<f32>(x_2153, x_2153, x_2153));
  let x_2156 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
  let x_2158 : vec2<f32> = u_xlat46;
  let x_2160 : vec4<f32> = u_xlat9;
  let x_2163 : vec4<f32> = u_xlat5;
  let x_2165 : vec3<f32> = ((vec3<f32>(x_2158.x, x_2158.x, x_2158.x) * vec3<f32>(x_2160.x, x_2160.y, x_2160.z)) + vec3<f32>(x_2163.x, x_2163.y, x_2163.z));
  let x_2166 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2165.x, x_2165.y, x_2165.z, x_2166.w);
  let x_2168 : f32 = u_xlat42;
  let x_2170 : vec4<f32> = u_xlat9;
  let x_2172 : vec3<f32> = (vec3<f32>(x_2168, x_2168, x_2168) * vec3<f32>(x_2170.x, x_2170.y, x_2170.z));
  let x_2173 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2172.x, x_2172.y, x_2172.z, x_2173.w);
  let x_2175 : vec4<f32> = u_xlat8;
  let x_2177 : vec4<f32> = u_xlat9;
  let x_2179 : vec3<f32> = (vec3<f32>(x_2175.x, x_2175.y, x_2175.z) * vec3<f32>(x_2177.x, x_2177.y, x_2177.z));
  let x_2180 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
  let x_2182 : vec4<f32> = u_xlat3;
  let x_2184 : vec4<f32> = u_xlat6;
  let x_2187 : vec4<f32> = u_xlat8;
  let x_2189 : vec3<f32> = ((vec3<f32>(x_2182.x, x_2182.y, x_2182.z) * vec3<f32>(x_2184.x, x_2184.y, x_2184.z)) + vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
  let x_2190 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2190.w);
  let x_2193 : f32 = u_xlat4.x;
  let x_2195 : f32 = x_2099.unity_LightData.z;
  u_xlat42 = (x_2193 * x_2195);
  let x_2197 : vec4<f32> = u_xlat1;
  let x_2200 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2197.x, x_2197.y, x_2197.z), vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
  let x_2203 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2203, 0.0f, 1.0f);
  let x_2205 : f32 = u_xlat42;
  let x_2206 : f32 = u_xlat65;
  u_xlat42 = (x_2205 * x_2206);
  let x_2208 : f32 = u_xlat42;
  let x_2210 : vec4<f32> = u_xlat7;
  let x_2212 : vec3<f32> = (vec3<f32>(x_2208, x_2208, x_2208) * vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
  let x_2213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2212.x, x_2213.y, x_2212.y, x_2212.z);
  let x_2215 : vec3<f32> = u_xlat2;
  let x_2217 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2219 : vec3<f32> = (x_2215 + vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
  let x_2220 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
  let x_2222 : vec4<f32> = u_xlat7;
  let x_2224 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2222.x, x_2222.y, x_2222.z), vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
  let x_2227 : f32 = u_xlat42;
  u_xlat42 = max(x_2227, 1.17549435e-37f);
  let x_2230 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2230);
  let x_2232 : f32 = u_xlat42;
  let x_2234 : vec4<f32> = u_xlat7;
  let x_2236 : vec3<f32> = (vec3<f32>(x_2232, x_2232, x_2232) * vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
  let x_2237 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2236.x, x_2236.y, x_2236.z, x_2237.w);
  let x_2239 : vec4<f32> = u_xlat1;
  let x_2241 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2239.x, x_2239.y, x_2239.z), vec3<f32>(x_2241.x, x_2241.y, x_2241.z));
  let x_2244 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2244, 0.0f, 1.0f);
  let x_2247 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2249 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2247.x, x_2247.y, x_2247.z), vec3<f32>(x_2249.x, x_2249.y, x_2249.z));
  let x_2252 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2252, 0.0f, 1.0f);
  let x_2254 : f32 = u_xlat42;
  let x_2255 : f32 = u_xlat42;
  u_xlat42 = (x_2254 * x_2255);
  let x_2257 : f32 = u_xlat42;
  let x_2259 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2257 * x_2259) + 1.000010014f);
  let x_2263 : f32 = u_xlat65;
  let x_2264 : f32 = u_xlat65;
  u_xlat65 = (x_2263 * x_2264);
  let x_2266 : f32 = u_xlat42;
  let x_2267 : f32 = u_xlat42;
  u_xlat42 = (x_2266 * x_2267);
  let x_2269 : f32 = u_xlat65;
  u_xlat65 = max(x_2269, 0.100000001f);
  let x_2272 : f32 = u_xlat42;
  let x_2273 : f32 = u_xlat65;
  u_xlat42 = (x_2272 * x_2273);
  let x_2275 : f32 = u_xlat66;
  let x_2276 : f32 = u_xlat42;
  u_xlat42 = (x_2275 * x_2276);
  let x_2278 : f32 = u_xlat64;
  let x_2279 : f32 = u_xlat42;
  u_xlat42 = (x_2278 / x_2279);
  let x_2281 : vec4<f32> = u_xlat5;
  let x_2283 : f32 = u_xlat42;
  let x_2286 : vec4<f32> = u_xlat6;
  let x_2288 : vec3<f32> = ((vec3<f32>(x_2281.x, x_2281.y, x_2281.z) * vec3<f32>(x_2283, x_2283, x_2283)) + vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
  let x_2289 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
  let x_2291 : vec4<f32> = u_xlat4;
  let x_2293 : vec4<f32> = u_xlat7;
  let x_2295 : vec3<f32> = (vec3<f32>(x_2291.x, x_2291.z, x_2291.w) * vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
  let x_2296 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2295.x, x_2296.y, x_2295.y, x_2295.z);
  let x_2299 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2301 : f32 = x_2099.unity_LightData.y;
  u_xlat42 = min(x_2299, x_2301);
  let x_2305 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2305));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2317 : u32 = u_xlatu_loop_1;
    let x_2318 : u32 = u_xlatu42;
    if ((x_2317 < x_2318)) {
    } else {
      break;
    }
    let x_2321 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2321 >> 2u);
    let x_2325 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2325 & 3u));
    let x_2328 : u32 = u_xlatu68;
    let x_2331 : vec4<f32> = x_2099.unity_LightIndices[bitcast<i32>(x_2328)];
    let x_2341 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2346 : vec4<u32> = indexable[x_2341];
    u_xlat68 = dot(x_2331, bitcast<vec4<f32>>(x_2346));
    let x_2350 : f32 = u_xlat68;
    u_xlati68 = i32(x_2350);
    let x_2352 : vec3<f32> = vs_TEXCOORD7;
    let x_2364 : i32 = u_xlati68;
    let x_2366 : vec4<f32> = x_2363.x_AdditionalLightsPosition[x_2364];
    let x_2369 : i32 = u_xlati68;
    let x_2371 : vec4<f32> = x_2363.x_AdditionalLightsPosition[x_2369];
    let x_2373 : vec3<f32> = ((-(x_2352) * vec3<f32>(x_2366.w, x_2366.w, x_2366.w)) + vec3<f32>(x_2371.x, x_2371.y, x_2371.z));
    let x_2374 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
    let x_2376 : vec4<f32> = u_xlat8;
    let x_2378 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2376.x, x_2376.y, x_2376.z), vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
    let x_2381 : f32 = u_xlat69;
    u_xlat69 = max(x_2381, 6.10351562e-05f);
    let x_2384 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2384);
    let x_2386 : f32 = u_xlat70;
    let x_2388 : vec4<f32> = u_xlat8;
    let x_2390 : vec3<f32> = (vec3<f32>(x_2386, x_2386, x_2386) * vec3<f32>(x_2388.x, x_2388.y, x_2388.z));
    let x_2391 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
    let x_2394 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2394);
    let x_2396 : f32 = u_xlat69;
    let x_2397 : i32 = u_xlati68;
    let x_2399 : f32 = x_2363.x_AdditionalLightsAttenuation[x_2397].x;
    u_xlat69 = (x_2396 * x_2399);
    let x_2401 : f32 = u_xlat69;
    let x_2403 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2401) * x_2403) + 1.0f);
    let x_2406 : f32 = u_xlat69;
    u_xlat69 = max(x_2406, 0.0f);
    let x_2408 : f32 = u_xlat69;
    let x_2409 : f32 = u_xlat69;
    u_xlat69 = (x_2408 * x_2409);
    let x_2411 : f32 = u_xlat69;
    let x_2412 : f32 = u_xlat71;
    u_xlat69 = (x_2411 * x_2412);
    let x_2414 : i32 = u_xlati68;
    let x_2416 : vec4<f32> = x_2363.x_AdditionalLightsSpotDir[x_2414];
    let x_2418 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2416.x, x_2416.y, x_2416.z), vec3<f32>(x_2418.x, x_2418.y, x_2418.z));
    let x_2421 : f32 = u_xlat71;
    let x_2422 : i32 = u_xlati68;
    let x_2424 : f32 = x_2363.x_AdditionalLightsAttenuation[x_2422].z;
    let x_2426 : i32 = u_xlati68;
    let x_2428 : f32 = x_2363.x_AdditionalLightsAttenuation[x_2426].w;
    u_xlat71 = ((x_2421 * x_2424) + x_2428);
    let x_2430 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2430, 0.0f, 1.0f);
    let x_2432 : f32 = u_xlat71;
    let x_2433 : f32 = u_xlat71;
    u_xlat71 = (x_2432 * x_2433);
    let x_2435 : f32 = u_xlat69;
    let x_2436 : f32 = u_xlat71;
    u_xlat69 = (x_2435 * x_2436);
    let x_2438 : f32 = u_xlat25;
    let x_2440 : i32 = u_xlati68;
    let x_2442 : vec4<f32> = x_2363.x_AdditionalLightsColor[x_2440];
    let x_2444 : vec3<f32> = (vec3<f32>(x_2438, x_2438, x_2438) * vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
    let x_2445 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
    let x_2447 : vec4<f32> = u_xlat1;
    let x_2449 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2447.x, x_2447.y, x_2447.z), vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
    let x_2452 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2452, 0.0f, 1.0f);
    let x_2454 : f32 = u_xlat68;
    let x_2455 : f32 = u_xlat69;
    u_xlat68 = (x_2454 * x_2455);
    let x_2457 : f32 = u_xlat68;
    let x_2459 : vec4<f32> = u_xlat10;
    let x_2461 : vec3<f32> = (vec3<f32>(x_2457, x_2457, x_2457) * vec3<f32>(x_2459.x, x_2459.y, x_2459.z));
    let x_2462 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
    let x_2464 : vec4<f32> = u_xlat8;
    let x_2466 : f32 = u_xlat70;
    let x_2469 : vec3<f32> = u_xlat2;
    let x_2470 : vec3<f32> = ((vec3<f32>(x_2464.x, x_2464.y, x_2464.z) * vec3<f32>(x_2466, x_2466, x_2466)) + x_2469);
    let x_2471 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2470.x, x_2470.y, x_2470.z, x_2471.w);
    let x_2473 : vec4<f32> = u_xlat8;
    let x_2475 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2473.x, x_2473.y, x_2473.z), vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
    let x_2478 : f32 = u_xlat68;
    u_xlat68 = max(x_2478, 1.17549435e-37f);
    let x_2480 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2480);
    let x_2482 : f32 = u_xlat68;
    let x_2484 : vec4<f32> = u_xlat8;
    let x_2486 : vec3<f32> = (vec3<f32>(x_2482, x_2482, x_2482) * vec3<f32>(x_2484.x, x_2484.y, x_2484.z));
    let x_2487 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
    let x_2489 : vec4<f32> = u_xlat1;
    let x_2491 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2489.x, x_2489.y, x_2489.z), vec3<f32>(x_2491.x, x_2491.y, x_2491.z));
    let x_2494 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2494, 0.0f, 1.0f);
    let x_2496 : vec4<f32> = u_xlat9;
    let x_2498 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2496.x, x_2496.y, x_2496.z), vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
    let x_2501 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2501, 0.0f, 1.0f);
    let x_2503 : f32 = u_xlat68;
    let x_2504 : f32 = u_xlat68;
    u_xlat68 = (x_2503 * x_2504);
    let x_2506 : f32 = u_xlat68;
    let x_2508 : f32 = u_xlat0.x;
    u_xlat68 = ((x_2506 * x_2508) + 1.000010014f);
    let x_2511 : f32 = u_xlat69;
    let x_2512 : f32 = u_xlat69;
    u_xlat69 = (x_2511 * x_2512);
    let x_2514 : f32 = u_xlat68;
    let x_2515 : f32 = u_xlat68;
    u_xlat68 = (x_2514 * x_2515);
    let x_2517 : f32 = u_xlat69;
    u_xlat69 = max(x_2517, 0.100000001f);
    let x_2519 : f32 = u_xlat68;
    let x_2520 : f32 = u_xlat69;
    u_xlat68 = (x_2519 * x_2520);
    let x_2522 : f32 = u_xlat66;
    let x_2523 : f32 = u_xlat68;
    u_xlat68 = (x_2522 * x_2523);
    let x_2525 : f32 = u_xlat64;
    let x_2526 : f32 = u_xlat68;
    u_xlat68 = (x_2525 / x_2526);
    let x_2528 : vec4<f32> = u_xlat5;
    let x_2530 : f32 = u_xlat68;
    let x_2533 : vec4<f32> = u_xlat6;
    let x_2535 : vec3<f32> = ((vec3<f32>(x_2528.x, x_2528.y, x_2528.z) * vec3<f32>(x_2530, x_2530, x_2530)) + vec3<f32>(x_2533.x, x_2533.y, x_2533.z));
    let x_2536 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
    let x_2538 : vec4<f32> = u_xlat8;
    let x_2540 : vec4<f32> = u_xlat10;
    let x_2543 : vec4<f32> = u_xlat7;
    let x_2545 : vec3<f32> = ((vec3<f32>(x_2538.x, x_2538.y, x_2538.z) * vec3<f32>(x_2540.x, x_2540.y, x_2540.z)) + vec3<f32>(x_2543.x, x_2543.y, x_2543.z));
    let x_2546 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2545.x, x_2545.y, x_2545.z, x_2546.w);

    continuing {
      let x_2548 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2548 + bitcast<u32>(1i));
    }
  }
  let x_2550 : vec4<f32> = u_xlat3;
  let x_2552 : f32 = u_xlat21;
  let x_2555 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_2550.x, x_2550.y, x_2550.z) * vec3<f32>(x_2552, x_2552, x_2552)) + vec3<f32>(x_2555.x, x_2555.z, x_2555.w));
  let x_2558 : vec4<f32> = u_xlat7;
  let x_2560 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2558.x, x_2558.y, x_2558.z) + x_2560);
  let x_2564 : f32 = u_xlat63;
  let x_2566 : vec3<f32> = u_xlat0;
  let x_2567 : vec3<f32> = (vec3<f32>(x_2564, x_2564, x_2564) * x_2566);
  let x_2568 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2567.x, x_2567.y, x_2567.z, x_2568.w);
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

