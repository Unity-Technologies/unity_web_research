diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_Time : vec4<f32>,
  /* @offset(80) */
  x_ScreenParams : vec4<f32>,
  /* @offset(96) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(192) */
  x_MaxDepth : f32,
  /* @offset(208) */
  x_VeraslWater_DepthCamParams : vec4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BumpScale : f32,
  /* @offset(16) */
  x_DitherPattern_TexelSize : vec4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_4,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_WaterFXMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenTextures_linear_clamp : sampler;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

var<private> u_xlat38 : f32;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat57 : f32;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_WaterDepthMap_linear_clamp : sampler;

var<private> u_xlat58 : f32;

@group(0) @binding(6) var x_SurfaceMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_SurfaceMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat3 : f32;

@group(1) @binding(3) var<uniform> x_204 : UnityPerMaterial;

var<private> vs_NORMAL0 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat20 : vec2<f32>;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat22 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_367 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu22 : u32;

var<private> u_xlati22 : i32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb23 : bool;

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat43 : vec2<f32>;

var<private> u_xlat45 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat42 : vec2<f32>;

var<private> u_xlat61 : f32;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat46 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb41 : bool;

var<private> u_xlatb60 : bool;

var<private> u_xlat41 : vec2<f32>;

var<private> u_xlat62 : f32;

var<private> u_xlat63 : f32;

@group(0) @binding(8) var x_DitherPattern : texture_2d<f32>;

@group(0) @binding(17) var sampler_DitherPattern : sampler;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlatu63 : u32;

var<private> u_xlati63 : i32;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu41 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlat60 : f32;

@group(1) @binding(2) var<uniform> x_2352 : UnityPerDraw;

var<private> u_xlat59 : f32;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(14) var sampler_AbsorptionScatteringRamp : sampler;

var<private> u_xlatu1 : u32;

var<private> u_xlatu62 : u32;

var<private> u_xlati62 : i32;

@group(1) @binding(1) var<uniform> x_2762 : AdditionalLights;

var<private> u_xlat64 : f32;

var<private> u_xlat65 : f32;

@group(0) @binding(0) var x_PlanarReflectionTexture : texture_2d<f32>;

@group(0) @binding(3) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture_linear_clamp : sampler;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatu59 : u32;

var<private> u_xlatb62 : bool;

var<private> u_xlatb63 : bool;

fn main_1() {
  var x_322 : vec2<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
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
  var x_1833 : f32;
  var u_xlatu_loop_1 : u32;
  var txVec30 : vec3<f32>;
  var u_xlatu_loop_2 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = vs_TEXCOORD6;
  let x_16 : vec4<f32> = vs_TEXCOORD6;
  let x_18 : vec2<f32> = (vec2<f32>(x_14.x, x_14.y) / vec2<f32>(x_16.w, x_16.w));
  let x_19 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_18.x, x_18.y, x_19.z);
  let x_34 : vec3<f32> = vs_TEXCOORD3;
  let x_46 : f32 = x_39.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_WaterFXMap, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_34.x, x_34.y), x_46);
  u_xlat1 = vec3<f32>(x_47.x, x_47.y, x_47.z);
  let x_56 : vec3<f32> = u_xlat0;
  let x_59 : f32 = x_39.x_GlobalMipBias.x;
  let x_60 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_56.x, x_56.y), x_59);
  u_xlat38 = x_60.x;
  let x_65 : f32 = x_39.x_ZBufferParams.z;
  let x_66 : f32 = u_xlat38;
  let x_70 : f32 = x_39.x_ZBufferParams.w;
  u_xlat38 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat38;
  u_xlat38 = (1.0f / x_73);
  let x_75 : f32 = u_xlat38;
  let x_79 : f32 = vs_TEXCOORD5.x;
  let x_83 : f32 = vs_TEXCOORD5.y;
  u_xlat38 = ((x_75 * x_79) + -(x_83));
  let x_89 : vec3<f32> = vs_TEXCOORD1;
  let x_96 : vec2<f32> = ((vec2<f32>(x_89.x, x_89.z) * vec2<f32>(0.00200000009499490261f, 0.00200000009499490261f)) + vec2<f32>(0.5f, 0.5f));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_105 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_105.x, x_105.y), 1.0f);
  u_xlat57 = x_107.x;
  let x_109 : f32 = u_xlat57;
  u_xlat57 = (-(x_109) + 1.0f);
  let x_115 : f32 = x_39.x_MaxDepth;
  let x_118 : f32 = x_39.x_VeraslWater_DepthCamParams.x;
  u_xlat58 = (x_115 + x_118);
  let x_120 : f32 = u_xlat57;
  let x_121 : f32 = u_xlat58;
  let x_124 : f32 = x_39.x_VeraslWater_DepthCamParams.x;
  u_xlat57 = ((x_120 * x_121) + -(x_124));
  let x_127 : f32 = u_xlat57;
  let x_129 : f32 = vs_TEXCOORD1.y;
  u_xlat57 = (x_127 + x_129);
  let x_132 : f32 = x_39.x_MaxDepth;
  u_xlat58 = (1.0f / x_132);
  let x_140 : vec4<f32> = vs_TEXCOORD0;
  let x_143 : f32 = x_39.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(x_SurfaceMap, sampler_SurfaceMap, vec2<f32>(x_140.z, x_140.w), x_143);
  let x_145 : vec2<f32> = vec2<f32>(x_144.x, x_144.y);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_146.z, x_146.w);
  let x_148 : vec4<f32> = u_xlat2;
  let x_155 : vec2<f32> = ((vec2<f32>(x_148.x, x_148.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_155.x, x_155.y, x_156.z, x_156.w);
  let x_163 : vec4<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_39.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_SurfaceMap, sampler_SurfaceMap, vec2<f32>(x_163.x, x_163.y), x_166);
  u_xlat40 = vec2<f32>(x_167.x, x_167.y);
  let x_169 : vec2<f32> = u_xlat40;
  u_xlat40 = ((x_169 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_172 : vec2<f32> = u_xlat40;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec2<f32> = ((x_172 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_174.x, x_174.y));
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_180 : f32 = u_xlat38;
  u_xlat3 = (x_180 * 0.00499999988824129105f);
  let x_183 : f32 = u_xlat38;
  u_xlat40.x = ((x_183 * 0.25f) + 0.25f);
  let x_189 : f32 = u_xlat40.x;
  u_xlat40.x = clamp(x_189, 0.0f, 1.0f);
  let x_193 : vec2<f32> = u_xlat40;
  let x_195 : vec4<f32> = u_xlat2;
  let x_197 : vec2<f32> = (vec2<f32>(x_193.x, x_193.x) * vec2<f32>(x_195.x, x_195.y));
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_197.x, x_197.y, x_198.z, x_198.w);
  let x_200 : vec4<f32> = u_xlat2;
  let x_206 : f32 = x_204.x_BumpScale;
  let x_210 : vec3<f32> = vs_NORMAL0;
  let x_212 : vec2<f32> = ((vec2<f32>(x_200.x, x_200.y) * vec2<f32>(x_206, x_206)) + vec2<f32>(x_210.x, x_210.z));
  let x_213 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_212.x, x_213.y, x_212.y, x_213.w);
  let x_216 : vec3<f32> = u_xlat1;
  let x_219 : vec2<f32> = (-(vec2<f32>(x_216.y, x_216.z)) + vec2<f32>(0.5f, 0.5f));
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_220.y, x_219.y, x_220.w);
  u_xlat2.w = 0.0f;
  let x_224 : f32 = vs_NORMAL0.y;
  u_xlat4.y = x_224;
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec4<f32> = u_xlat4;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.w, x_226.z) + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_234 : vec4<f32> = u_xlat2;
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat20.x = dot(vec3<f32>(x_234.x, x_234.y, x_234.z), vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_241 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_241);
  let x_244 : vec2<f32> = u_xlat20;
  let x_246 : vec4<f32> = u_xlat2;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.x, x_244.x) * vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = x_39.unity_MatrixVP[1i];
  u_xlat20 = (-(vec2<f32>(x_251.y, x_251.y)) * vec2<f32>(x_258.x, x_258.z));
  let x_262 : vec4<f32> = x_39.unity_MatrixVP[0i];
  let x_264 : vec4<f32> = u_xlat2;
  let x_268 : vec2<f32> = u_xlat20;
  u_xlat20 = ((vec2<f32>(x_262.x, x_262.z) * -(vec2<f32>(x_264.x, x_264.x))) + x_268);
  let x_272 : vec4<f32> = x_39.unity_MatrixVP[2i];
  let x_274 : vec4<f32> = u_xlat2;
  let x_278 : vec2<f32> = u_xlat20;
  u_xlat20 = ((vec2<f32>(x_272.x, x_272.z) * -(vec2<f32>(x_274.z, x_274.z))) + x_278);
  let x_280 : f32 = u_xlat3;
  u_xlat3 = x_280;
  let x_281 : f32 = u_xlat3;
  u_xlat3 = clamp(x_281, 0.0f, 1.0f);
  let x_283 : vec2<f32> = u_xlat20;
  let x_284 : f32 = u_xlat3;
  let x_287 : vec3<f32> = u_xlat0;
  u_xlat20 = ((x_283 * vec2<f32>(x_284, x_284)) + vec2<f32>(x_287.x, x_287.y));
  let x_293 : vec2<f32> = u_xlat20;
  let x_295 : f32 = x_39.x_GlobalMipBias.x;
  let x_296 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_293, x_295);
  u_xlat3 = x_296.x;
  let x_299 : f32 = x_39.x_ZBufferParams.z;
  let x_300 : f32 = u_xlat3;
  let x_303 : f32 = x_39.x_ZBufferParams.w;
  u_xlat3 = ((x_299 * x_300) + x_303);
  let x_305 : f32 = u_xlat3;
  u_xlat3 = (1.0f / x_305);
  let x_307 : f32 = u_xlat3;
  let x_309 : f32 = vs_TEXCOORD5.x;
  let x_312 : f32 = vs_TEXCOORD5.y;
  u_xlat3 = ((x_307 * x_309) + -(x_312));
  let x_318 : f32 = u_xlat3;
  u_xlatb22 = (x_318 < 0.0f);
  let x_320 : bool = u_xlatb22;
  if (x_320) {
    let x_325 : vec3<f32> = u_xlat0;
    x_322 = vec2<f32>(x_325.x, x_325.y);
  } else {
    let x_328 : vec2<f32> = u_xlat20;
    x_322 = x_328;
  }
  let x_329 : vec2<f32> = x_322;
  u_xlat20 = x_329;
  let x_330 : bool = u_xlatb22;
  let x_331 : f32 = u_xlat38;
  let x_332 : f32 = u_xlat3;
  u_xlat38 = select(x_332, x_331, x_330);
  let x_334 : vec4<f32> = u_xlat2;
  let x_337 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), x_337);
  let x_339 : f32 = u_xlat3;
  u_xlat3 = (-(x_339) + 1.0f);
  let x_343 : f32 = u_xlat3;
  let x_344 : f32 = u_xlat3;
  u_xlat22.x = (x_343 * x_344);
  let x_348 : f32 = u_xlat22.x;
  let x_350 : f32 = u_xlat22.x;
  u_xlat22.x = (x_348 * x_350);
  let x_354 : f32 = u_xlat22.x;
  let x_355 : f32 = u_xlat3;
  u_xlat3 = (x_354 * x_355);
  let x_357 : f32 = u_xlat3;
  u_xlat3 = clamp(x_357, 0.0f, 1.0f);
  let x_359 : vec3<f32> = vs_TEXCOORD1;
  let x_369 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
  u_xlat22 = (x_359 + -(vec3<f32>(x_369.x, x_369.y, x_369.z)));
  let x_373 : vec3<f32> = vs_TEXCOORD1;
  let x_375 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
  let x_378 : vec3<f32> = (x_373 + -(vec3<f32>(x_375.x, x_375.y, x_375.z)));
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : vec3<f32> = vs_TEXCOORD1;
  let x_385 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
  let x_388 : vec3<f32> = (x_382 + -(vec3<f32>(x_385.x, x_385.y, x_385.z)));
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : vec3<f32> = vs_TEXCOORD1;
  let x_395 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
  let x_398 : vec3<f32> = (x_392 + -(vec3<f32>(x_395.x, x_395.y, x_395.z)));
  let x_399 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_402 : vec3<f32> = u_xlat22;
  let x_403 : vec3<f32> = u_xlat22;
  u_xlat7.x = dot(x_402, x_403);
  let x_406 : vec4<f32> = u_xlat4;
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat7.y = dot(vec3<f32>(x_406.x, x_406.y, x_406.z), vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_412 : vec4<f32> = u_xlat5;
  let x_414 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_418 : vec4<f32> = u_xlat6;
  let x_420 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_427 : vec4<f32> = u_xlat7;
  let x_430 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_427 < x_430);
  let x_433 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_433);
  let x_437 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_437);
  let x_441 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_441);
  let x_445 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_445);
  let x_449 : bool = u_xlatb4.x;
  u_xlat22.x = select(-0.0f, -1.0f, x_449);
  let x_454 : bool = u_xlatb4.y;
  u_xlat22.y = select(-0.0f, -1.0f, x_454);
  let x_458 : bool = u_xlatb4.z;
  u_xlat22.z = select(-0.0f, -1.0f, x_458);
  let x_461 : vec3<f32> = u_xlat22;
  let x_462 : vec4<f32> = u_xlat5;
  u_xlat22 = (x_461 + vec3<f32>(x_462.y, x_462.z, x_462.w));
  let x_465 : vec3<f32> = u_xlat22;
  let x_467 : vec3<f32> = max(x_465, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_468 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_468.x, x_467.x, x_467.y, x_467.z);
  let x_470 : vec4<f32> = u_xlat5;
  u_xlat22.x = dot(x_470, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_477 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_477) + 4.0f);
  let x_484 : f32 = u_xlat22.x;
  u_xlatu22 = u32(x_484);
  let x_488 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_488) << bitcast<u32>(2i));
  let x_491 : vec3<f32> = vs_TEXCOORD1;
  let x_493 : i32 = u_xlati22;
  let x_496 : i32 = u_xlati22;
  let x_500 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_493 + 1i) / 4i)][((x_496 + 1i) % 4i)];
  let x_502 : vec3<f32> = (vec3<f32>(x_491.y, x_491.y, x_491.y) * vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : i32 = u_xlati22;
  let x_507 : i32 = u_xlati22;
  let x_510 : vec4<f32> = x_367.x_MainLightWorldToShadow[(x_505 / 4i)][(x_507 % 4i)];
  let x_512 : vec3<f32> = vs_TEXCOORD1;
  let x_515 : vec4<f32> = u_xlat4;
  let x_517 : vec3<f32> = ((vec3<f32>(x_510.x, x_510.y, x_510.z) * vec3<f32>(x_512.x, x_512.x, x_512.x)) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : i32 = u_xlati22;
  let x_523 : i32 = u_xlati22;
  let x_527 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_520 + 2i) / 4i)][((x_523 + 2i) % 4i)];
  let x_529 : vec3<f32> = vs_TEXCOORD1;
  let x_532 : vec4<f32> = u_xlat4;
  let x_534 : vec3<f32> = ((vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(x_529.z, x_529.z, x_529.z)) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat4;
  let x_539 : i32 = u_xlati22;
  let x_542 : i32 = u_xlati22;
  let x_546 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_539 + 3i) / 4i)][((x_542 + 3i) % 4i)];
  u_xlat22 = (vec3<f32>(x_537.x, x_537.y, x_537.z) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : f32 = x_367.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_550);
  let x_554 : bool = u_xlatb4.x;
  if (x_554) {
    let x_558 : f32 = x_367.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_558 == 1.0f);
    let x_562 : bool = u_xlatb4.x;
    if (x_562) {
      let x_565 : vec3<f32> = u_xlat22;
      let x_568 : vec4<f32> = x_367.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_565.x, x_565.y, x_565.x, x_565.y) + x_568);
      let x_572 : vec4<f32> = u_xlat4;
      let x_573 : vec2<f32> = vec2<f32>(x_572.x, x_572.y);
      let x_575 : f32 = u_xlat22.z;
      txVec0 = vec3<f32>(x_573.x, x_573.y, x_575);
      let x_587 : vec3<f32> = txVec0;
      let x_589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_587.xy, x_587.z);
      u_xlat5.x = x_589;
      let x_592 : vec4<f32> = u_xlat4;
      let x_593 : vec2<f32> = vec2<f32>(x_592.z, x_592.w);
      let x_595 : f32 = u_xlat22.z;
      txVec1 = vec3<f32>(x_593.x, x_593.y, x_595);
      let x_602 : vec3<f32> = txVec1;
      let x_604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_602.xy, x_602.z);
      u_xlat5.y = x_604;
      let x_606 : vec3<f32> = u_xlat22;
      let x_610 : vec4<f32> = x_367.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_606.x, x_606.y, x_606.x, x_606.y) + x_610);
      let x_613 : vec4<f32> = u_xlat4;
      let x_614 : vec2<f32> = vec2<f32>(x_613.x, x_613.y);
      let x_616 : f32 = u_xlat22.z;
      txVec2 = vec3<f32>(x_614.x, x_614.y, x_616);
      let x_623 : vec3<f32> = txVec2;
      let x_625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_623.xy, x_623.z);
      u_xlat5.z = x_625;
      let x_628 : vec4<f32> = u_xlat4;
      let x_629 : vec2<f32> = vec2<f32>(x_628.z, x_628.w);
      let x_631 : f32 = u_xlat22.z;
      txVec3 = vec3<f32>(x_629.x, x_629.y, x_631);
      let x_638 : vec3<f32> = txVec3;
      let x_640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_638.xy, x_638.z);
      u_xlat5.w = x_640;
      let x_642 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(x_642, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_649 : f32 = x_367.x_MainLightShadowParams.y;
      u_xlatb23 = (x_649 == 2.0f);
      let x_651 : bool = u_xlatb23;
      if (x_651) {
        let x_655 : vec3<f32> = u_xlat22;
        let x_658 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_655.x, x_655.y) * vec2<f32>(x_658.z, x_658.w)) + vec2<f32>(0.5f, 0.5f));
        let x_662 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_662);
        let x_664 : vec3<f32> = u_xlat22;
        let x_667 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_670 : vec2<f32> = u_xlat23;
        let x_672 : vec2<f32> = ((vec2<f32>(x_664.x, x_664.y) * vec2<f32>(x_667.z, x_667.w)) + -(x_670));
        let x_673 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_675 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_675.x, x_675.x, x_675.y, x_675.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_679 : vec4<f32> = u_xlat6;
        let x_681 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_679.x, x_679.x, x_679.z, x_679.z) * vec4<f32>(x_681.x, x_681.x, x_681.z, x_681.z));
        let x_685 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_685.y, x_685.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_690 : vec4<f32> = u_xlat7;
        let x_693 : vec4<f32> = u_xlat5;
        let x_696 : vec2<f32> = ((vec2<f32>(x_690.x, x_690.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_693.x, x_693.y)));
        let x_697 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_696.x, x_697.y, x_696.y, x_697.w);
        let x_699 : vec4<f32> = u_xlat5;
        let x_703 : vec2<f32> = (-(vec2<f32>(x_699.x, x_699.y)) + vec2<f32>(1.0f, 1.0f));
        let x_704 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_703.x, x_703.y, x_704.z, x_704.w);
        let x_707 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_707.x, x_707.y), vec2<f32>(0.0f, 0.0f));
        let x_711 : vec2<f32> = u_xlat45;
        let x_713 : vec2<f32> = u_xlat45;
        let x_715 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_711) * x_713) + vec2<f32>(x_715.x, x_715.y));
        let x_718 : vec4<f32> = u_xlat5;
        let x_720 : vec2<f32> = max(vec2<f32>(x_718.x, x_718.y), vec2<f32>(0.0f, 0.0f));
        let x_721 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat5;
        let x_726 : vec4<f32> = u_xlat5;
        let x_729 : vec4<f32> = u_xlat6;
        let x_731 : vec2<f32> = ((-(vec2<f32>(x_723.x, x_723.y)) * vec2<f32>(x_726.x, x_726.y)) + vec2<f32>(x_729.y, x_729.w));
        let x_732 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_734 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_734 + vec2<f32>(1.0f, 1.0f));
        let x_736 : vec4<f32> = u_xlat5;
        let x_738 : vec2<f32> = (vec2<f32>(x_736.x, x_736.y) + vec2<f32>(1.0f, 1.0f));
        let x_739 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_738.x, x_738.y, x_739.z, x_739.w);
        let x_742 : vec4<f32> = u_xlat6;
        let x_746 : vec2<f32> = (vec2<f32>(x_742.x, x_742.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_746.x, x_746.y, x_747.z, x_747.w);
        let x_750 : vec4<f32> = u_xlat7;
        let x_752 : vec2<f32> = (vec2<f32>(x_750.x, x_750.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_753 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
        let x_755 : vec2<f32> = u_xlat45;
        let x_756 : vec2<f32> = (x_755 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_757 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_756.x, x_756.y, x_757.z, x_757.w);
        let x_760 : vec4<f32> = u_xlat5;
        let x_762 : vec2<f32> = (vec2<f32>(x_760.x, x_760.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_763 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
        let x_765 : vec4<f32> = u_xlat6;
        let x_767 : vec2<f32> = (vec2<f32>(x_765.y, x_765.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_768 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
        let x_771 : f32 = u_xlat7.x;
        u_xlat8.z = x_771;
        let x_774 : f32 = u_xlat5.x;
        u_xlat8.w = x_774;
        let x_777 : f32 = u_xlat10.x;
        u_xlat9.z = x_777;
        let x_780 : f32 = u_xlat43.x;
        u_xlat9.w = x_780;
        let x_782 : vec4<f32> = u_xlat8;
        let x_784 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_782.z, x_782.w, x_782.x, x_782.z) + vec4<f32>(x_784.z, x_784.w, x_784.x, x_784.z));
        let x_788 : f32 = u_xlat8.y;
        u_xlat7.z = x_788;
        let x_791 : f32 = u_xlat5.y;
        u_xlat7.w = x_791;
        let x_794 : f32 = u_xlat9.y;
        u_xlat10.z = x_794;
        let x_797 : f32 = u_xlat43.y;
        u_xlat10.w = x_797;
        let x_799 : vec4<f32> = u_xlat7;
        let x_801 : vec4<f32> = u_xlat10;
        let x_803 : vec3<f32> = (vec3<f32>(x_799.z, x_799.y, x_799.w) + vec3<f32>(x_801.z, x_801.y, x_801.w));
        let x_804 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
        let x_806 : vec4<f32> = u_xlat9;
        let x_808 : vec4<f32> = u_xlat6;
        let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.z, x_806.w) / vec3<f32>(x_808.z, x_808.w, x_808.y));
        let x_811 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
        let x_813 : vec4<f32> = u_xlat7;
        let x_819 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_820 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat10;
        let x_824 : vec4<f32> = u_xlat5;
        let x_826 : vec3<f32> = (vec3<f32>(x_822.z, x_822.y, x_822.w) / vec3<f32>(x_824.x, x_824.y, x_824.z));
        let x_827 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat8;
        let x_831 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_832 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
        let x_834 : vec4<f32> = u_xlat7;
        let x_837 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_839 : vec3<f32> = (vec3<f32>(x_834.y, x_834.x, x_834.z) * vec3<f32>(x_837.x, x_837.x, x_837.x));
        let x_840 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat8;
        let x_845 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_847 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(x_845.y, x_845.y, x_845.y));
        let x_848 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
        let x_851 : f32 = u_xlat8.x;
        u_xlat7.w = x_851;
        let x_853 : vec2<f32> = u_xlat23;
        let x_856 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_859 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_853.x, x_853.y, x_853.x, x_853.y) * vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y)) + vec4<f32>(x_859.y, x_859.w, x_859.x, x_859.w));
        let x_862 : vec2<f32> = u_xlat23;
        let x_864 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_867 : vec4<f32> = u_xlat7;
        let x_869 : vec2<f32> = ((x_862 * vec2<f32>(x_864.x, x_864.y)) + vec2<f32>(x_867.z, x_867.w));
        let x_870 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
        let x_873 : f32 = u_xlat7.y;
        u_xlat8.w = x_873;
        let x_875 : vec4<f32> = u_xlat8;
        let x_876 : vec2<f32> = vec2<f32>(x_875.y, x_875.z);
        let x_877 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_877.x, x_876.x, x_877.z, x_876.y);
        let x_880 : vec2<f32> = u_xlat23;
        let x_883 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_886 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_880.x, x_880.y, x_880.x, x_880.y) * vec4<f32>(x_883.x, x_883.y, x_883.x, x_883.y)) + vec4<f32>(x_886.x, x_886.y, x_886.z, x_886.y));
        let x_889 : vec2<f32> = u_xlat23;
        let x_892 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_895 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.y) * vec4<f32>(x_892.x, x_892.y, x_892.x, x_892.y)) + vec4<f32>(x_895.w, x_895.y, x_895.w, x_895.z));
        let x_898 : vec2<f32> = u_xlat23;
        let x_901 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_904 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_898.x, x_898.y, x_898.x, x_898.y) * vec4<f32>(x_901.x, x_901.y, x_901.x, x_901.y)) + vec4<f32>(x_904.x, x_904.w, x_904.z, x_904.w));
        let x_908 : vec4<f32> = u_xlat5;
        let x_910 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_908.x, x_908.x, x_908.x, x_908.y) * vec4<f32>(x_910.z, x_910.w, x_910.y, x_910.z));
        let x_914 : vec4<f32> = u_xlat5;
        let x_916 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_914.y, x_914.y, x_914.z, x_914.z) * x_916);
        let x_919 : f32 = u_xlat5.z;
        let x_921 : f32 = u_xlat6.y;
        u_xlat23.x = (x_919 * x_921);
        let x_925 : vec4<f32> = u_xlat9;
        let x_926 : vec2<f32> = vec2<f32>(x_925.x, x_925.y);
        let x_928 : f32 = u_xlat22.z;
        txVec4 = vec3<f32>(x_926.x, x_926.y, x_928);
        let x_936 : vec3<f32> = txVec4;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_936.xy, x_936.z);
        u_xlat42.x = x_938;
        let x_941 : vec4<f32> = u_xlat9;
        let x_942 : vec2<f32> = vec2<f32>(x_941.z, x_941.w);
        let x_944 : f32 = u_xlat22.z;
        txVec5 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_952 : vec3<f32> = txVec5;
        let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
        u_xlat61 = x_954;
        let x_955 : f32 = u_xlat61;
        let x_957 : f32 = u_xlat12.y;
        u_xlat61 = (x_955 * x_957);
        let x_960 : f32 = u_xlat12.x;
        let x_962 : f32 = u_xlat42.x;
        let x_964 : f32 = u_xlat61;
        u_xlat42.x = ((x_960 * x_962) + x_964);
        let x_968 : vec4<f32> = u_xlat10;
        let x_969 : vec2<f32> = vec2<f32>(x_968.x, x_968.y);
        let x_971 : f32 = u_xlat22.z;
        txVec6 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec6;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_978.xy, x_978.z);
        u_xlat61 = x_980;
        let x_982 : f32 = u_xlat12.z;
        let x_983 : f32 = u_xlat61;
        let x_986 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_982 * x_983) + x_986);
        let x_990 : vec4<f32> = u_xlat8;
        let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
        let x_993 : f32 = u_xlat22.z;
        txVec7 = vec3<f32>(x_991.x, x_991.y, x_993);
        let x_1000 : vec3<f32> = txVec7;
        let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1000.xy, x_1000.z);
        u_xlat61 = x_1002;
        let x_1004 : f32 = u_xlat12.w;
        let x_1005 : f32 = u_xlat61;
        let x_1008 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1004 * x_1005) + x_1008);
        let x_1012 : vec4<f32> = u_xlat11;
        let x_1013 : vec2<f32> = vec2<f32>(x_1012.x, x_1012.y);
        let x_1015 : f32 = u_xlat22.z;
        txVec8 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
        let x_1022 : vec3<f32> = txVec8;
        let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1022.xy, x_1022.z);
        u_xlat61 = x_1024;
        let x_1026 : f32 = u_xlat13.x;
        let x_1027 : f32 = u_xlat61;
        let x_1030 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1026 * x_1027) + x_1030);
        let x_1034 : vec4<f32> = u_xlat11;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
        let x_1037 : f32 = u_xlat22.z;
        txVec9 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1044 : vec3<f32> = txVec9;
        let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1044.xy, x_1044.z);
        u_xlat61 = x_1046;
        let x_1048 : f32 = u_xlat13.y;
        let x_1049 : f32 = u_xlat61;
        let x_1052 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1048 * x_1049) + x_1052);
        let x_1056 : vec4<f32> = u_xlat8;
        let x_1057 : vec2<f32> = vec2<f32>(x_1056.z, x_1056.w);
        let x_1059 : f32 = u_xlat22.z;
        txVec10 = vec3<f32>(x_1057.x, x_1057.y, x_1059);
        let x_1066 : vec3<f32> = txVec10;
        let x_1068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1066.xy, x_1066.z);
        u_xlat61 = x_1068;
        let x_1070 : f32 = u_xlat13.z;
        let x_1071 : f32 = u_xlat61;
        let x_1074 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1070 * x_1071) + x_1074);
        let x_1078 : vec4<f32> = u_xlat7;
        let x_1079 : vec2<f32> = vec2<f32>(x_1078.x, x_1078.y);
        let x_1081 : f32 = u_xlat22.z;
        txVec11 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
        let x_1088 : vec3<f32> = txVec11;
        let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1088.xy, x_1088.z);
        u_xlat61 = x_1090;
        let x_1092 : f32 = u_xlat13.w;
        let x_1093 : f32 = u_xlat61;
        let x_1096 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1092 * x_1093) + x_1096);
        let x_1100 : vec4<f32> = u_xlat7;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.z, x_1100.w);
        let x_1103 : f32 = u_xlat22.z;
        txVec12 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1110 : vec3<f32> = txVec12;
        let x_1112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1110.xy, x_1110.z);
        u_xlat61 = x_1112;
        let x_1114 : f32 = u_xlat23.x;
        let x_1115 : f32 = u_xlat61;
        let x_1118 : f32 = u_xlat42.x;
        u_xlat4.x = ((x_1114 * x_1115) + x_1118);
      } else {
        let x_1122 : vec3<f32> = u_xlat22;
        let x_1125 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(x_1125.z, x_1125.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1129 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_1129);
        let x_1131 : vec3<f32> = u_xlat22;
        let x_1134 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1137 : vec2<f32> = u_xlat23;
        let x_1139 : vec2<f32> = ((vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(x_1134.z, x_1134.w)) + -(x_1137));
        let x_1140 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1142.x, x_1142.x, x_1142.y, x_1142.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1145 : vec4<f32> = u_xlat6;
        let x_1147 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1145.x, x_1145.x, x_1145.z, x_1145.z) * vec4<f32>(x_1147.x, x_1147.x, x_1147.z, x_1147.z));
        let x_1150 : vec4<f32> = u_xlat7;
        let x_1154 : vec2<f32> = (vec2<f32>(x_1150.y, x_1150.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1155.x, x_1154.x, x_1155.z, x_1154.y);
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1160 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1157.x, x_1157.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1160.x, x_1160.y)));
        let x_1164 : vec4<f32> = u_xlat5;
        let x_1167 : vec2<f32> = (-(vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1168 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1167.x, x_1168.y, x_1167.y, x_1168.w);
        let x_1170 : vec4<f32> = u_xlat5;
        let x_1172 : vec2<f32> = min(vec2<f32>(x_1170.x, x_1170.y), vec2<f32>(0.0f, 0.0f));
        let x_1173 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1183 : vec2<f32> = ((-(vec2<f32>(x_1175.x, x_1175.y)) * vec2<f32>(x_1178.x, x_1178.y)) + vec2<f32>(x_1181.x, x_1181.z));
        let x_1184 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1183.x, x_1184.y, x_1183.y, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat5;
        let x_1188 : vec2<f32> = max(vec2<f32>(x_1186.x, x_1186.y), vec2<f32>(0.0f, 0.0f));
        let x_1189 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1191 : vec4<f32> = u_xlat7;
        let x_1194 : vec4<f32> = u_xlat7;
        let x_1197 : vec4<f32> = u_xlat6;
        let x_1199 : vec2<f32> = ((-(vec2<f32>(x_1191.x, x_1191.y)) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.y, x_1197.w));
        let x_1200 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1200.x, x_1199.x, x_1200.z, x_1199.y);
        let x_1202 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1202 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1206 : f32 = u_xlat6.y;
        u_xlat7.z = (x_1206 * 0.08163200318813323975f);
        let x_1210 : vec2<f32> = u_xlat43;
        let x_1213 : vec2<f32> = (vec2<f32>(x_1210.y, x_1210.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1214 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_1216.x, x_1216.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1220 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1220 * 0.08163200318813323975f);
        let x_1224 : f32 = u_xlat9.y;
        u_xlat7.x = x_1224;
        let x_1226 : vec4<f32> = u_xlat5;
        let x_1233 : vec2<f32> = ((vec2<f32>(x_1226.x, x_1226.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1234 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1234.x, x_1233.x, x_1234.z, x_1233.y);
        let x_1236 : vec4<f32> = u_xlat5;
        let x_1240 : vec2<f32> = ((vec2<f32>(x_1236.x, x_1236.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1241 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1240.x, x_1241.y, x_1240.y, x_1241.w);
        let x_1244 : f32 = u_xlat43.x;
        u_xlat6.y = x_1244;
        let x_1247 : f32 = u_xlat8.y;
        u_xlat6.w = x_1247;
        let x_1249 : vec4<f32> = u_xlat6;
        let x_1250 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1249 + x_1250);
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec2<f32> = ((vec2<f32>(x_1252.y, x_1252.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1256 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1256.x, x_1255.x, x_1256.z, x_1255.y);
        let x_1258 : vec4<f32> = u_xlat5;
        let x_1261 : vec2<f32> = ((vec2<f32>(x_1258.y, x_1258.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1262 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1261.x, x_1262.y, x_1261.y, x_1262.w);
        let x_1265 : f32 = u_xlat43.y;
        u_xlat8.y = x_1265;
        let x_1267 : vec4<f32> = u_xlat8;
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1267 + x_1268);
        let x_1270 : vec4<f32> = u_xlat6;
        let x_1271 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1270 / x_1271);
        let x_1273 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1273 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1279 : vec4<f32> = u_xlat8;
        let x_1280 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1279 / x_1280);
        let x_1282 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1282 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1284 : vec4<f32> = u_xlat6;
        let x_1287 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1284.w, x_1284.x, x_1284.y, x_1284.z) * vec4<f32>(x_1287.x, x_1287.x, x_1287.x, x_1287.x));
        let x_1290 : vec4<f32> = u_xlat8;
        let x_1293 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1290.x, x_1290.w, x_1290.y, x_1290.z) * vec4<f32>(x_1293.y, x_1293.y, x_1293.y, x_1293.y));
        let x_1296 : vec4<f32> = u_xlat6;
        let x_1297 : vec3<f32> = vec3<f32>(x_1296.y, x_1296.z, x_1296.w);
        let x_1298 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1297.x, x_1298.y, x_1297.y, x_1297.z);
        let x_1301 : f32 = u_xlat8.x;
        u_xlat9.y = x_1301;
        let x_1303 : vec2<f32> = u_xlat23;
        let x_1306 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1303.x, x_1303.y, x_1303.x, x_1303.y) * vec4<f32>(x_1306.x, x_1306.y, x_1306.x, x_1306.y)) + vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1309.y));
        let x_1312 : vec2<f32> = u_xlat23;
        let x_1314 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1317 : vec4<f32> = u_xlat9;
        let x_1319 : vec2<f32> = ((x_1312 * vec2<f32>(x_1314.x, x_1314.y)) + vec2<f32>(x_1317.w, x_1317.y));
        let x_1320 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1319.x, x_1319.y, x_1320.z, x_1320.w);
        let x_1323 : f32 = u_xlat9.y;
        u_xlat6.y = x_1323;
        let x_1326 : f32 = u_xlat8.z;
        u_xlat9.y = x_1326;
        let x_1328 : vec2<f32> = u_xlat23;
        let x_1331 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y) * vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y)) + vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1334.y));
        let x_1338 : vec2<f32> = u_xlat23;
        let x_1340 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1338 * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.w, x_1343.y));
        let x_1347 : f32 = u_xlat9.y;
        u_xlat6.z = x_1347;
        let x_1349 : vec2<f32> = u_xlat23;
        let x_1352 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y) * vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y)) + vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.z));
        let x_1359 : f32 = u_xlat8.w;
        u_xlat9.y = x_1359;
        let x_1362 : vec2<f32> = u_xlat23;
        let x_1365 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y) * vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y)) + vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1368.y));
        let x_1372 : vec2<f32> = u_xlat23;
        let x_1374 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat9;
        u_xlat25 = ((x_1372 * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1377.w, x_1377.y));
        let x_1381 : f32 = u_xlat9.y;
        u_xlat6.w = x_1381;
        let x_1384 : vec2<f32> = u_xlat23;
        let x_1386 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1389 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1384 * vec2<f32>(x_1386.x, x_1386.y)) + vec2<f32>(x_1389.x, x_1389.w));
        let x_1392 : vec4<f32> = u_xlat9;
        let x_1393 : vec3<f32> = vec3<f32>(x_1392.x, x_1392.z, x_1392.w);
        let x_1394 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1393.x, x_1394.y, x_1393.y, x_1393.z);
        let x_1396 : vec2<f32> = u_xlat23;
        let x_1399 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1402 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1396.x, x_1396.y, x_1396.x, x_1396.y) * vec4<f32>(x_1399.x, x_1399.y, x_1399.x, x_1399.y)) + vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1402.y));
        let x_1406 : vec2<f32> = u_xlat23;
        let x_1408 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1406 * vec2<f32>(x_1408.x, x_1408.y)) + vec2<f32>(x_1411.w, x_1411.y));
        let x_1415 : f32 = u_xlat6.x;
        u_xlat8.x = x_1415;
        let x_1417 : vec2<f32> = u_xlat23;
        let x_1419 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1422 : vec4<f32> = u_xlat8;
        u_xlat23 = ((x_1417 * vec2<f32>(x_1419.x, x_1419.y)) + vec2<f32>(x_1422.x, x_1422.y));
        let x_1426 : vec4<f32> = u_xlat5;
        let x_1428 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1426.x, x_1426.x, x_1426.x, x_1426.x) * x_1428);
        let x_1431 : vec4<f32> = u_xlat5;
        let x_1433 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1431.y, x_1431.y, x_1431.y, x_1431.y) * x_1433);
        let x_1436 : vec4<f32> = u_xlat5;
        let x_1438 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1436.z, x_1436.z, x_1436.z, x_1436.z) * x_1438);
        let x_1440 : vec4<f32> = u_xlat5;
        let x_1442 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1440.w, x_1440.w, x_1440.w, x_1440.w) * x_1442);
        let x_1445 : vec4<f32> = u_xlat10;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = u_xlat22.z;
        txVec13 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec13;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1455.xy, x_1455.z);
        u_xlat61 = x_1457;
        let x_1459 : vec4<f32> = u_xlat10;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.z, x_1459.w);
        let x_1462 : f32 = u_xlat22.z;
        txVec14 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec14;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat6.x = x_1471;
        let x_1474 : f32 = u_xlat6.x;
        let x_1476 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1474 * x_1476);
        let x_1480 : f32 = u_xlat16.x;
        let x_1481 : f32 = u_xlat61;
        let x_1484 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1480 * x_1481) + x_1484);
        let x_1487 : vec4<f32> = u_xlat11;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.x, x_1487.y);
        let x_1490 : f32 = u_xlat22.z;
        txVec15 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec15;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
        u_xlat6.x = x_1499;
        let x_1502 : f32 = u_xlat16.z;
        let x_1504 : f32 = u_xlat6.x;
        let x_1506 : f32 = u_xlat61;
        u_xlat61 = ((x_1502 * x_1504) + x_1506);
        let x_1509 : vec4<f32> = u_xlat13;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.x, x_1509.y);
        let x_1512 : f32 = u_xlat22.z;
        txVec16 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec16;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat6.x = x_1521;
        let x_1524 : f32 = u_xlat16.w;
        let x_1526 : f32 = u_xlat6.x;
        let x_1528 : f32 = u_xlat61;
        u_xlat61 = ((x_1524 * x_1526) + x_1528);
        let x_1531 : vec4<f32> = u_xlat12;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = u_xlat22.z;
        txVec17 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec17;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
        u_xlat6.x = x_1543;
        let x_1546 : f32 = u_xlat17.x;
        let x_1548 : f32 = u_xlat6.x;
        let x_1550 : f32 = u_xlat61;
        u_xlat61 = ((x_1546 * x_1548) + x_1550);
        let x_1553 : vec4<f32> = u_xlat12;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.z, x_1553.w);
        let x_1556 : f32 = u_xlat22.z;
        txVec18 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec18;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1563.xy, x_1563.z);
        u_xlat6.x = x_1565;
        let x_1568 : f32 = u_xlat17.y;
        let x_1570 : f32 = u_xlat6.x;
        let x_1572 : f32 = u_xlat61;
        u_xlat61 = ((x_1568 * x_1570) + x_1572);
        let x_1575 : vec2<f32> = u_xlat49;
        let x_1577 : f32 = u_xlat22.z;
        txVec19 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec19;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat6.x = x_1586;
        let x_1589 : f32 = u_xlat17.z;
        let x_1591 : f32 = u_xlat6.x;
        let x_1593 : f32 = u_xlat61;
        u_xlat61 = ((x_1589 * x_1591) + x_1593);
        let x_1596 : vec4<f32> = u_xlat13;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.z, x_1596.w);
        let x_1599 : f32 = u_xlat22.z;
        txVec20 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec20;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1606.xy, x_1606.z);
        u_xlat6.x = x_1608;
        let x_1611 : f32 = u_xlat17.w;
        let x_1613 : f32 = u_xlat6.x;
        let x_1615 : f32 = u_xlat61;
        u_xlat61 = ((x_1611 * x_1613) + x_1615);
        let x_1618 : vec4<f32> = u_xlat14;
        let x_1619 : vec2<f32> = vec2<f32>(x_1618.x, x_1618.y);
        let x_1621 : f32 = u_xlat22.z;
        txVec21 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec21;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1628.xy, x_1628.z);
        u_xlat6.x = x_1630;
        let x_1633 : f32 = u_xlat18.x;
        let x_1635 : f32 = u_xlat6.x;
        let x_1637 : f32 = u_xlat61;
        u_xlat61 = ((x_1633 * x_1635) + x_1637);
        let x_1640 : vec4<f32> = u_xlat14;
        let x_1641 : vec2<f32> = vec2<f32>(x_1640.z, x_1640.w);
        let x_1643 : f32 = u_xlat22.z;
        txVec22 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec22;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
        u_xlat6.x = x_1652;
        let x_1655 : f32 = u_xlat18.y;
        let x_1657 : f32 = u_xlat6.x;
        let x_1659 : f32 = u_xlat61;
        u_xlat61 = ((x_1655 * x_1657) + x_1659);
        let x_1662 : vec2<f32> = u_xlat25;
        let x_1664 : f32 = u_xlat22.z;
        txVec23 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1671 : vec3<f32> = txVec23;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1671.xy, x_1671.z);
        u_xlat6.x = x_1673;
        let x_1676 : f32 = u_xlat18.z;
        let x_1678 : f32 = u_xlat6.x;
        let x_1680 : f32 = u_xlat61;
        u_xlat61 = ((x_1676 * x_1678) + x_1680);
        let x_1683 : vec2<f32> = u_xlat15;
        let x_1685 : f32 = u_xlat22.z;
        txVec24 = vec3<f32>(x_1683.x, x_1683.y, x_1685);
        let x_1692 : vec3<f32> = txVec24;
        let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1692.xy, x_1692.z);
        u_xlat6.x = x_1694;
        let x_1697 : f32 = u_xlat18.w;
        let x_1699 : f32 = u_xlat6.x;
        let x_1701 : f32 = u_xlat61;
        u_xlat61 = ((x_1697 * x_1699) + x_1701);
        let x_1704 : vec4<f32> = u_xlat9;
        let x_1705 : vec2<f32> = vec2<f32>(x_1704.x, x_1704.y);
        let x_1707 : f32 = u_xlat22.z;
        txVec25 = vec3<f32>(x_1705.x, x_1705.y, x_1707);
        let x_1714 : vec3<f32> = txVec25;
        let x_1716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1714.xy, x_1714.z);
        u_xlat6.x = x_1716;
        let x_1719 : f32 = u_xlat5.x;
        let x_1721 : f32 = u_xlat6.x;
        let x_1723 : f32 = u_xlat61;
        u_xlat61 = ((x_1719 * x_1721) + x_1723);
        let x_1726 : vec4<f32> = u_xlat9;
        let x_1727 : vec2<f32> = vec2<f32>(x_1726.z, x_1726.w);
        let x_1729 : f32 = u_xlat22.z;
        txVec26 = vec3<f32>(x_1727.x, x_1727.y, x_1729);
        let x_1736 : vec3<f32> = txVec26;
        let x_1738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1736.xy, x_1736.z);
        u_xlat5.x = x_1738;
        let x_1741 : f32 = u_xlat5.y;
        let x_1743 : f32 = u_xlat5.x;
        let x_1745 : f32 = u_xlat61;
        u_xlat61 = ((x_1741 * x_1743) + x_1745);
        let x_1748 : vec2<f32> = u_xlat46;
        let x_1750 : f32 = u_xlat22.z;
        txVec27 = vec3<f32>(x_1748.x, x_1748.y, x_1750);
        let x_1757 : vec3<f32> = txVec27;
        let x_1759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1757.xy, x_1757.z);
        u_xlat5.x = x_1759;
        let x_1762 : f32 = u_xlat5.z;
        let x_1764 : f32 = u_xlat5.x;
        let x_1766 : f32 = u_xlat61;
        u_xlat61 = ((x_1762 * x_1764) + x_1766);
        let x_1769 : vec2<f32> = u_xlat23;
        let x_1771 : f32 = u_xlat22.z;
        txVec28 = vec3<f32>(x_1769.x, x_1769.y, x_1771);
        let x_1778 : vec3<f32> = txVec28;
        let x_1780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1778.xy, x_1778.z);
        u_xlat23.x = x_1780;
        let x_1783 : f32 = u_xlat5.w;
        let x_1785 : f32 = u_xlat23.x;
        let x_1787 : f32 = u_xlat61;
        u_xlat4.x = ((x_1783 * x_1785) + x_1787);
      }
    }
  } else {
    let x_1792 : vec3<f32> = u_xlat22;
    let x_1793 : vec2<f32> = vec2<f32>(x_1792.x, x_1792.y);
    let x_1795 : f32 = u_xlat22.z;
    txVec29 = vec3<f32>(x_1793.x, x_1793.y, x_1795);
    let x_1802 : vec3<f32> = txVec29;
    let x_1804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1802.xy, x_1802.z);
    u_xlat4.x = x_1804;
  }
  let x_1807 : f32 = x_367.x_MainLightShadowParams.x;
  u_xlat22.x = (-(x_1807) + 1.0f);
  let x_1812 : f32 = u_xlat4.x;
  let x_1814 : f32 = x_367.x_MainLightShadowParams.x;
  let x_1817 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_1812 * x_1814) + x_1817);
  let x_1822 : f32 = u_xlat22.z;
  u_xlatb41 = (0.0f >= x_1822);
  let x_1826 : f32 = u_xlat22.z;
  u_xlatb60 = (x_1826 >= 1.0f);
  let x_1828 : bool = u_xlatb60;
  let x_1829 : bool = u_xlatb41;
  u_xlatb41 = (x_1828 | x_1829);
  let x_1831 : bool = u_xlatb41;
  if (x_1831) {
    x_1833 = 1.0f;
  } else {
    let x_1838 : f32 = u_xlat22.x;
    x_1833 = x_1838;
  }
  let x_1839 : f32 = x_1833;
  u_xlat22.x = x_1839;
  let x_1842 : vec3<f32> = u_xlat0;
  let x_1845 : vec4<f32> = x_39.x_ScreenParams;
  u_xlat41 = (vec2<f32>(x_1842.x, x_1842.y) * vec2<f32>(x_1845.x, x_1845.y));
  let x_1848 : vec2<f32> = u_xlat41;
  let x_1850 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
  u_xlat41 = (x_1848 * vec2<f32>(x_1850.x, x_1850.y));
  let x_1853 : f32 = u_xlat38;
  let x_1857 : vec2<f32> = (vec2<f32>(x_1853, x_1853) * vec2<f32>(20.0f, 0.25f));
  let x_1858 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1857.x, x_1857.y, x_1858.z, x_1858.w);
  let x_1860 : vec4<f32> = u_xlat4;
  let x_1862 : vec3<f32> = vs_TEXCOORD2;
  let x_1864 : vec3<f32> = (vec3<f32>(x_1860.y, x_1860.y, x_1860.y) * -(x_1862));
  let x_1865 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1864.x, x_1864.y, x_1864.z, x_1865.w);
  let x_1868 : f32 = x_39.x_Time.x;
  u_xlat6.x = fract(x_1868);
  let x_1872 : f32 = x_39.x_Time.z;
  u_xlat6.y = fract(-(x_1872));
  let x_1876 : vec2<f32> = u_xlat41;
  u_xlat42 = x_1876;
  u_xlat62 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1885 : u32 = u_xlatu_loop_1;
    if ((x_1885 < 4u)) {
    } else {
      break;
    }
    let x_1888 : vec4<f32> = u_xlat6;
    let x_1890 : vec2<f32> = u_xlat42;
    u_xlat42 = (vec2<f32>(x_1888.x, x_1888.y) + x_1890);
    let x_1893 : u32 = u_xlatu_loop_1;
    u_xlat63 = f32(x_1893);
    let x_1895 : f32 = u_xlat63;
    let x_1898 : vec4<f32> = x_39.x_ScreenParams;
    let x_1901 : vec2<f32> = u_xlat42;
    let x_1902 : vec2<f32> = ((vec2<f32>(x_1895, x_1895) * vec2<f32>(x_1898.x, x_1898.y)) + x_1901);
    let x_1903 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1902.x, x_1902.y, x_1903.z, x_1903.w);
    let x_1910 : vec4<f32> = u_xlat7;
    let x_1913 : f32 = x_39.x_GlobalMipBias.x;
    let x_1914 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, vec2<f32>(x_1910.x, x_1910.y), x_1913);
    let x_1915 : vec3<f32> = vec3<f32>(x_1914.x, x_1914.y, x_1914.z);
    let x_1916 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
    let x_1918 : vec4<f32> = u_xlat7;
    let x_1923 : vec3<f32> = ((vec3<f32>(x_1918.x, x_1918.z, x_1918.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_1924 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
    let x_1926 : vec4<f32> = u_xlat4;
    let x_1928 : vec4<f32> = u_xlat7;
    let x_1930 : vec3<f32> = (vec3<f32>(x_1926.y, x_1926.y, x_1926.y) * vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
    let x_1931 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1930.x, x_1930.y, x_1931.z, x_1930.z);
    let x_1933 : f32 = u_xlat63;
    let x_1935 : vec4<f32> = u_xlat7;
    let x_1937 : vec3<f32> = (vec3<f32>(x_1933, x_1933, x_1933) * vec3<f32>(x_1935.x, x_1935.y, x_1935.w));
    let x_1938 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1937.x, x_1937.y, x_1938.z, x_1937.z);
    let x_1940 : vec4<f32> = u_xlat7;
    let x_1945 : vec3<f32> = vs_TEXCOORD1;
    let x_1946 : vec3<f32> = ((vec3<f32>(x_1940.x, x_1940.y, x_1940.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_1945);
    let x_1947 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1946.x, x_1946.y, x_1947.z, x_1946.z);
    let x_1949 : f32 = u_xlat63;
    let x_1951 : f32 = u_xlat7.z;
    u_xlat63 = (x_1949 + x_1951);
    let x_1953 : vec4<f32> = u_xlat5;
    let x_1955 : f32 = u_xlat63;
    let x_1958 : vec4<f32> = u_xlat7;
    let x_1960 : vec3<f32> = ((vec3<f32>(x_1953.x, x_1953.y, x_1953.z) * vec3<f32>(x_1955, x_1955, x_1955)) + vec3<f32>(x_1958.x, x_1958.y, x_1958.w));
    let x_1961 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
    let x_1963 : vec4<f32> = u_xlat7;
    let x_1966 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
    let x_1969 : vec3<f32> = (vec3<f32>(x_1963.x, x_1963.y, x_1963.z) + -(vec3<f32>(x_1966.x, x_1966.y, x_1966.z)));
    let x_1970 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
    let x_1972 : vec4<f32> = u_xlat7;
    let x_1975 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
    let x_1978 : vec3<f32> = (vec3<f32>(x_1972.x, x_1972.y, x_1972.z) + -(vec3<f32>(x_1975.x, x_1975.y, x_1975.z)));
    let x_1979 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
    let x_1981 : vec4<f32> = u_xlat7;
    let x_1984 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
    let x_1987 : vec3<f32> = (vec3<f32>(x_1981.x, x_1981.y, x_1981.z) + -(vec3<f32>(x_1984.x, x_1984.y, x_1984.z)));
    let x_1988 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
    let x_1990 : vec4<f32> = u_xlat7;
    let x_1993 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
    let x_1996 : vec3<f32> = (vec3<f32>(x_1990.x, x_1990.y, x_1990.z) + -(vec3<f32>(x_1993.x, x_1993.y, x_1993.z)));
    let x_1997 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1996.x, x_1996.y, x_1996.z, x_1997.w);
    let x_1999 : vec4<f32> = u_xlat8;
    let x_2001 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_1999.x, x_1999.y, x_1999.z), vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
    let x_2005 : vec4<f32> = u_xlat9;
    let x_2007 : vec4<f32> = u_xlat9;
    u_xlat8.y = dot(vec3<f32>(x_2005.x, x_2005.y, x_2005.z), vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
    let x_2011 : vec4<f32> = u_xlat10;
    let x_2013 : vec4<f32> = u_xlat10;
    u_xlat8.z = dot(vec3<f32>(x_2011.x, x_2011.y, x_2011.z), vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
    let x_2017 : vec4<f32> = u_xlat11;
    let x_2019 : vec4<f32> = u_xlat11;
    u_xlat8.w = dot(vec3<f32>(x_2017.x, x_2017.y, x_2017.z), vec3<f32>(x_2019.x, x_2019.y, x_2019.z));
    let x_2024 : vec4<f32> = u_xlat8;
    let x_2026 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
    u_xlatb8 = (x_2024 < x_2026);
    let x_2029 : bool = u_xlatb8.x;
    u_xlat9.x = select(0.0f, 1.0f, x_2029);
    let x_2033 : bool = u_xlatb8.y;
    u_xlat9.y = select(0.0f, 1.0f, x_2033);
    let x_2037 : bool = u_xlatb8.z;
    u_xlat9.z = select(0.0f, 1.0f, x_2037);
    let x_2041 : bool = u_xlatb8.w;
    u_xlat9.w = select(0.0f, 1.0f, x_2041);
    let x_2045 : bool = u_xlatb8.x;
    u_xlat8.x = select(-0.0f, -1.0f, x_2045);
    let x_2049 : bool = u_xlatb8.y;
    u_xlat8.y = select(-0.0f, -1.0f, x_2049);
    let x_2053 : bool = u_xlatb8.z;
    u_xlat8.z = select(-0.0f, -1.0f, x_2053);
    let x_2056 : vec4<f32> = u_xlat8;
    let x_2058 : vec4<f32> = u_xlat9;
    let x_2060 : vec3<f32> = (vec3<f32>(x_2056.x, x_2056.y, x_2056.z) + vec3<f32>(x_2058.y, x_2058.z, x_2058.w));
    let x_2061 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2061.w);
    let x_2063 : vec4<f32> = u_xlat8;
    let x_2065 : vec3<f32> = max(vec3<f32>(x_2063.x, x_2063.y, x_2063.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_2066 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2066.x, x_2065.x, x_2065.y, x_2065.z);
    let x_2068 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_2068, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_2070 : f32 = u_xlat63;
    u_xlat63 = (-(x_2070) + 4.0f);
    let x_2074 : f32 = u_xlat63;
    u_xlatu63 = u32(x_2074);
    let x_2077 : u32 = u_xlatu63;
    u_xlati63 = (bitcast<i32>(x_2077) << bitcast<u32>(2i));
    let x_2080 : vec4<f32> = u_xlat7;
    let x_2082 : i32 = u_xlati63;
    let x_2085 : i32 = u_xlati63;
    let x_2089 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_2082 + 1i) / 4i)][((x_2085 + 1i) % 4i)];
    let x_2091 : vec3<f32> = (vec3<f32>(x_2080.y, x_2080.y, x_2080.y) * vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
    let x_2092 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
    let x_2094 : i32 = u_xlati63;
    let x_2096 : i32 = u_xlati63;
    let x_2099 : vec4<f32> = x_367.x_MainLightWorldToShadow[(x_2094 / 4i)][(x_2096 % 4i)];
    let x_2101 : vec4<f32> = u_xlat7;
    let x_2104 : vec4<f32> = u_xlat8;
    let x_2106 : vec3<f32> = ((vec3<f32>(x_2099.x, x_2099.y, x_2099.z) * vec3<f32>(x_2101.x, x_2101.x, x_2101.x)) + vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
    let x_2107 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2106.x, x_2106.y, x_2107.z, x_2106.z);
    let x_2109 : i32 = u_xlati63;
    let x_2112 : i32 = u_xlati63;
    let x_2116 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_2109 + 2i) / 4i)][((x_2112 + 2i) % 4i)];
    let x_2118 : vec4<f32> = u_xlat7;
    let x_2121 : vec4<f32> = u_xlat7;
    let x_2123 : vec3<f32> = ((vec3<f32>(x_2116.x, x_2116.y, x_2116.z) * vec3<f32>(x_2118.z, x_2118.z, x_2118.z)) + vec3<f32>(x_2121.x, x_2121.y, x_2121.w));
    let x_2124 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
    let x_2126 : vec4<f32> = u_xlat7;
    let x_2128 : i32 = u_xlati63;
    let x_2131 : i32 = u_xlati63;
    let x_2135 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_2128 + 3i) / 4i)][((x_2131 + 3i) % 4i)];
    let x_2137 : vec3<f32> = (vec3<f32>(x_2126.x, x_2126.y, x_2126.z) + vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
    let x_2138 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2137.x, x_2137.y, x_2137.z, x_2138.w);
    let x_2141 : vec4<f32> = u_xlat7;
    let x_2142 : vec2<f32> = vec2<f32>(x_2141.x, x_2141.y);
    let x_2144 : f32 = u_xlat7.z;
    txVec30 = vec3<f32>(x_2142.x, x_2142.y, x_2144);
    let x_2151 : vec3<f32> = txVec30;
    let x_2153 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2151.xy, x_2151.z);
    u_xlat63 = x_2153;
    let x_2154 : f32 = u_xlat62;
    let x_2155 : f32 = u_xlat63;
    u_xlat62 = (x_2154 + x_2155);

    continuing {
      let x_2157 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2157 + bitcast<u32>(1i));
    }
  }
  let x_2159 : vec3<f32> = vs_TEXCOORD1;
  let x_2162 : vec3<f32> = (x_2159 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_2163 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
  let x_2165 : vec3<f32> = vs_TEXCOORD1;
  let x_2168 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
  let x_2171 : vec3<f32> = ((x_2165 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2168.x, x_2168.y, x_2168.z)));
  let x_2172 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2174 : vec3<f32> = vs_TEXCOORD1;
  let x_2177 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
  let x_2180 : vec3<f32> = ((x_2174 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2177.x, x_2177.y, x_2177.z)));
  let x_2181 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
  let x_2183 : vec3<f32> = vs_TEXCOORD1;
  let x_2186 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
  let x_2189 : vec3<f32> = ((x_2183 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2186.x, x_2186.y, x_2186.z)));
  let x_2190 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2190.w);
  let x_2192 : vec3<f32> = vs_TEXCOORD1;
  let x_2195 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
  let x_2198 : vec3<f32> = ((x_2192 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2195.x, x_2195.y, x_2195.z)));
  let x_2199 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2198.x, x_2198.y, x_2198.z, x_2199.w);
  let x_2201 : vec4<f32> = u_xlat6;
  let x_2203 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2201.x, x_2201.y, x_2201.z), vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
  let x_2207 : vec4<f32> = u_xlat7;
  let x_2209 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_2207.x, x_2207.y, x_2207.z), vec3<f32>(x_2209.x, x_2209.y, x_2209.z));
  let x_2213 : vec4<f32> = u_xlat8;
  let x_2215 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_2213.x, x_2213.y, x_2213.z), vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
  let x_2219 : vec4<f32> = u_xlat9;
  let x_2221 : vec4<f32> = u_xlat9;
  u_xlat6.w = dot(vec3<f32>(x_2219.x, x_2219.y, x_2219.z), vec3<f32>(x_2221.x, x_2221.y, x_2221.z));
  let x_2226 : vec4<f32> = u_xlat6;
  let x_2228 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_2226 < x_2228);
  let x_2231 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_2231);
  let x_2235 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_2235);
  let x_2239 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_2239);
  let x_2243 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_2243);
  let x_2247 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_2247);
  let x_2251 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_2251);
  let x_2255 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_2255);
  let x_2258 : vec4<f32> = u_xlat6;
  let x_2260 : vec4<f32> = u_xlat7;
  let x_2262 : vec3<f32> = (vec3<f32>(x_2258.x, x_2258.y, x_2258.z) + vec3<f32>(x_2260.y, x_2260.z, x_2260.w));
  let x_2263 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
  let x_2265 : vec4<f32> = u_xlat6;
  let x_2267 : vec3<f32> = max(vec3<f32>(x_2265.x, x_2265.y, x_2265.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2268 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2268.x, x_2267.x, x_2267.y, x_2267.z);
  let x_2270 : vec4<f32> = u_xlat7;
  u_xlat41.x = dot(x_2270, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_2274 : f32 = u_xlat41.x;
  u_xlat41.x = (-(x_2274) + 4.0f);
  let x_2280 : f32 = u_xlat41.x;
  u_xlatu41 = u32(x_2280);
  let x_2283 : u32 = u_xlatu41;
  u_xlati41 = (bitcast<i32>(x_2283) << bitcast<u32>(2i));
  let x_2288 : f32 = u_xlat5.y;
  let x_2289 : i32 = u_xlati41;
  let x_2292 : i32 = u_xlati41;
  let x_2296 : f32 = x_367.x_MainLightWorldToShadow[((x_2289 + 1i) / 4i)][((x_2292 + 1i) % 4i)].z;
  u_xlat60 = (x_2288 * x_2296);
  let x_2298 : i32 = u_xlati41;
  let x_2300 : i32 = u_xlati41;
  let x_2303 : f32 = x_367.x_MainLightWorldToShadow[(x_2298 / 4i)][(x_2300 % 4i)].z;
  let x_2305 : f32 = u_xlat5.x;
  let x_2307 : f32 = u_xlat60;
  u_xlat60 = ((x_2303 * x_2305) + x_2307);
  let x_2309 : i32 = u_xlati41;
  let x_2312 : i32 = u_xlati41;
  let x_2316 : f32 = x_367.x_MainLightWorldToShadow[((x_2309 + 2i) / 4i)][((x_2312 + 2i) % 4i)].z;
  let x_2318 : f32 = u_xlat5.z;
  let x_2320 : f32 = u_xlat60;
  u_xlat60 = ((x_2316 * x_2318) + x_2320);
  let x_2322 : f32 = u_xlat60;
  let x_2323 : i32 = u_xlati41;
  let x_2326 : i32 = u_xlati41;
  let x_2330 : f32 = x_367.x_MainLightWorldToShadow[((x_2323 + 3i) / 4i)][((x_2326 + 3i) % 4i)].z;
  u_xlat41.x = (x_2322 + x_2330);
  let x_2334 : f32 = u_xlat41.x;
  u_xlatb60 = (0.0f >= x_2334);
  let x_2337 : f32 = u_xlat41.x;
  u_xlatb41 = (x_2337 >= 1.0f);
  let x_2339 : bool = u_xlatb41;
  let x_2340 : bool = u_xlatb60;
  u_xlatb41 = (x_2339 | x_2340);
  let x_2342 : f32 = u_xlat62;
  u_xlat60 = (x_2342 * 0.25f);
  let x_2344 : bool = u_xlatb41;
  let x_2345 : f32 = u_xlat60;
  u_xlat41.x = select(x_2345, 1.0f, x_2344);
  u_xlat2.w = 1.0f;
  let x_2355 : vec4<f32> = x_2352.unity_SHAr;
  let x_2356 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_2355, x_2356);
  let x_2361 : vec4<f32> = x_2352.unity_SHAg;
  let x_2362 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_2361, x_2362);
  let x_2367 : vec4<f32> = x_2352.unity_SHAb;
  let x_2368 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_2367, x_2368);
  let x_2371 : vec4<f32> = u_xlat2;
  let x_2373 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_2371.y, x_2371.z, x_2371.z, x_2371.x) * vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2373.z));
  let x_2378 : vec4<f32> = x_2352.unity_SHBr;
  let x_2379 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_2378, x_2379);
  let x_2384 : vec4<f32> = x_2352.unity_SHBg;
  let x_2385 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_2384, x_2385);
  let x_2390 : vec4<f32> = x_2352.unity_SHBb;
  let x_2391 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_2390, x_2391);
  let x_2396 : f32 = u_xlat2.y;
  let x_2398 : f32 = u_xlat2.y;
  u_xlat59 = (x_2396 * x_2398);
  let x_2401 : f32 = u_xlat2.x;
  let x_2403 : f32 = u_xlat2.x;
  let x_2405 : f32 = u_xlat59;
  u_xlat59 = ((x_2401 * x_2403) + -(x_2405));
  let x_2410 : vec4<f32> = x_2352.unity_SHC;
  let x_2412 : f32 = u_xlat59;
  let x_2415 : vec4<f32> = u_xlat7;
  let x_2417 : vec3<f32> = ((vec3<f32>(x_2410.x, x_2410.y, x_2410.z) * vec3<f32>(x_2412, x_2412, x_2412)) + vec3<f32>(x_2415.x, x_2415.y, x_2415.z));
  let x_2418 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
  let x_2420 : vec4<f32> = u_xlat5;
  let x_2422 : vec4<f32> = u_xlat6;
  let x_2424 : vec3<f32> = (vec3<f32>(x_2420.x, x_2420.y, x_2420.z) + vec3<f32>(x_2422.x, x_2422.y, x_2422.z));
  let x_2425 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2425.w);
  let x_2427 : vec4<f32> = u_xlat5;
  let x_2429 : vec3<f32> = max(vec3<f32>(x_2427.x, x_2427.y, x_2427.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2430 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
  let x_2432 : vec3<f32> = vs_TEXCOORD2;
  let x_2434 : vec4<f32> = x_39.x_MainLightPosition;
  u_xlat59 = dot(x_2432, -(vec3<f32>(x_2434.x, x_2434.y, x_2434.z)));
  let x_2438 : f32 = u_xlat59;
  let x_2440 : f32 = vs_TEXCOORD5.z;
  u_xlat59 = (x_2438 * x_2440);
  let x_2442 : f32 = u_xlat59;
  let x_2443 : f32 = u_xlat59;
  u_xlat60 = (x_2442 * x_2443);
  let x_2445 : f32 = u_xlat59;
  let x_2446 : f32 = u_xlat60;
  u_xlat59 = (x_2445 * x_2446);
  let x_2448 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2448, 0.0f, 1.0f);
  let x_2450 : f32 = u_xlat59;
  u_xlat59 = (x_2450 * 5.0f);
  let x_2453 : f32 = u_xlat59;
  let x_2456 : vec4<f32> = x_39.x_MainLightColor;
  let x_2458 : vec3<f32> = (vec3<f32>(x_2453, x_2453, x_2453) * vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
  let x_2459 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
  let x_2462 : vec4<f32> = x_39.x_MainLightPosition;
  let x_2465 : vec4<f32> = x_39.x_MainLightColor;
  let x_2468 : vec4<f32> = u_xlat6;
  let x_2470 : vec3<f32> = ((vec3<f32>(x_2462.y, x_2462.y, x_2462.y) * vec3<f32>(x_2465.x, x_2465.y, x_2465.z)) + vec3<f32>(x_2468.x, x_2468.y, x_2468.z));
  let x_2471 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2470.x, x_2470.y, x_2470.z, x_2471.w);
  let x_2473 : vec4<f32> = u_xlat6;
  let x_2475 : vec2<f32> = u_xlat41;
  let x_2478 : vec4<f32> = u_xlat5;
  let x_2480 : vec3<f32> = ((vec3<f32>(x_2473.x, x_2473.y, x_2473.z) * vec3<f32>(x_2475.x, x_2475.x, x_2475.x)) + vec3<f32>(x_2478.x, x_2478.y, x_2478.z));
  let x_2481 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
  let x_2488 : vec4<f32> = vs_TEXCOORD0;
  let x_2491 : f32 = x_39.x_GlobalMipBias.x;
  let x_2492 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_2488.z, x_2488.w), x_2491);
  let x_2493 : vec3<f32> = vec3<f32>(x_2492.x, x_2492.y, x_2492.z);
  let x_2494 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2493.x, x_2493.y, x_2493.z, x_2494.w);
  let x_2497 : f32 = u_xlat4.x;
  u_xlat4.x = x_2497;
  let x_2500 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_2500, 0.0f, 1.0f);
  let x_2504 : f32 = vs_TEXCOORD5.z;
  u_xlat59 = (x_2504 + -0.375f);
  let x_2507 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2507, 0.0f, 1.0f);
  let x_2509 : f32 = u_xlat38;
  u_xlat60 = ((-(x_2509) * 4.0f) + 1.0f);
  let x_2513 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2513, 0.0f, 1.0f);
  let x_2515 : f32 = u_xlat57;
  let x_2516 : f32 = u_xlat38;
  u_xlat57 = min(x_2515, x_2516);
  let x_2518 : f32 = u_xlat57;
  u_xlat57 = ((-(x_2518) * 0.5f) + 0.75f);
  let x_2523 : f32 = u_xlat60;
  let x_2525 : f32 = u_xlat57;
  u_xlat57 = ((x_2523 * 0.5f) + x_2525);
  let x_2527 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2527, 0.0f, 1.0f);
  let x_2530 : f32 = u_xlat4.x;
  let x_2531 : f32 = u_xlat57;
  u_xlat57 = (x_2530 * x_2531);
  let x_2533 : f32 = u_xlat57;
  let x_2534 : f32 = u_xlat59;
  u_xlat57 = max(x_2533, x_2534);
  let x_2537 : f32 = u_xlat1.x;
  let x_2539 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2537 + x_2539);
  let x_2542 : f32 = u_xlat57;
  let x_2544 : f32 = u_xlat1.x;
  u_xlat8.x = max(x_2542, x_2544);
  u_xlat8.y = 0.66000002622604370117f;
  let x_2554 : vec4<f32> = u_xlat8;
  let x_2557 : f32 = x_39.x_GlobalMipBias.x;
  let x_2558 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2554.x, x_2554.y), x_2557);
  let x_2559 : vec3<f32> = vec3<f32>(x_2558.x, x_2558.y, x_2558.z);
  let x_2560 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2559.x, x_2560.y, x_2559.y, x_2559.z);
  let x_2562 : vec4<f32> = u_xlat4;
  let x_2564 : vec4<f32> = u_xlat7;
  let x_2566 : vec3<f32> = (vec3<f32>(x_2562.x, x_2562.z, x_2562.w) * vec3<f32>(x_2564.x, x_2564.y, x_2564.z));
  let x_2567 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2566.x, x_2567.y, x_2566.y, x_2566.z);
  let x_2569 : vec4<f32> = u_xlat4;
  let x_2571 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(vec3<f32>(x_2569.x, x_2569.z, x_2569.w), vec3<f32>(x_2571.x, x_2571.z, x_2571.w));
  let x_2574 : f32 = u_xlat57;
  u_xlat57 = sqrt(x_2574);
  let x_2576 : f32 = u_xlat57;
  u_xlat57 = ((x_2576 * 1.5f) + -0.10000000149011611938f);
  let x_2580 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2580, 0.0f, 1.0f);
  let x_2582 : vec3<f32> = u_xlat22;
  let x_2585 : vec4<f32> = x_39.x_MainLightColor;
  let x_2588 : vec4<f32> = u_xlat5;
  let x_2590 : vec3<f32> = ((vec3<f32>(x_2582.x, x_2582.x, x_2582.x) * vec3<f32>(x_2585.x, x_2585.y, x_2585.z)) + vec3<f32>(x_2588.x, x_2588.y, x_2588.z));
  let x_2591 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2590.x, x_2591.y, x_2590.y, x_2590.z);
  let x_2593 : vec3<f32> = vs_TEXCOORD2;
  let x_2595 : vec4<f32> = x_39.x_MainLightPosition;
  let x_2597 : vec3<f32> = (x_2593 + vec3<f32>(x_2595.x, x_2595.y, x_2595.z));
  let x_2598 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2598.w);
  let x_2600 : vec4<f32> = u_xlat5;
  let x_2602 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_2600.x, x_2600.y, x_2600.z), vec3<f32>(x_2602.x, x_2602.y, x_2602.z));
  let x_2607 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2607, 1.17549435e-38f);
  let x_2612 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_2612);
  let x_2615 : vec3<f32> = u_xlat1;
  let x_2617 : vec4<f32> = u_xlat5;
  let x_2619 : vec3<f32> = (vec3<f32>(x_2615.x, x_2615.x, x_2615.x) * vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
  let x_2620 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
  let x_2622 : vec4<f32> = u_xlat2;
  let x_2624 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_2622.x, x_2622.y, x_2622.z), vec3<f32>(x_2624.x, x_2624.y, x_2624.z));
  let x_2629 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2629, 0.0f, 1.0f);
  let x_2633 : vec4<f32> = x_39.x_MainLightPosition;
  let x_2635 : vec4<f32> = u_xlat5;
  u_xlat59 = dot(vec3<f32>(x_2633.x, x_2633.y, x_2633.z), vec3<f32>(x_2635.x, x_2635.y, x_2635.z));
  let x_2638 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2638, 0.0f, 1.0f);
  let x_2641 : f32 = u_xlat1.x;
  let x_2643 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2641 * x_2643);
  let x_2647 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2647 * -0.99993896484375f) + 1.00001001358032226562f);
  let x_2653 : f32 = u_xlat59;
  let x_2654 : f32 = u_xlat59;
  u_xlat59 = (x_2653 * x_2654);
  let x_2657 : f32 = u_xlat1.x;
  let x_2659 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2657 * x_2659);
  let x_2662 : f32 = u_xlat59;
  u_xlat59 = max(x_2662, 0.10000000149011611938f);
  let x_2665 : f32 = u_xlat1.x;
  let x_2666 : f32 = u_xlat59;
  u_xlat1.x = (x_2665 * x_2666);
  let x_2670 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2670 * 2.03125f);
  let x_2676 : f32 = u_xlat1.x;
  u_xlat1.x = (0.00006103515625f / x_2676);
  let x_2680 : f32 = u_xlat41.x;
  let x_2682 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2680 * x_2682);
  let x_2686 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2686 * 0.03999999910593032837f);
  let x_2690 : vec3<f32> = u_xlat1;
  let x_2693 : vec4<f32> = x_39.x_MainLightColor;
  u_xlat22 = (vec3<f32>(x_2690.x, x_2690.x, x_2690.x) * vec3<f32>(x_2693.x, x_2693.y, x_2693.z));
  let x_2697 : f32 = x_39.x_AdditionalLightsCount.x;
  let x_2699 : f32 = x_2352.unity_LightData.y;
  u_xlat1.x = min(x_2697, x_2699);
  let x_2704 : f32 = u_xlat1.x;
  u_xlatu1 = bitcast<u32>(i32(x_2704));
  let x_2707 : vec4<f32> = u_xlat6;
  let x_2708 : vec3<f32> = vec3<f32>(x_2707.x, x_2707.y, x_2707.z);
  let x_2709 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2709.w);
  let x_2711 : vec3<f32> = u_xlat22;
  let x_2712 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2711.x, x_2711.y, x_2711.z, x_2712.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_2720 : u32 = u_xlatu_loop_2;
    let x_2721 : u32 = u_xlatu1;
    if ((x_2720 < x_2721)) {
    } else {
      break;
    }
    let x_2724 : u32 = u_xlatu_loop_2;
    u_xlatu62 = (x_2724 >> 2u);
    let x_2726 : u32 = u_xlatu_loop_2;
    u_xlati63 = bitcast<i32>((x_2726 & 3u));
    let x_2729 : u32 = u_xlatu62;
    let x_2732 : vec4<f32> = x_2352.unity_LightIndices[bitcast<i32>(x_2729)];
    let x_2741 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2746 : vec4<u32> = indexable[x_2741];
    u_xlat62 = dot(x_2732, bitcast<vec4<f32>>(x_2746));
    let x_2750 : f32 = u_xlat62;
    u_xlati62 = i32(x_2750);
    let x_2752 : vec3<f32> = vs_TEXCOORD1;
    let x_2763 : i32 = u_xlati62;
    let x_2765 : vec4<f32> = x_2762.x_AdditionalLightsPosition[x_2763];
    let x_2768 : i32 = u_xlati62;
    let x_2770 : vec4<f32> = x_2762.x_AdditionalLightsPosition[x_2768];
    let x_2772 : vec3<f32> = ((-(x_2752) * vec3<f32>(x_2765.w, x_2765.w, x_2765.w)) + vec3<f32>(x_2770.x, x_2770.y, x_2770.z));
    let x_2773 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2772.x, x_2772.y, x_2772.z, x_2773.w);
    let x_2775 : vec4<f32> = u_xlat8;
    let x_2777 : vec4<f32> = u_xlat8;
    u_xlat63 = dot(vec3<f32>(x_2775.x, x_2775.y, x_2775.z), vec3<f32>(x_2777.x, x_2777.y, x_2777.z));
    let x_2780 : f32 = u_xlat63;
    u_xlat63 = max(x_2780, 0.00006103515625f);
    let x_2783 : f32 = u_xlat63;
    u_xlat64 = inverseSqrt(x_2783);
    let x_2785 : f32 = u_xlat64;
    let x_2787 : vec4<f32> = u_xlat8;
    let x_2789 : vec3<f32> = (vec3<f32>(x_2785, x_2785, x_2785) * vec3<f32>(x_2787.x, x_2787.y, x_2787.z));
    let x_2790 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2789.x, x_2789.y, x_2789.z, x_2790.w);
    let x_2793 : f32 = u_xlat63;
    u_xlat65 = (1.0f / x_2793);
    let x_2795 : f32 = u_xlat63;
    let x_2796 : i32 = u_xlati62;
    let x_2798 : f32 = x_2762.x_AdditionalLightsAttenuation[x_2796].x;
    u_xlat63 = (x_2795 * x_2798);
    let x_2800 : f32 = u_xlat63;
    let x_2802 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2800) * x_2802) + 1.0f);
    let x_2805 : f32 = u_xlat63;
    u_xlat63 = max(x_2805, 0.0f);
    let x_2807 : f32 = u_xlat63;
    let x_2808 : f32 = u_xlat63;
    u_xlat63 = (x_2807 * x_2808);
    let x_2810 : f32 = u_xlat63;
    let x_2811 : f32 = u_xlat65;
    u_xlat63 = (x_2810 * x_2811);
    let x_2813 : i32 = u_xlati62;
    let x_2815 : vec4<f32> = x_2762.x_AdditionalLightsSpotDir[x_2813];
    let x_2817 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2815.x, x_2815.y, x_2815.z), vec3<f32>(x_2817.x, x_2817.y, x_2817.z));
    let x_2820 : f32 = u_xlat65;
    let x_2821 : i32 = u_xlati62;
    let x_2823 : f32 = x_2762.x_AdditionalLightsAttenuation[x_2821].z;
    let x_2825 : i32 = u_xlati62;
    let x_2827 : f32 = x_2762.x_AdditionalLightsAttenuation[x_2825].w;
    u_xlat65 = ((x_2820 * x_2823) + x_2827);
    let x_2829 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2829, 0.0f, 1.0f);
    let x_2831 : f32 = u_xlat65;
    let x_2832 : f32 = u_xlat65;
    u_xlat65 = (x_2831 * x_2832);
    let x_2834 : f32 = u_xlat63;
    let x_2835 : f32 = u_xlat65;
    u_xlat63 = (x_2834 * x_2835);
    let x_2837 : vec4<f32> = u_xlat2;
    let x_2839 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2837.x, x_2837.y, x_2837.z), vec3<f32>(x_2839.x, x_2839.y, x_2839.z));
    let x_2842 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2842, 0.0f, 1.0f);
    let x_2844 : f32 = u_xlat63;
    let x_2845 : f32 = u_xlat65;
    u_xlat65 = (x_2844 * x_2845);
    let x_2847 : f32 = u_xlat65;
    let x_2849 : i32 = u_xlati62;
    let x_2851 : vec4<f32> = x_2762.x_AdditionalLightsColor[x_2849];
    let x_2853 : vec3<f32> = (vec3<f32>(x_2847, x_2847, x_2847) * vec3<f32>(x_2851.x, x_2851.y, x_2851.z));
    let x_2854 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2853.x, x_2853.y, x_2853.z, x_2854.w);
    let x_2856 : vec4<f32> = u_xlat8;
    let x_2858 : f32 = u_xlat64;
    let x_2861 : vec3<f32> = vs_TEXCOORD2;
    let x_2862 : vec3<f32> = ((vec3<f32>(x_2856.x, x_2856.y, x_2856.z) * vec3<f32>(x_2858, x_2858, x_2858)) + x_2861);
    let x_2863 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2862.x, x_2862.y, x_2862.z, x_2863.w);
    let x_2865 : vec4<f32> = u_xlat8;
    let x_2867 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2865.x, x_2865.y, x_2865.z), vec3<f32>(x_2867.x, x_2867.y, x_2867.z));
    let x_2870 : f32 = u_xlat64;
    u_xlat64 = max(x_2870, 1.17549435e-38f);
    let x_2872 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_2872);
    let x_2874 : f32 = u_xlat64;
    let x_2876 : vec4<f32> = u_xlat8;
    let x_2878 : vec3<f32> = (vec3<f32>(x_2874, x_2874, x_2874) * vec3<f32>(x_2876.x, x_2876.y, x_2876.z));
    let x_2879 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2879.w);
    let x_2881 : vec4<f32> = u_xlat2;
    let x_2883 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2881.x, x_2881.y, x_2881.z), vec3<f32>(x_2883.x, x_2883.y, x_2883.z));
    let x_2886 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2886, 0.0f, 1.0f);
    let x_2888 : vec4<f32> = u_xlat9;
    let x_2890 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_2888.x, x_2888.y, x_2888.z), vec3<f32>(x_2890.x, x_2890.y, x_2890.z));
    let x_2895 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2895, 0.0f, 1.0f);
    let x_2898 : f32 = u_xlat64;
    let x_2899 : f32 = u_xlat64;
    u_xlat64 = (x_2898 * x_2899);
    let x_2901 : f32 = u_xlat64;
    u_xlat64 = ((x_2901 * -0.99993896484375f) + 1.00001001358032226562f);
    let x_2905 : f32 = u_xlat8.x;
    let x_2907 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2905 * x_2907);
    let x_2910 : f32 = u_xlat64;
    let x_2911 : f32 = u_xlat64;
    u_xlat64 = (x_2910 * x_2911);
    let x_2914 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2914, 0.10000000149011611938f);
    let x_2917 : f32 = u_xlat64;
    let x_2919 : f32 = u_xlat8.x;
    u_xlat64 = (x_2917 * x_2919);
    let x_2921 : f32 = u_xlat64;
    u_xlat64 = (x_2921 * 2.03125f);
    let x_2923 : f32 = u_xlat64;
    u_xlat64 = (0.00006103515625f / x_2923);
    let x_2925 : f32 = u_xlat64;
    u_xlat64 = (x_2925 * 0.03999999910593032837f);
    let x_2927 : f32 = u_xlat64;
    let x_2929 : vec4<f32> = u_xlat10;
    let x_2932 : vec4<f32> = u_xlat7;
    let x_2934 : vec3<f32> = ((vec3<f32>(x_2927, x_2927, x_2927) * vec3<f32>(x_2929.x, x_2929.y, x_2929.z)) + vec3<f32>(x_2932.x, x_2932.y, x_2932.z));
    let x_2935 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2935.w);
    let x_2937 : f32 = u_xlat63;
    let x_2939 : i32 = u_xlati62;
    let x_2941 : vec4<f32> = x_2762.x_AdditionalLightsColor[x_2939];
    let x_2944 : vec4<f32> = u_xlat5;
    let x_2946 : vec3<f32> = ((vec3<f32>(x_2937, x_2937, x_2937) * vec3<f32>(x_2941.x, x_2941.y, x_2941.z)) + vec3<f32>(x_2944.x, x_2944.y, x_2944.z));
    let x_2947 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2946.x, x_2946.y, x_2946.z, x_2947.w);

    continuing {
      let x_2949 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_2949 + bitcast<u32>(1i));
    }
  }
  let x_2951 : f32 = u_xlat58;
  let x_2952 : f32 = u_xlat38;
  u_xlat6.x = (x_2951 * x_2952);
  u_xlat6.y = 0.375f;
  u_xlat6.z = 0.0f;
  let x_2961 : vec4<f32> = u_xlat6;
  let x_2964 : f32 = x_39.x_GlobalMipBias.x;
  let x_2965 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2961.x, x_2961.y), x_2964);
  u_xlat22 = vec3<f32>(x_2965.x, x_2965.y, x_2965.z);
  let x_2967 : vec4<f32> = u_xlat2;
  let x_2973 : vec3<f32> = u_xlat0;
  let x_2975 : vec2<f32> = ((vec2<f32>(x_2967.z, x_2967.x) * vec2<f32>(0.01999999955296516418f, 0.15000000596046447754f)) + vec2<f32>(x_2973.x, x_2973.y));
  let x_2976 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2975.x, x_2975.y, x_2976.z);
  let x_2982 : vec3<f32> = u_xlat0;
  let x_2984 : vec4<f32> = textureSampleLevel(x_PlanarReflectionTexture, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_2982.x, x_2982.y), 0.0f);
  u_xlat0 = vec3<f32>(x_2984.x, x_2984.y, x_2984.z);
  let x_2991 : vec2<f32> = u_xlat20;
  let x_2993 : f32 = u_xlat4.y;
  let x_2994 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_2991, x_2993);
  u_xlat1 = vec3<f32>(x_2994.x, x_2994.y, x_2994.z);
  let x_2999 : vec4<f32> = u_xlat6;
  let x_3002 : f32 = x_39.x_GlobalMipBias.x;
  let x_3003 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2999.x, x_2999.z), x_3002);
  let x_3004 : vec3<f32> = vec3<f32>(x_3003.x, x_3003.y, x_3003.z);
  let x_3005 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3004.x, x_3004.y, x_3004.z, x_3005.w);
  let x_3007 : vec3<f32> = u_xlat1;
  let x_3008 : vec4<f32> = u_xlat2;
  let x_3010 : vec3<f32> = (x_3007 * vec3<f32>(x_3008.x, x_3008.y, x_3008.z));
  let x_3011 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
  let x_3013 : vec3<f32> = u_xlat1;
  let x_3015 : vec4<f32> = u_xlat2;
  let x_3018 : vec3<f32> = u_xlat0;
  u_xlat0 = ((-(x_3013) * vec3<f32>(x_3015.x, x_3015.y, x_3015.z)) + x_3018);
  let x_3020 : f32 = u_xlat3;
  let x_3022 : vec3<f32> = u_xlat0;
  let x_3024 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3020, x_3020, x_3020) * x_3022) + vec3<f32>(x_3024.x, x_3024.y, x_3024.z));
  let x_3027 : vec4<f32> = u_xlat5;
  let x_3029 : vec3<f32> = u_xlat22;
  let x_3031 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3027.x, x_3027.y, x_3027.z) * x_3029) + x_3031);
  let x_3033 : vec4<f32> = u_xlat7;
  let x_3035 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3033.x, x_3033.y, x_3033.z) + x_3035);
  let x_3037 : f32 = u_xlat57;
  let x_3039 : vec4<f32> = u_xlat4;
  let x_3042 : vec3<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_3037, x_3037, x_3037) * vec3<f32>(x_3039.x, x_3039.z, x_3039.w)) + -(x_3042));
  let x_3045 : f32 = u_xlat57;
  let x_3047 : vec3<f32> = u_xlat1;
  let x_3049 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3045, x_3045, x_3045) * x_3047) + x_3049);
  let x_3054 : f32 = vs_TEXCOORD4.x;
  let x_3056 : f32 = vs_TEXCOORD4.x;
  u_xlat57 = (x_3054 * -(x_3056));
  let x_3059 : f32 = u_xlat57;
  u_xlat57 = exp2(x_3059);
  let x_3061 : vec3<f32> = u_xlat0;
  let x_3063 : vec4<f32> = x_39.unity_FogColor;
  u_xlat0 = (x_3061 + -(vec3<f32>(x_3063.x, x_3063.y, x_3063.z)));
  let x_3069 : f32 = u_xlat57;
  let x_3071 : vec3<f32> = u_xlat0;
  let x_3074 : vec4<f32> = x_39.unity_FogColor;
  let x_3076 : vec3<f32> = ((vec3<f32>(x_3069, x_3069, x_3069) * x_3071) + vec3<f32>(x_3074.x, x_3074.y, x_3074.z));
  let x_3077 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3076.x, x_3076.y, x_3076.z, x_3077.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(7) vs_TEXCOORD6_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(6) vs_TEXCOORD5_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_NORMAL0_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(5) vs_TEXCOORD4_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_NORMAL0 = vs_NORMAL0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


