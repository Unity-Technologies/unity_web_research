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

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_WaterFXMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenTextures_linear_clamp : sampler;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

var<private> u_xlat38 : f32;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat57 : f32;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_WaterDepthMap_linear_clamp : sampler;

var<private> u_xlat58 : f32;

@group(0) @binding(6) var x_SurfaceMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_SurfaceMap : sampler;

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

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat42 : f32;

var<private> u_xlat61 : f32;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat46 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb41 : bool;

var<private> u_xlatb60 : bool;

var<private> u_xlat41 : vec2<f32>;

var<private> u_xlat44 : vec2<f32>;

@group(0) @binding(8) var x_DitherPattern : texture_2d<f32>;

@group(0) @binding(18) var sampler_DitherPattern : sampler;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlatu7 : u32;

var<private> u_xlati7 : i32;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlat19 : f32;

var<private> u_xlatb19 : bool;

var<private> u_xlatb0 : bool;

@group(1) @binding(2) var<uniform> x_2334 : UnityPerDraw;

var<private> u_xlat59 : f32;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(15) var sampler_AbsorptionScatteringRamp : sampler;

var<private> u_xlatu1 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati1 : i32;

@group(1) @binding(1) var<uniform> x_2733 : AdditionalLights;

@group(0) @binding(0) var x_CubemapTexture : texture_cube<f32>;

@group(0) @binding(11) var sampler_CubemapTexture : sampler;

@group(0) @binding(3) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraOpaqueTexture_linear_clamp : sampler;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatu6 : u32;

var<private> u_xlatb25 : bool;

var<private> u_xlatu57 : u32;

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
  var x_1820 : f32;
  var u_xlatu_loop_1 : u32;
  var txVec30 : vec3<f32>;
  var u_xlatu_loop_2 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = vs_TEXCOORD6;
  let x_15 : vec4<f32> = vs_TEXCOORD6;
  let x_17 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) / vec2<f32>(x_15.w, x_15.w));
  let x_18 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_17.x, x_17.y, x_18.z, x_18.w);
  let x_35 : vec3<f32> = vs_TEXCOORD3;
  let x_47 : f32 = x_40.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_WaterFXMap, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_35.x, x_35.y), x_47);
  u_xlat1 = vec3<f32>(x_48.x, x_48.y, x_48.z);
  let x_57 : vec4<f32> = u_xlat0;
  let x_60 : f32 = x_40.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat38 = x_61.x;
  let x_66 : f32 = x_40.x_ZBufferParams.z;
  let x_67 : f32 = u_xlat38;
  let x_71 : f32 = x_40.x_ZBufferParams.w;
  u_xlat38 = ((x_66 * x_67) + x_71);
  let x_74 : f32 = u_xlat38;
  u_xlat38 = (1.0f / x_74);
  let x_76 : f32 = u_xlat38;
  let x_80 : f32 = vs_TEXCOORD5.x;
  let x_84 : f32 = vs_TEXCOORD5.y;
  u_xlat38 = ((x_76 * x_80) + -(x_84));
  let x_89 : vec3<f32> = vs_TEXCOORD1;
  let x_96 : vec2<f32> = ((vec2<f32>(x_89.x, x_89.z) * vec2<f32>(0.00200000009499490261f, 0.00200000009499490261f)) + vec2<f32>(0.5f, 0.5f));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_105 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_105.x, x_105.y), 1.0f);
  u_xlat57 = x_107.x;
  let x_109 : f32 = u_xlat57;
  u_xlat57 = (-(x_109) + 1.0f);
  let x_115 : f32 = x_40.x_MaxDepth;
  let x_118 : f32 = x_40.x_VeraslWater_DepthCamParams.x;
  u_xlat58 = (x_115 + x_118);
  let x_120 : f32 = u_xlat57;
  let x_121 : f32 = u_xlat58;
  let x_124 : f32 = x_40.x_VeraslWater_DepthCamParams.x;
  u_xlat57 = ((x_120 * x_121) + -(x_124));
  let x_127 : f32 = u_xlat57;
  let x_129 : f32 = vs_TEXCOORD1.y;
  u_xlat57 = (x_127 + x_129);
  let x_132 : f32 = x_40.x_MaxDepth;
  u_xlat58 = (1.0f / x_132);
  let x_140 : vec4<f32> = vs_TEXCOORD0;
  let x_143 : f32 = x_40.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(x_SurfaceMap, sampler_SurfaceMap, vec2<f32>(x_140.z, x_140.w), x_143);
  let x_145 : vec2<f32> = vec2<f32>(x_144.x, x_144.y);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_146.z, x_146.w);
  let x_148 : vec4<f32> = u_xlat2;
  let x_155 : vec2<f32> = ((vec2<f32>(x_148.x, x_148.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_155.x, x_155.y, x_156.z, x_156.w);
  let x_163 : vec4<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_40.x_GlobalMipBias.x;
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
  let x_258 : vec4<f32> = x_40.unity_MatrixVP[1i];
  u_xlat20 = (-(vec2<f32>(x_251.y, x_251.y)) * vec2<f32>(x_258.x, x_258.z));
  let x_262 : vec4<f32> = x_40.unity_MatrixVP[0i];
  let x_264 : vec4<f32> = u_xlat2;
  let x_268 : vec2<f32> = u_xlat20;
  u_xlat20 = ((vec2<f32>(x_262.x, x_262.z) * -(vec2<f32>(x_264.x, x_264.x))) + x_268);
  let x_272 : vec4<f32> = x_40.unity_MatrixVP[2i];
  let x_274 : vec4<f32> = u_xlat2;
  let x_278 : vec2<f32> = u_xlat20;
  u_xlat20 = ((vec2<f32>(x_272.x, x_272.z) * -(vec2<f32>(x_274.z, x_274.z))) + x_278);
  let x_280 : f32 = u_xlat3;
  u_xlat3 = x_280;
  let x_281 : f32 = u_xlat3;
  u_xlat3 = clamp(x_281, 0.0f, 1.0f);
  let x_283 : vec2<f32> = u_xlat20;
  let x_284 : f32 = u_xlat3;
  let x_287 : vec4<f32> = u_xlat0;
  u_xlat20 = ((x_283 * vec2<f32>(x_284, x_284)) + vec2<f32>(x_287.x, x_287.y));
  let x_293 : vec2<f32> = u_xlat20;
  let x_295 : f32 = x_40.x_GlobalMipBias.x;
  let x_296 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_293, x_295);
  u_xlat3 = x_296.x;
  let x_299 : f32 = x_40.x_ZBufferParams.z;
  let x_300 : f32 = u_xlat3;
  let x_303 : f32 = x_40.x_ZBufferParams.w;
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
    let x_325 : vec4<f32> = u_xlat0;
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
        u_xlat42 = x_938;
        let x_940 : vec4<f32> = u_xlat9;
        let x_941 : vec2<f32> = vec2<f32>(x_940.z, x_940.w);
        let x_943 : f32 = u_xlat22.z;
        txVec5 = vec3<f32>(x_941.x, x_941.y, x_943);
        let x_951 : vec3<f32> = txVec5;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_951.xy, x_951.z);
        u_xlat61 = x_953;
        let x_954 : f32 = u_xlat61;
        let x_956 : f32 = u_xlat12.y;
        u_xlat61 = (x_954 * x_956);
        let x_959 : f32 = u_xlat12.x;
        let x_960 : f32 = u_xlat42;
        let x_962 : f32 = u_xlat61;
        u_xlat42 = ((x_959 * x_960) + x_962);
        let x_965 : vec4<f32> = u_xlat10;
        let x_966 : vec2<f32> = vec2<f32>(x_965.x, x_965.y);
        let x_968 : f32 = u_xlat22.z;
        txVec6 = vec3<f32>(x_966.x, x_966.y, x_968);
        let x_975 : vec3<f32> = txVec6;
        let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_975.xy, x_975.z);
        u_xlat61 = x_977;
        let x_979 : f32 = u_xlat12.z;
        let x_980 : f32 = u_xlat61;
        let x_982 : f32 = u_xlat42;
        u_xlat42 = ((x_979 * x_980) + x_982);
        let x_985 : vec4<f32> = u_xlat8;
        let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
        let x_988 : f32 = u_xlat22.z;
        txVec7 = vec3<f32>(x_986.x, x_986.y, x_988);
        let x_995 : vec3<f32> = txVec7;
        let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_995.xy, x_995.z);
        u_xlat61 = x_997;
        let x_999 : f32 = u_xlat12.w;
        let x_1000 : f32 = u_xlat61;
        let x_1002 : f32 = u_xlat42;
        u_xlat42 = ((x_999 * x_1000) + x_1002);
        let x_1005 : vec4<f32> = u_xlat11;
        let x_1006 : vec2<f32> = vec2<f32>(x_1005.x, x_1005.y);
        let x_1008 : f32 = u_xlat22.z;
        txVec8 = vec3<f32>(x_1006.x, x_1006.y, x_1008);
        let x_1015 : vec3<f32> = txVec8;
        let x_1017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1015.xy, x_1015.z);
        u_xlat61 = x_1017;
        let x_1019 : f32 = u_xlat13.x;
        let x_1020 : f32 = u_xlat61;
        let x_1022 : f32 = u_xlat42;
        u_xlat42 = ((x_1019 * x_1020) + x_1022);
        let x_1025 : vec4<f32> = u_xlat11;
        let x_1026 : vec2<f32> = vec2<f32>(x_1025.z, x_1025.w);
        let x_1028 : f32 = u_xlat22.z;
        txVec9 = vec3<f32>(x_1026.x, x_1026.y, x_1028);
        let x_1035 : vec3<f32> = txVec9;
        let x_1037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1035.xy, x_1035.z);
        u_xlat61 = x_1037;
        let x_1039 : f32 = u_xlat13.y;
        let x_1040 : f32 = u_xlat61;
        let x_1042 : f32 = u_xlat42;
        u_xlat42 = ((x_1039 * x_1040) + x_1042);
        let x_1045 : vec4<f32> = u_xlat8;
        let x_1046 : vec2<f32> = vec2<f32>(x_1045.z, x_1045.w);
        let x_1048 : f32 = u_xlat22.z;
        txVec10 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
        let x_1055 : vec3<f32> = txVec10;
        let x_1057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1055.xy, x_1055.z);
        u_xlat61 = x_1057;
        let x_1059 : f32 = u_xlat13.z;
        let x_1060 : f32 = u_xlat61;
        let x_1062 : f32 = u_xlat42;
        u_xlat42 = ((x_1059 * x_1060) + x_1062);
        let x_1065 : vec4<f32> = u_xlat7;
        let x_1066 : vec2<f32> = vec2<f32>(x_1065.x, x_1065.y);
        let x_1068 : f32 = u_xlat22.z;
        txVec11 = vec3<f32>(x_1066.x, x_1066.y, x_1068);
        let x_1075 : vec3<f32> = txVec11;
        let x_1077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1075.xy, x_1075.z);
        u_xlat61 = x_1077;
        let x_1079 : f32 = u_xlat13.w;
        let x_1080 : f32 = u_xlat61;
        let x_1082 : f32 = u_xlat42;
        u_xlat42 = ((x_1079 * x_1080) + x_1082);
        let x_1085 : vec4<f32> = u_xlat7;
        let x_1086 : vec2<f32> = vec2<f32>(x_1085.z, x_1085.w);
        let x_1088 : f32 = u_xlat22.z;
        txVec12 = vec3<f32>(x_1086.x, x_1086.y, x_1088);
        let x_1095 : vec3<f32> = txVec12;
        let x_1097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1095.xy, x_1095.z);
        u_xlat61 = x_1097;
        let x_1099 : f32 = u_xlat23.x;
        let x_1100 : f32 = u_xlat61;
        let x_1102 : f32 = u_xlat42;
        u_xlat4.x = ((x_1099 * x_1100) + x_1102);
      } else {
        let x_1106 : vec3<f32> = u_xlat22;
        let x_1109 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.z, x_1109.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1113 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_1113);
        let x_1115 : vec3<f32> = u_xlat22;
        let x_1118 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1121 : vec2<f32> = u_xlat23;
        let x_1123 : vec2<f32> = ((vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(x_1118.z, x_1118.w)) + -(x_1121));
        let x_1124 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1126.x, x_1126.x, x_1126.y, x_1126.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1129 : vec4<f32> = u_xlat6;
        let x_1131 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1129.x, x_1129.x, x_1129.z, x_1129.z) * vec4<f32>(x_1131.x, x_1131.x, x_1131.z, x_1131.z));
        let x_1134 : vec4<f32> = u_xlat7;
        let x_1138 : vec2<f32> = (vec2<f32>(x_1134.y, x_1134.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1139.x, x_1138.x, x_1139.z, x_1138.y);
        let x_1141 : vec4<f32> = u_xlat7;
        let x_1144 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1141.x, x_1141.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1144.x, x_1144.y)));
        let x_1148 : vec4<f32> = u_xlat5;
        let x_1151 : vec2<f32> = (-(vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1152 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1151.x, x_1152.y, x_1151.y, x_1152.w);
        let x_1154 : vec4<f32> = u_xlat5;
        let x_1156 : vec2<f32> = min(vec2<f32>(x_1154.x, x_1154.y), vec2<f32>(0.0f, 0.0f));
        let x_1157 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1157.w);
        let x_1159 : vec4<f32> = u_xlat7;
        let x_1162 : vec4<f32> = u_xlat7;
        let x_1165 : vec4<f32> = u_xlat6;
        let x_1167 : vec2<f32> = ((-(vec2<f32>(x_1159.x, x_1159.y)) * vec2<f32>(x_1162.x, x_1162.y)) + vec2<f32>(x_1165.x, x_1165.z));
        let x_1168 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1167.x, x_1168.y, x_1167.y, x_1168.w);
        let x_1170 : vec4<f32> = u_xlat5;
        let x_1172 : vec2<f32> = max(vec2<f32>(x_1170.x, x_1170.y), vec2<f32>(0.0f, 0.0f));
        let x_1173 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1183 : vec2<f32> = ((-(vec2<f32>(x_1175.x, x_1175.y)) * vec2<f32>(x_1178.x, x_1178.y)) + vec2<f32>(x_1181.y, x_1181.w));
        let x_1184 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1184.x, x_1183.x, x_1184.z, x_1183.y);
        let x_1186 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1186 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1190 : f32 = u_xlat6.y;
        u_xlat7.z = (x_1190 * 0.08163200318813323975f);
        let x_1194 : vec2<f32> = u_xlat43;
        let x_1197 : vec2<f32> = (vec2<f32>(x_1194.y, x_1194.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1198 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1197.x, x_1197.y, x_1198.z, x_1198.w);
        let x_1200 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_1200.x, x_1200.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1204 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1204 * 0.08163200318813323975f);
        let x_1208 : f32 = u_xlat9.y;
        u_xlat7.x = x_1208;
        let x_1210 : vec4<f32> = u_xlat5;
        let x_1217 : vec2<f32> = ((vec2<f32>(x_1210.x, x_1210.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1218 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1218.x, x_1217.x, x_1218.z, x_1217.y);
        let x_1220 : vec4<f32> = u_xlat5;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1220.x, x_1220.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1225 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1224.x, x_1225.y, x_1224.y, x_1225.w);
        let x_1228 : f32 = u_xlat43.x;
        u_xlat6.y = x_1228;
        let x_1231 : f32 = u_xlat8.y;
        u_xlat6.w = x_1231;
        let x_1233 : vec4<f32> = u_xlat6;
        let x_1234 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1233 + x_1234);
        let x_1236 : vec4<f32> = u_xlat5;
        let x_1239 : vec2<f32> = ((vec2<f32>(x_1236.y, x_1236.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1240.x, x_1239.x, x_1240.z, x_1239.y);
        let x_1242 : vec4<f32> = u_xlat5;
        let x_1245 : vec2<f32> = ((vec2<f32>(x_1242.y, x_1242.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1246 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1245.x, x_1246.y, x_1245.y, x_1246.w);
        let x_1249 : f32 = u_xlat43.y;
        u_xlat8.y = x_1249;
        let x_1251 : vec4<f32> = u_xlat8;
        let x_1252 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1251 + x_1252);
        let x_1254 : vec4<f32> = u_xlat6;
        let x_1255 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1254 / x_1255);
        let x_1257 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1257 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1263 : vec4<f32> = u_xlat8;
        let x_1264 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1263 / x_1264);
        let x_1266 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1266 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1268 : vec4<f32> = u_xlat6;
        let x_1271 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1268.w, x_1268.x, x_1268.y, x_1268.z) * vec4<f32>(x_1271.x, x_1271.x, x_1271.x, x_1271.x));
        let x_1274 : vec4<f32> = u_xlat8;
        let x_1277 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1274.x, x_1274.w, x_1274.y, x_1274.z) * vec4<f32>(x_1277.y, x_1277.y, x_1277.y, x_1277.y));
        let x_1280 : vec4<f32> = u_xlat6;
        let x_1281 : vec3<f32> = vec3<f32>(x_1280.y, x_1280.z, x_1280.w);
        let x_1282 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1281.x, x_1282.y, x_1281.y, x_1281.z);
        let x_1285 : f32 = u_xlat8.x;
        u_xlat9.y = x_1285;
        let x_1287 : vec2<f32> = u_xlat23;
        let x_1290 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1293 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y) * vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y)) + vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1293.y));
        let x_1296 : vec2<f32> = u_xlat23;
        let x_1298 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat9;
        let x_1303 : vec2<f32> = ((x_1296 * vec2<f32>(x_1298.x, x_1298.y)) + vec2<f32>(x_1301.w, x_1301.y));
        let x_1304 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1303.x, x_1303.y, x_1304.z, x_1304.w);
        let x_1307 : f32 = u_xlat9.y;
        u_xlat6.y = x_1307;
        let x_1310 : f32 = u_xlat8.z;
        u_xlat9.y = x_1310;
        let x_1312 : vec2<f32> = u_xlat23;
        let x_1315 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y) * vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y)) + vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1318.y));
        let x_1322 : vec2<f32> = u_xlat23;
        let x_1324 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1322 * vec2<f32>(x_1324.x, x_1324.y)) + vec2<f32>(x_1327.w, x_1327.y));
        let x_1331 : f32 = u_xlat9.y;
        u_xlat6.z = x_1331;
        let x_1333 : vec2<f32> = u_xlat23;
        let x_1336 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1339 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y) * vec4<f32>(x_1336.x, x_1336.y, x_1336.x, x_1336.y)) + vec4<f32>(x_1339.x, x_1339.y, x_1339.x, x_1339.z));
        let x_1343 : f32 = u_xlat8.w;
        u_xlat9.y = x_1343;
        let x_1346 : vec2<f32> = u_xlat23;
        let x_1349 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1346.x, x_1346.y, x_1346.x, x_1346.y) * vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y)) + vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1352.y));
        let x_1356 : vec2<f32> = u_xlat23;
        let x_1358 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat9;
        let x_1363 : vec2<f32> = ((x_1356 * vec2<f32>(x_1358.x, x_1358.y)) + vec2<f32>(x_1361.w, x_1361.y));
        let x_1364 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1363.x, x_1363.y, x_1364.z);
        let x_1367 : f32 = u_xlat9.y;
        u_xlat6.w = x_1367;
        let x_1370 : vec2<f32> = u_xlat23;
        let x_1372 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1370 * vec2<f32>(x_1372.x, x_1372.y)) + vec2<f32>(x_1375.x, x_1375.w));
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1379 : vec3<f32> = vec3<f32>(x_1378.x, x_1378.z, x_1378.w);
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1379.x, x_1380.y, x_1379.y, x_1379.z);
        let x_1382 : vec2<f32> = u_xlat23;
        let x_1385 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y) * vec4<f32>(x_1385.x, x_1385.y, x_1385.x, x_1385.y)) + vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1388.y));
        let x_1392 : vec2<f32> = u_xlat23;
        let x_1394 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1397 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1392 * vec2<f32>(x_1394.x, x_1394.y)) + vec2<f32>(x_1397.w, x_1397.y));
        let x_1401 : f32 = u_xlat6.x;
        u_xlat8.x = x_1401;
        let x_1403 : vec2<f32> = u_xlat23;
        let x_1405 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1408 : vec4<f32> = u_xlat8;
        u_xlat23 = ((x_1403 * vec2<f32>(x_1405.x, x_1405.y)) + vec2<f32>(x_1408.x, x_1408.y));
        let x_1412 : vec4<f32> = u_xlat5;
        let x_1414 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1412.x, x_1412.x, x_1412.x, x_1412.x) * x_1414);
        let x_1417 : vec4<f32> = u_xlat5;
        let x_1419 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1417.y, x_1417.y, x_1417.y, x_1417.y) * x_1419);
        let x_1422 : vec4<f32> = u_xlat5;
        let x_1424 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1422.z, x_1422.z, x_1422.z, x_1422.z) * x_1424);
        let x_1426 : vec4<f32> = u_xlat5;
        let x_1428 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1426.w, x_1426.w, x_1426.w, x_1426.w) * x_1428);
        let x_1431 : vec4<f32> = u_xlat10;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = u_xlat22.z;
        txVec13 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec13;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat61 = x_1443;
        let x_1445 : vec4<f32> = u_xlat10;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.z, x_1445.w);
        let x_1448 : f32 = u_xlat22.z;
        txVec14 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec14;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1455.xy, x_1455.z);
        u_xlat6.x = x_1457;
        let x_1460 : f32 = u_xlat6.x;
        let x_1462 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1460 * x_1462);
        let x_1466 : f32 = u_xlat16.x;
        let x_1467 : f32 = u_xlat61;
        let x_1470 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1466 * x_1467) + x_1470);
        let x_1473 : vec4<f32> = u_xlat11;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.x, x_1473.y);
        let x_1476 : f32 = u_xlat22.z;
        txVec15 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec15;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1483.xy, x_1483.z);
        u_xlat6.x = x_1485;
        let x_1488 : f32 = u_xlat16.z;
        let x_1490 : f32 = u_xlat6.x;
        let x_1492 : f32 = u_xlat61;
        u_xlat61 = ((x_1488 * x_1490) + x_1492);
        let x_1495 : vec4<f32> = u_xlat13;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.x, x_1495.y);
        let x_1498 : f32 = u_xlat22.z;
        txVec16 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec16;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1505.xy, x_1505.z);
        u_xlat6.x = x_1507;
        let x_1510 : f32 = u_xlat16.w;
        let x_1512 : f32 = u_xlat6.x;
        let x_1514 : f32 = u_xlat61;
        u_xlat61 = ((x_1510 * x_1512) + x_1514);
        let x_1517 : vec4<f32> = u_xlat12;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.x, x_1517.y);
        let x_1520 : f32 = u_xlat22.z;
        txVec17 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec17;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1527.xy, x_1527.z);
        u_xlat6.x = x_1529;
        let x_1532 : f32 = u_xlat17.x;
        let x_1534 : f32 = u_xlat6.x;
        let x_1536 : f32 = u_xlat61;
        u_xlat61 = ((x_1532 * x_1534) + x_1536);
        let x_1539 : vec4<f32> = u_xlat12;
        let x_1540 : vec2<f32> = vec2<f32>(x_1539.z, x_1539.w);
        let x_1542 : f32 = u_xlat22.z;
        txVec18 = vec3<f32>(x_1540.x, x_1540.y, x_1542);
        let x_1549 : vec3<f32> = txVec18;
        let x_1551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1549.xy, x_1549.z);
        u_xlat6.x = x_1551;
        let x_1554 : f32 = u_xlat17.y;
        let x_1556 : f32 = u_xlat6.x;
        let x_1558 : f32 = u_xlat61;
        u_xlat61 = ((x_1554 * x_1556) + x_1558);
        let x_1561 : vec2<f32> = u_xlat49;
        let x_1563 : f32 = u_xlat22.z;
        txVec19 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec19;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1570.xy, x_1570.z);
        u_xlat6.x = x_1572;
        let x_1575 : f32 = u_xlat17.z;
        let x_1577 : f32 = u_xlat6.x;
        let x_1579 : f32 = u_xlat61;
        u_xlat61 = ((x_1575 * x_1577) + x_1579);
        let x_1582 : vec4<f32> = u_xlat13;
        let x_1583 : vec2<f32> = vec2<f32>(x_1582.z, x_1582.w);
        let x_1585 : f32 = u_xlat22.z;
        txVec20 = vec3<f32>(x_1583.x, x_1583.y, x_1585);
        let x_1592 : vec3<f32> = txVec20;
        let x_1594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1592.xy, x_1592.z);
        u_xlat6.x = x_1594;
        let x_1597 : f32 = u_xlat17.w;
        let x_1599 : f32 = u_xlat6.x;
        let x_1601 : f32 = u_xlat61;
        u_xlat61 = ((x_1597 * x_1599) + x_1601);
        let x_1604 : vec4<f32> = u_xlat14;
        let x_1605 : vec2<f32> = vec2<f32>(x_1604.x, x_1604.y);
        let x_1607 : f32 = u_xlat22.z;
        txVec21 = vec3<f32>(x_1605.x, x_1605.y, x_1607);
        let x_1614 : vec3<f32> = txVec21;
        let x_1616 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1614.xy, x_1614.z);
        u_xlat6.x = x_1616;
        let x_1619 : f32 = u_xlat18.x;
        let x_1621 : f32 = u_xlat6.x;
        let x_1623 : f32 = u_xlat61;
        u_xlat61 = ((x_1619 * x_1621) + x_1623);
        let x_1626 : vec4<f32> = u_xlat14;
        let x_1627 : vec2<f32> = vec2<f32>(x_1626.z, x_1626.w);
        let x_1629 : f32 = u_xlat22.z;
        txVec22 = vec3<f32>(x_1627.x, x_1627.y, x_1629);
        let x_1636 : vec3<f32> = txVec22;
        let x_1638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1636.xy, x_1636.z);
        u_xlat6.x = x_1638;
        let x_1641 : f32 = u_xlat18.y;
        let x_1643 : f32 = u_xlat6.x;
        let x_1645 : f32 = u_xlat61;
        u_xlat61 = ((x_1641 * x_1643) + x_1645);
        let x_1648 : vec3<f32> = u_xlat25;
        let x_1649 : vec2<f32> = vec2<f32>(x_1648.x, x_1648.y);
        let x_1651 : f32 = u_xlat22.z;
        txVec23 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
        let x_1658 : vec3<f32> = txVec23;
        let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1658.xy, x_1658.z);
        u_xlat6.x = x_1660;
        let x_1663 : f32 = u_xlat18.z;
        let x_1665 : f32 = u_xlat6.x;
        let x_1667 : f32 = u_xlat61;
        u_xlat61 = ((x_1663 * x_1665) + x_1667);
        let x_1670 : vec2<f32> = u_xlat15;
        let x_1672 : f32 = u_xlat22.z;
        txVec24 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec24;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1679.xy, x_1679.z);
        u_xlat6.x = x_1681;
        let x_1684 : f32 = u_xlat18.w;
        let x_1686 : f32 = u_xlat6.x;
        let x_1688 : f32 = u_xlat61;
        u_xlat61 = ((x_1684 * x_1686) + x_1688);
        let x_1691 : vec4<f32> = u_xlat9;
        let x_1692 : vec2<f32> = vec2<f32>(x_1691.x, x_1691.y);
        let x_1694 : f32 = u_xlat22.z;
        txVec25 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
        let x_1701 : vec3<f32> = txVec25;
        let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1701.xy, x_1701.z);
        u_xlat6.x = x_1703;
        let x_1706 : f32 = u_xlat5.x;
        let x_1708 : f32 = u_xlat6.x;
        let x_1710 : f32 = u_xlat61;
        u_xlat61 = ((x_1706 * x_1708) + x_1710);
        let x_1713 : vec4<f32> = u_xlat9;
        let x_1714 : vec2<f32> = vec2<f32>(x_1713.z, x_1713.w);
        let x_1716 : f32 = u_xlat22.z;
        txVec26 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
        let x_1723 : vec3<f32> = txVec26;
        let x_1725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1723.xy, x_1723.z);
        u_xlat5.x = x_1725;
        let x_1728 : f32 = u_xlat5.y;
        let x_1730 : f32 = u_xlat5.x;
        let x_1732 : f32 = u_xlat61;
        u_xlat61 = ((x_1728 * x_1730) + x_1732);
        let x_1735 : vec2<f32> = u_xlat46;
        let x_1737 : f32 = u_xlat22.z;
        txVec27 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
        let x_1744 : vec3<f32> = txVec27;
        let x_1746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1744.xy, x_1744.z);
        u_xlat5.x = x_1746;
        let x_1749 : f32 = u_xlat5.z;
        let x_1751 : f32 = u_xlat5.x;
        let x_1753 : f32 = u_xlat61;
        u_xlat61 = ((x_1749 * x_1751) + x_1753);
        let x_1756 : vec2<f32> = u_xlat23;
        let x_1758 : f32 = u_xlat22.z;
        txVec28 = vec3<f32>(x_1756.x, x_1756.y, x_1758);
        let x_1765 : vec3<f32> = txVec28;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1765.xy, x_1765.z);
        u_xlat23.x = x_1767;
        let x_1770 : f32 = u_xlat5.w;
        let x_1772 : f32 = u_xlat23.x;
        let x_1774 : f32 = u_xlat61;
        u_xlat4.x = ((x_1770 * x_1772) + x_1774);
      }
    }
  } else {
    let x_1779 : vec3<f32> = u_xlat22;
    let x_1780 : vec2<f32> = vec2<f32>(x_1779.x, x_1779.y);
    let x_1782 : f32 = u_xlat22.z;
    txVec29 = vec3<f32>(x_1780.x, x_1780.y, x_1782);
    let x_1789 : vec3<f32> = txVec29;
    let x_1791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1789.xy, x_1789.z);
    u_xlat4.x = x_1791;
  }
  let x_1794 : f32 = x_367.x_MainLightShadowParams.x;
  u_xlat22.x = (-(x_1794) + 1.0f);
  let x_1799 : f32 = u_xlat4.x;
  let x_1801 : f32 = x_367.x_MainLightShadowParams.x;
  let x_1804 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_1799 * x_1801) + x_1804);
  let x_1809 : f32 = u_xlat22.z;
  u_xlatb41 = (0.0f >= x_1809);
  let x_1813 : f32 = u_xlat22.z;
  u_xlatb60 = (x_1813 >= 1.0f);
  let x_1815 : bool = u_xlatb60;
  let x_1816 : bool = u_xlatb41;
  u_xlatb41 = (x_1815 | x_1816);
  let x_1818 : bool = u_xlatb41;
  if (x_1818) {
    x_1820 = 1.0f;
  } else {
    let x_1825 : f32 = u_xlat22.x;
    x_1820 = x_1825;
  }
  let x_1826 : f32 = x_1820;
  u_xlat22.x = x_1826;
  let x_1828 : vec4<f32> = u_xlat0;
  let x_1831 : vec4<f32> = x_40.x_ScreenParams;
  let x_1833 : vec2<f32> = (vec2<f32>(x_1828.x, x_1828.y) * vec2<f32>(x_1831.x, x_1831.y));
  let x_1834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1833.x, x_1833.y, x_1834.z, x_1834.w);
  let x_1836 : vec4<f32> = u_xlat0;
  let x_1839 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
  let x_1841 : vec2<f32> = (vec2<f32>(x_1836.x, x_1836.y) * vec2<f32>(x_1839.x, x_1839.y));
  let x_1842 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1841.x, x_1841.y, x_1842.z, x_1842.w);
  let x_1845 : f32 = u_xlat38;
  u_xlat41 = (vec2<f32>(x_1845, x_1845) * vec2<f32>(20.0f, 0.25f));
  let x_1850 : vec2<f32> = u_xlat41;
  let x_1852 : vec3<f32> = vs_TEXCOORD2;
  let x_1854 : vec3<f32> = (vec3<f32>(x_1850.y, x_1850.y, x_1850.y) * -(x_1852));
  let x_1855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1855.w);
  let x_1858 : f32 = x_40.x_Time.x;
  u_xlat5.x = fract(x_1858);
  let x_1862 : f32 = x_40.x_Time.z;
  u_xlat5.y = fract(-(x_1862));
  let x_1866 : vec4<f32> = u_xlat0;
  u_xlat43 = vec2<f32>(x_1866.x, x_1866.y);
  u_xlat61 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1875 : u32 = u_xlatu_loop_1;
    if ((x_1875 < 4u)) {
    } else {
      break;
    }
    let x_1878 : vec4<f32> = u_xlat5;
    let x_1880 : vec2<f32> = u_xlat43;
    u_xlat43 = (vec2<f32>(x_1878.x, x_1878.y) + x_1880);
    let x_1882 : u32 = u_xlatu_loop_1;
    u_xlat25.x = f32(x_1882);
    let x_1886 : vec3<f32> = u_xlat25;
    let x_1889 : vec4<f32> = x_40.x_ScreenParams;
    let x_1892 : vec2<f32> = u_xlat43;
    u_xlat44 = ((vec2<f32>(x_1886.x, x_1886.x) * vec2<f32>(x_1889.x, x_1889.y)) + x_1892);
    let x_1899 : vec2<f32> = u_xlat44;
    let x_1901 : f32 = x_40.x_GlobalMipBias.x;
    let x_1902 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, x_1899, x_1901);
    let x_1903 : vec3<f32> = vec3<f32>(x_1902.x, x_1902.y, x_1902.z);
    let x_1904 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
    let x_1906 : vec4<f32> = u_xlat7;
    let x_1911 : vec3<f32> = ((vec3<f32>(x_1906.x, x_1906.z, x_1906.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_1912 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
    let x_1914 : vec2<f32> = u_xlat41;
    let x_1916 : vec4<f32> = u_xlat7;
    let x_1918 : vec3<f32> = (vec3<f32>(x_1914.y, x_1914.y, x_1914.y) * vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
    let x_1919 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1918.x, x_1918.y, x_1919.z, x_1918.z);
    let x_1921 : vec3<f32> = u_xlat25;
    let x_1923 : vec4<f32> = u_xlat7;
    let x_1925 : vec3<f32> = (vec3<f32>(x_1921.x, x_1921.x, x_1921.x) * vec3<f32>(x_1923.x, x_1923.y, x_1923.w));
    let x_1926 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1925.x, x_1925.y, x_1926.z, x_1925.z);
    let x_1928 : vec4<f32> = u_xlat7;
    let x_1933 : vec3<f32> = vs_TEXCOORD1;
    let x_1934 : vec3<f32> = ((vec3<f32>(x_1928.x, x_1928.y, x_1928.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_1933);
    let x_1935 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1934.x, x_1934.y, x_1935.z, x_1934.z);
    let x_1938 : f32 = u_xlat25.x;
    let x_1940 : f32 = u_xlat7.z;
    u_xlat25.x = (x_1938 + x_1940);
    let x_1943 : vec4<f32> = u_xlat4;
    let x_1945 : vec3<f32> = u_xlat25;
    let x_1948 : vec4<f32> = u_xlat7;
    u_xlat25 = ((vec3<f32>(x_1943.x, x_1943.y, x_1943.z) * vec3<f32>(x_1945.x, x_1945.x, x_1945.x)) + vec3<f32>(x_1948.x, x_1948.y, x_1948.w));
    let x_1951 : vec3<f32> = u_xlat25;
    let x_1953 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
    let x_1956 : vec3<f32> = (x_1951 + -(vec3<f32>(x_1953.x, x_1953.y, x_1953.z)));
    let x_1957 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1956.x, x_1956.y, x_1956.z, x_1957.w);
    let x_1959 : vec3<f32> = u_xlat25;
    let x_1961 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
    let x_1964 : vec3<f32> = (x_1959 + -(vec3<f32>(x_1961.x, x_1961.y, x_1961.z)));
    let x_1965 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
    let x_1967 : vec3<f32> = u_xlat25;
    let x_1969 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
    let x_1972 : vec3<f32> = (x_1967 + -(vec3<f32>(x_1969.x, x_1969.y, x_1969.z)));
    let x_1973 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
    let x_1975 : vec3<f32> = u_xlat25;
    let x_1977 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
    let x_1980 : vec3<f32> = (x_1975 + -(vec3<f32>(x_1977.x, x_1977.y, x_1977.z)));
    let x_1981 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
    let x_1983 : vec4<f32> = u_xlat7;
    let x_1985 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_1983.x, x_1983.y, x_1983.z), vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
    let x_1989 : vec4<f32> = u_xlat8;
    let x_1991 : vec4<f32> = u_xlat8;
    u_xlat7.y = dot(vec3<f32>(x_1989.x, x_1989.y, x_1989.z), vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
    let x_1995 : vec4<f32> = u_xlat9;
    let x_1997 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(vec3<f32>(x_1995.x, x_1995.y, x_1995.z), vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
    let x_2001 : vec4<f32> = u_xlat10;
    let x_2003 : vec4<f32> = u_xlat10;
    u_xlat7.w = dot(vec3<f32>(x_2001.x, x_2001.y, x_2001.z), vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
    let x_2008 : vec4<f32> = u_xlat7;
    let x_2010 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
    u_xlatb7 = (x_2008 < x_2010);
    let x_2013 : bool = u_xlatb7.x;
    u_xlat8.x = select(0.0f, 1.0f, x_2013);
    let x_2017 : bool = u_xlatb7.y;
    u_xlat8.y = select(0.0f, 1.0f, x_2017);
    let x_2021 : bool = u_xlatb7.z;
    u_xlat8.z = select(0.0f, 1.0f, x_2021);
    let x_2025 : bool = u_xlatb7.w;
    u_xlat8.w = select(0.0f, 1.0f, x_2025);
    let x_2029 : bool = u_xlatb7.x;
    u_xlat7.x = select(-0.0f, -1.0f, x_2029);
    let x_2033 : bool = u_xlatb7.y;
    u_xlat7.y = select(-0.0f, -1.0f, x_2033);
    let x_2037 : bool = u_xlatb7.z;
    u_xlat7.z = select(-0.0f, -1.0f, x_2037);
    let x_2040 : vec4<f32> = u_xlat7;
    let x_2042 : vec4<f32> = u_xlat8;
    let x_2044 : vec3<f32> = (vec3<f32>(x_2040.x, x_2040.y, x_2040.z) + vec3<f32>(x_2042.y, x_2042.z, x_2042.w));
    let x_2045 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2044.x, x_2044.y, x_2044.z, x_2045.w);
    let x_2047 : vec4<f32> = u_xlat7;
    let x_2049 : vec3<f32> = max(vec3<f32>(x_2047.x, x_2047.y, x_2047.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_2050 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2050.x, x_2049.x, x_2049.y, x_2049.z);
    let x_2052 : vec4<f32> = u_xlat8;
    u_xlat7.x = dot(x_2052, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_2056 : f32 = u_xlat7.x;
    u_xlat7.x = (-(x_2056) + 4.0f);
    let x_2062 : f32 = u_xlat7.x;
    u_xlatu7 = u32(x_2062);
    let x_2065 : u32 = u_xlatu7;
    u_xlati7 = (bitcast<i32>(x_2065) << bitcast<u32>(2i));
    let x_2069 : vec3<f32> = u_xlat25;
    let x_2071 : i32 = u_xlati7;
    let x_2074 : i32 = u_xlati7;
    let x_2078 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_2071 + 1i) / 4i)][((x_2074 + 1i) % 4i)];
    u_xlat26 = (vec3<f32>(x_2069.y, x_2069.y, x_2069.y) * vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
    let x_2081 : i32 = u_xlati7;
    let x_2083 : i32 = u_xlati7;
    let x_2086 : vec4<f32> = x_367.x_MainLightWorldToShadow[(x_2081 / 4i)][(x_2083 % 4i)];
    let x_2088 : vec3<f32> = u_xlat25;
    let x_2091 : vec3<f32> = u_xlat26;
    u_xlat26 = ((vec3<f32>(x_2086.x, x_2086.y, x_2086.z) * vec3<f32>(x_2088.x, x_2088.x, x_2088.x)) + x_2091);
    let x_2093 : i32 = u_xlati7;
    let x_2096 : i32 = u_xlati7;
    let x_2100 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_2093 + 2i) / 4i)][((x_2096 + 2i) % 4i)];
    let x_2102 : vec3<f32> = u_xlat25;
    let x_2105 : vec3<f32> = u_xlat26;
    u_xlat25 = ((vec3<f32>(x_2100.x, x_2100.y, x_2100.z) * vec3<f32>(x_2102.z, x_2102.z, x_2102.z)) + x_2105);
    let x_2107 : vec3<f32> = u_xlat25;
    let x_2108 : i32 = u_xlati7;
    let x_2111 : i32 = u_xlati7;
    let x_2115 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_2108 + 3i) / 4i)][((x_2111 + 3i) % 4i)];
    u_xlat25 = (x_2107 + vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
    let x_2119 : vec3<f32> = u_xlat25;
    let x_2120 : vec2<f32> = vec2<f32>(x_2119.x, x_2119.y);
    let x_2122 : f32 = u_xlat25.z;
    txVec30 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
    let x_2129 : vec3<f32> = txVec30;
    let x_2131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2129.xy, x_2129.z);
    u_xlat25.x = x_2131;
    let x_2133 : f32 = u_xlat61;
    let x_2135 : f32 = u_xlat25.x;
    u_xlat61 = (x_2133 + x_2135);

    continuing {
      let x_2137 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2137 + bitcast<u32>(1i));
    }
  }
  let x_2139 : vec3<f32> = vs_TEXCOORD1;
  let x_2142 : vec3<f32> = (x_2139 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_2143 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
  let x_2145 : vec3<f32> = vs_TEXCOORD1;
  let x_2148 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
  let x_2151 : vec3<f32> = ((x_2145 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2148.x, x_2148.y, x_2148.z)));
  let x_2152 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
  let x_2154 : vec3<f32> = vs_TEXCOORD1;
  let x_2157 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
  let x_2160 : vec3<f32> = ((x_2154 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2157.x, x_2157.y, x_2157.z)));
  let x_2161 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
  let x_2163 : vec3<f32> = vs_TEXCOORD1;
  let x_2166 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
  let x_2169 : vec3<f32> = ((x_2163 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2166.x, x_2166.y, x_2166.z)));
  let x_2170 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
  let x_2172 : vec3<f32> = vs_TEXCOORD1;
  let x_2175 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
  let x_2178 : vec3<f32> = ((x_2172 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2175.x, x_2175.y, x_2175.z)));
  let x_2179 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2179.w);
  let x_2181 : vec4<f32> = u_xlat5;
  let x_2183 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2181.x, x_2181.y, x_2181.z), vec3<f32>(x_2183.x, x_2183.y, x_2183.z));
  let x_2187 : vec4<f32> = u_xlat6;
  let x_2189 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_2187.x, x_2187.y, x_2187.z), vec3<f32>(x_2189.x, x_2189.y, x_2189.z));
  let x_2193 : vec4<f32> = u_xlat7;
  let x_2195 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_2193.x, x_2193.y, x_2193.z), vec3<f32>(x_2195.x, x_2195.y, x_2195.z));
  let x_2199 : vec4<f32> = u_xlat8;
  let x_2201 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_2199.x, x_2199.y, x_2199.z), vec3<f32>(x_2201.x, x_2201.y, x_2201.z));
  let x_2206 : vec4<f32> = u_xlat5;
  let x_2208 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_2206 < x_2208);
  let x_2211 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_2211);
  let x_2215 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_2215);
  let x_2219 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_2219);
  let x_2223 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_2223);
  let x_2227 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_2227);
  let x_2231 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_2231);
  let x_2235 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_2235);
  let x_2238 : vec4<f32> = u_xlat5;
  let x_2240 : vec4<f32> = u_xlat6;
  let x_2242 : vec3<f32> = (vec3<f32>(x_2238.x, x_2238.y, x_2238.z) + vec3<f32>(x_2240.y, x_2240.z, x_2240.w));
  let x_2243 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
  let x_2245 : vec4<f32> = u_xlat5;
  let x_2247 : vec3<f32> = max(vec3<f32>(x_2245.x, x_2245.y, x_2245.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2248 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2248.x, x_2247.x, x_2247.y, x_2247.z);
  let x_2250 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_2250, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_2254 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_2254) + 4.0f);
  let x_2260 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_2260);
  let x_2263 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_2263) << bitcast<u32>(2i));
  let x_2268 : f32 = u_xlat4.y;
  let x_2269 : i32 = u_xlati0;
  let x_2272 : i32 = u_xlati0;
  let x_2276 : f32 = x_367.x_MainLightWorldToShadow[((x_2269 + 1i) / 4i)][((x_2272 + 1i) % 4i)].z;
  u_xlat19 = (x_2268 * x_2276);
  let x_2278 : i32 = u_xlati0;
  let x_2280 : i32 = u_xlati0;
  let x_2283 : f32 = x_367.x_MainLightWorldToShadow[(x_2278 / 4i)][(x_2280 % 4i)].z;
  let x_2285 : f32 = u_xlat4.x;
  let x_2287 : f32 = u_xlat19;
  u_xlat19 = ((x_2283 * x_2285) + x_2287);
  let x_2289 : i32 = u_xlati0;
  let x_2292 : i32 = u_xlati0;
  let x_2296 : f32 = x_367.x_MainLightWorldToShadow[((x_2289 + 2i) / 4i)][((x_2292 + 2i) % 4i)].z;
  let x_2298 : f32 = u_xlat4.z;
  let x_2300 : f32 = u_xlat19;
  u_xlat19 = ((x_2296 * x_2298) + x_2300);
  let x_2302 : f32 = u_xlat19;
  let x_2303 : i32 = u_xlati0;
  let x_2306 : i32 = u_xlati0;
  let x_2310 : f32 = x_367.x_MainLightWorldToShadow[((x_2303 + 3i) / 4i)][((x_2306 + 3i) % 4i)].z;
  u_xlat0.x = (x_2302 + x_2310);
  let x_2315 : f32 = u_xlat0.x;
  u_xlatb19 = (0.0f >= x_2315);
  let x_2319 : f32 = u_xlat0.x;
  u_xlatb0 = (x_2319 >= 1.0f);
  let x_2321 : bool = u_xlatb0;
  let x_2322 : bool = u_xlatb19;
  u_xlatb0 = (x_2321 | x_2322);
  let x_2324 : f32 = u_xlat61;
  u_xlat19 = (x_2324 * 0.25f);
  let x_2326 : bool = u_xlatb0;
  let x_2327 : f32 = u_xlat19;
  u_xlat0.x = select(x_2327, 1.0f, x_2326);
  u_xlat2.w = 1.0f;
  let x_2337 : vec4<f32> = x_2334.unity_SHAr;
  let x_2338 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_2337, x_2338);
  let x_2343 : vec4<f32> = x_2334.unity_SHAg;
  let x_2344 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_2343, x_2344);
  let x_2349 : vec4<f32> = x_2334.unity_SHAb;
  let x_2350 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_2349, x_2350);
  let x_2353 : vec4<f32> = u_xlat2;
  let x_2355 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_2353.y, x_2353.z, x_2353.z, x_2353.x) * vec4<f32>(x_2355.x, x_2355.y, x_2355.z, x_2355.z));
  let x_2360 : vec4<f32> = x_2334.unity_SHBr;
  let x_2361 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_2360, x_2361);
  let x_2366 : vec4<f32> = x_2334.unity_SHBg;
  let x_2367 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_2366, x_2367);
  let x_2372 : vec4<f32> = x_2334.unity_SHBb;
  let x_2373 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_2372, x_2373);
  let x_2377 : f32 = u_xlat2.y;
  let x_2379 : f32 = u_xlat2.y;
  u_xlat19 = (x_2377 * x_2379);
  let x_2382 : f32 = u_xlat2.x;
  let x_2384 : f32 = u_xlat2.x;
  let x_2386 : f32 = u_xlat19;
  u_xlat19 = ((x_2382 * x_2384) + -(x_2386));
  let x_2391 : vec4<f32> = x_2334.unity_SHC;
  let x_2393 : f32 = u_xlat19;
  let x_2396 : vec4<f32> = u_xlat6;
  let x_2398 : vec3<f32> = ((vec3<f32>(x_2391.x, x_2391.y, x_2391.z) * vec3<f32>(x_2393, x_2393, x_2393)) + vec3<f32>(x_2396.x, x_2396.y, x_2396.z));
  let x_2399 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
  let x_2401 : vec4<f32> = u_xlat4;
  let x_2403 : vec4<f32> = u_xlat5;
  let x_2405 : vec3<f32> = (vec3<f32>(x_2401.x, x_2401.y, x_2401.z) + vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
  let x_2406 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
  let x_2408 : vec4<f32> = u_xlat4;
  let x_2410 : vec3<f32> = max(vec3<f32>(x_2408.x, x_2408.y, x_2408.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2411 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
  let x_2413 : vec3<f32> = vs_TEXCOORD2;
  let x_2415 : vec4<f32> = x_40.x_MainLightPosition;
  u_xlat19 = dot(x_2413, -(vec3<f32>(x_2415.x, x_2415.y, x_2415.z)));
  let x_2419 : f32 = u_xlat19;
  let x_2421 : f32 = vs_TEXCOORD5.z;
  u_xlat19 = (x_2419 * x_2421);
  let x_2424 : f32 = u_xlat19;
  let x_2425 : f32 = u_xlat19;
  u_xlat59 = (x_2424 * x_2425);
  let x_2427 : f32 = u_xlat19;
  let x_2428 : f32 = u_xlat59;
  u_xlat19 = (x_2427 * x_2428);
  let x_2430 : f32 = u_xlat19;
  u_xlat19 = clamp(x_2430, 0.0f, 1.0f);
  let x_2432 : f32 = u_xlat19;
  u_xlat19 = (x_2432 * 5.0f);
  let x_2435 : f32 = u_xlat19;
  let x_2438 : vec4<f32> = x_40.x_MainLightColor;
  let x_2440 : vec3<f32> = (vec3<f32>(x_2435, x_2435, x_2435) * vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
  let x_2441 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
  let x_2444 : vec4<f32> = x_40.x_MainLightPosition;
  let x_2447 : vec4<f32> = x_40.x_MainLightColor;
  let x_2450 : vec4<f32> = u_xlat5;
  let x_2452 : vec3<f32> = ((vec3<f32>(x_2444.y, x_2444.y, x_2444.y) * vec3<f32>(x_2447.x, x_2447.y, x_2447.z)) + vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2453 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
  let x_2455 : vec4<f32> = u_xlat5;
  let x_2457 : vec4<f32> = u_xlat0;
  let x_2460 : vec4<f32> = u_xlat4;
  let x_2462 : vec3<f32> = ((vec3<f32>(x_2455.x, x_2455.y, x_2455.z) * vec3<f32>(x_2457.x, x_2457.x, x_2457.x)) + vec3<f32>(x_2460.x, x_2460.y, x_2460.z));
  let x_2463 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2462.x, x_2462.y, x_2462.z, x_2463.w);
  let x_2470 : vec4<f32> = vs_TEXCOORD0;
  let x_2473 : f32 = x_40.x_GlobalMipBias.x;
  let x_2474 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_2470.z, x_2470.w), x_2473);
  let x_2475 : vec3<f32> = vec3<f32>(x_2474.x, x_2474.y, x_2474.z);
  let x_2476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
  let x_2479 : f32 = u_xlat41.x;
  u_xlat41.x = x_2479;
  let x_2482 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_2482, 0.0f, 1.0f);
  let x_2486 : f32 = vs_TEXCOORD5.z;
  u_xlat19 = (x_2486 + -0.375f);
  let x_2489 : f32 = u_xlat19;
  u_xlat19 = clamp(x_2489, 0.0f, 1.0f);
  let x_2491 : f32 = u_xlat38;
  u_xlat59 = ((-(x_2491) * 4.0f) + 1.0f);
  let x_2495 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2495, 0.0f, 1.0f);
  let x_2497 : f32 = u_xlat57;
  let x_2498 : f32 = u_xlat38;
  u_xlat57 = min(x_2497, x_2498);
  let x_2500 : f32 = u_xlat57;
  u_xlat57 = ((-(x_2500) * 0.5f) + 0.75f);
  let x_2505 : f32 = u_xlat59;
  let x_2507 : f32 = u_xlat57;
  u_xlat57 = ((x_2505 * 0.5f) + x_2507);
  let x_2509 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2509, 0.0f, 1.0f);
  let x_2512 : f32 = u_xlat41.x;
  let x_2513 : f32 = u_xlat57;
  u_xlat57 = (x_2512 * x_2513);
  let x_2515 : f32 = u_xlat57;
  let x_2516 : f32 = u_xlat19;
  u_xlat19 = max(x_2515, x_2516);
  let x_2519 : f32 = u_xlat1.x;
  let x_2521 : f32 = u_xlat1.x;
  u_xlat57 = (x_2519 + x_2521);
  let x_2523 : f32 = u_xlat57;
  let x_2524 : f32 = u_xlat19;
  u_xlat7.x = max(x_2523, x_2524);
  u_xlat7.y = 0.66000002622604370117f;
  let x_2534 : vec4<f32> = u_xlat7;
  let x_2537 : f32 = x_40.x_GlobalMipBias.x;
  let x_2538 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2534.x, x_2534.y), x_2537);
  let x_2539 : vec3<f32> = vec3<f32>(x_2538.x, x_2538.y, x_2538.z);
  let x_2540 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
  let x_2542 : vec4<f32> = u_xlat6;
  let x_2544 : vec4<f32> = u_xlat7;
  let x_2546 : vec3<f32> = (vec3<f32>(x_2542.x, x_2542.y, x_2542.z) * vec3<f32>(x_2544.x, x_2544.y, x_2544.z));
  let x_2547 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2546.x, x_2546.y, x_2546.z, x_2547.w);
  let x_2549 : vec4<f32> = u_xlat6;
  let x_2551 : vec4<f32> = u_xlat6;
  u_xlat19 = dot(vec3<f32>(x_2549.x, x_2549.y, x_2549.z), vec3<f32>(x_2551.x, x_2551.y, x_2551.z));
  let x_2554 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_2554);
  let x_2556 : f32 = u_xlat19;
  u_xlat19 = ((x_2556 * 1.5f) + -0.10000000149011611938f);
  let x_2560 : f32 = u_xlat19;
  u_xlat19 = clamp(x_2560, 0.0f, 1.0f);
  let x_2562 : vec3<f32> = u_xlat22;
  let x_2565 : vec4<f32> = x_40.x_MainLightColor;
  let x_2568 : vec4<f32> = u_xlat4;
  let x_2570 : vec3<f32> = ((vec3<f32>(x_2562.x, x_2562.x, x_2562.x) * vec3<f32>(x_2565.x, x_2565.y, x_2565.z)) + vec3<f32>(x_2568.x, x_2568.y, x_2568.z));
  let x_2571 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
  let x_2573 : vec3<f32> = vs_TEXCOORD2;
  let x_2575 : vec4<f32> = x_40.x_MainLightPosition;
  let x_2577 : vec3<f32> = (x_2573 + vec3<f32>(x_2575.x, x_2575.y, x_2575.z));
  let x_2578 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2577.x, x_2577.y, x_2577.z, x_2578.w);
  let x_2580 : vec4<f32> = u_xlat6;
  let x_2582 : vec4<f32> = u_xlat6;
  u_xlat57 = dot(vec3<f32>(x_2580.x, x_2580.y, x_2580.z), vec3<f32>(x_2582.x, x_2582.y, x_2582.z));
  let x_2585 : f32 = u_xlat57;
  u_xlat57 = max(x_2585, 1.17549435e-38f);
  let x_2588 : f32 = u_xlat57;
  u_xlat57 = inverseSqrt(x_2588);
  let x_2590 : f32 = u_xlat57;
  let x_2592 : vec4<f32> = u_xlat6;
  let x_2594 : vec3<f32> = (vec3<f32>(x_2590, x_2590, x_2590) * vec3<f32>(x_2592.x, x_2592.y, x_2592.z));
  let x_2595 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2595.w);
  let x_2597 : vec4<f32> = u_xlat2;
  let x_2599 : vec4<f32> = u_xlat6;
  u_xlat57 = dot(vec3<f32>(x_2597.x, x_2597.y, x_2597.z), vec3<f32>(x_2599.x, x_2599.y, x_2599.z));
  let x_2602 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2602, 0.0f, 1.0f);
  let x_2605 : vec4<f32> = x_40.x_MainLightPosition;
  let x_2607 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_2605.x, x_2605.y, x_2605.z), vec3<f32>(x_2607.x, x_2607.y, x_2607.z));
  let x_2612 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2612, 0.0f, 1.0f);
  let x_2615 : f32 = u_xlat57;
  let x_2616 : f32 = u_xlat57;
  u_xlat57 = (x_2615 * x_2616);
  let x_2618 : f32 = u_xlat57;
  u_xlat57 = ((x_2618 * -0.99993896484375f) + 1.00001001358032226562f);
  let x_2624 : f32 = u_xlat1.x;
  let x_2626 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2624 * x_2626);
  let x_2629 : f32 = u_xlat57;
  let x_2630 : f32 = u_xlat57;
  u_xlat57 = (x_2629 * x_2630);
  let x_2633 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2633, 0.10000000149011611938f);
  let x_2636 : f32 = u_xlat57;
  let x_2638 : f32 = u_xlat1.x;
  u_xlat57 = (x_2636 * x_2638);
  let x_2640 : f32 = u_xlat57;
  u_xlat57 = (x_2640 * 2.03125f);
  let x_2644 : f32 = u_xlat57;
  u_xlat57 = (0.00006103515625f / x_2644);
  let x_2647 : f32 = u_xlat0.x;
  let x_2648 : f32 = u_xlat57;
  u_xlat0.x = (x_2647 * x_2648);
  let x_2652 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2652 * 0.03999999910593032837f);
  let x_2656 : vec4<f32> = u_xlat0;
  let x_2659 : vec4<f32> = x_40.x_MainLightColor;
  let x_2661 : vec3<f32> = (vec3<f32>(x_2656.x, x_2656.x, x_2656.x) * vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
  let x_2662 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
  let x_2665 : f32 = x_40.x_AdditionalLightsCount.x;
  let x_2667 : f32 = x_2334.unity_LightData.y;
  u_xlat0.x = min(x_2665, x_2667);
  let x_2671 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2671));
  let x_2674 : vec4<f32> = u_xlat5;
  let x_2675 : vec3<f32> = vec3<f32>(x_2674.x, x_2674.y, x_2674.z);
  let x_2676 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2675.x, x_2675.y, x_2675.z, x_2676.w);
  let x_2678 : vec4<f32> = u_xlat6;
  let x_2679 : vec3<f32> = vec3<f32>(x_2678.x, x_2678.y, x_2678.z);
  let x_2680 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2679.x, x_2679.y, x_2679.z, x_2680.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_2688 : u32 = u_xlatu_loop_2;
    let x_2689 : u32 = u_xlatu0;
    if ((x_2688 < x_2689)) {
    } else {
      break;
    }
    let x_2692 : u32 = u_xlatu_loop_2;
    u_xlatu1 = (x_2692 >> 2u);
    let x_2695 : u32 = u_xlatu_loop_2;
    u_xlati59 = bitcast<i32>((x_2695 & 3u));
    let x_2698 : u32 = u_xlatu1;
    let x_2701 : vec4<f32> = x_2334.unity_LightIndices[bitcast<i32>(x_2698)];
    let x_2710 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2715 : vec4<u32> = indexable[x_2710];
    u_xlat1.x = dot(x_2701, bitcast<vec4<f32>>(x_2715));
    let x_2721 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_2721);
    let x_2723 : vec3<f32> = vs_TEXCOORD1;
    let x_2734 : i32 = u_xlati1;
    let x_2736 : vec4<f32> = x_2733.x_AdditionalLightsPosition[x_2734];
    let x_2739 : i32 = u_xlati1;
    let x_2741 : vec4<f32> = x_2733.x_AdditionalLightsPosition[x_2739];
    let x_2743 : vec3<f32> = ((-(x_2723) * vec3<f32>(x_2736.w, x_2736.w, x_2736.w)) + vec3<f32>(x_2741.x, x_2741.y, x_2741.z));
    let x_2744 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
    let x_2746 : vec4<f32> = u_xlat9;
    let x_2748 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2746.x, x_2746.y, x_2746.z), vec3<f32>(x_2748.x, x_2748.y, x_2748.z));
    let x_2751 : f32 = u_xlat59;
    u_xlat59 = max(x_2751, 0.00006103515625f);
    let x_2753 : f32 = u_xlat59;
    u_xlat22.x = inverseSqrt(x_2753);
    let x_2756 : vec3<f32> = u_xlat22;
    let x_2758 : vec4<f32> = u_xlat9;
    let x_2760 : vec3<f32> = (vec3<f32>(x_2756.x, x_2756.x, x_2756.x) * vec3<f32>(x_2758.x, x_2758.y, x_2758.z));
    let x_2761 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
    let x_2763 : f32 = u_xlat59;
    u_xlat41.x = (1.0f / x_2763);
    let x_2766 : f32 = u_xlat59;
    let x_2767 : i32 = u_xlati1;
    let x_2769 : f32 = x_2733.x_AdditionalLightsAttenuation[x_2767].x;
    u_xlat59 = (x_2766 * x_2769);
    let x_2771 : f32 = u_xlat59;
    let x_2773 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2771) * x_2773) + 1.0f);
    let x_2776 : f32 = u_xlat59;
    u_xlat59 = max(x_2776, 0.0f);
    let x_2778 : f32 = u_xlat59;
    let x_2779 : f32 = u_xlat59;
    u_xlat59 = (x_2778 * x_2779);
    let x_2781 : f32 = u_xlat59;
    let x_2783 : f32 = u_xlat41.x;
    u_xlat59 = (x_2781 * x_2783);
    let x_2785 : i32 = u_xlati1;
    let x_2787 : vec4<f32> = x_2733.x_AdditionalLightsSpotDir[x_2785];
    let x_2789 : vec4<f32> = u_xlat10;
    u_xlat41.x = dot(vec3<f32>(x_2787.x, x_2787.y, x_2787.z), vec3<f32>(x_2789.x, x_2789.y, x_2789.z));
    let x_2794 : f32 = u_xlat41.x;
    let x_2795 : i32 = u_xlati1;
    let x_2797 : f32 = x_2733.x_AdditionalLightsAttenuation[x_2795].z;
    let x_2799 : i32 = u_xlati1;
    let x_2801 : f32 = x_2733.x_AdditionalLightsAttenuation[x_2799].w;
    u_xlat41.x = ((x_2794 * x_2797) + x_2801);
    let x_2805 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2805, 0.0f, 1.0f);
    let x_2809 : f32 = u_xlat41.x;
    let x_2811 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2809 * x_2811);
    let x_2814 : f32 = u_xlat59;
    let x_2816 : f32 = u_xlat41.x;
    u_xlat59 = (x_2814 * x_2816);
    let x_2818 : vec4<f32> = u_xlat2;
    let x_2820 : vec4<f32> = u_xlat10;
    u_xlat41.x = dot(vec3<f32>(x_2818.x, x_2818.y, x_2818.z), vec3<f32>(x_2820.x, x_2820.y, x_2820.z));
    let x_2825 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2825, 0.0f, 1.0f);
    let x_2828 : f32 = u_xlat59;
    let x_2830 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2828 * x_2830);
    let x_2833 : vec2<f32> = u_xlat41;
    let x_2835 : i32 = u_xlati1;
    let x_2837 : vec4<f32> = x_2733.x_AdditionalLightsColor[x_2835];
    let x_2839 : vec3<f32> = (vec3<f32>(x_2833.x, x_2833.x, x_2833.x) * vec3<f32>(x_2837.x, x_2837.y, x_2837.z));
    let x_2840 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2840.w);
    let x_2842 : vec4<f32> = u_xlat9;
    let x_2844 : vec3<f32> = u_xlat22;
    let x_2847 : vec3<f32> = vs_TEXCOORD2;
    let x_2848 : vec3<f32> = ((vec3<f32>(x_2842.x, x_2842.y, x_2842.z) * vec3<f32>(x_2844.x, x_2844.x, x_2844.x)) + x_2847);
    let x_2849 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2848.x, x_2848.y, x_2848.z, x_2849.w);
    let x_2851 : vec4<f32> = u_xlat9;
    let x_2853 : vec4<f32> = u_xlat9;
    u_xlat22.x = dot(vec3<f32>(x_2851.x, x_2851.y, x_2851.z), vec3<f32>(x_2853.x, x_2853.y, x_2853.z));
    let x_2858 : f32 = u_xlat22.x;
    u_xlat22.x = max(x_2858, 1.17549435e-38f);
    let x_2862 : f32 = u_xlat22.x;
    u_xlat22.x = inverseSqrt(x_2862);
    let x_2865 : vec3<f32> = u_xlat22;
    let x_2867 : vec4<f32> = u_xlat9;
    let x_2869 : vec3<f32> = (vec3<f32>(x_2865.x, x_2865.x, x_2865.x) * vec3<f32>(x_2867.x, x_2867.y, x_2867.z));
    let x_2870 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2869.x, x_2869.y, x_2869.z, x_2870.w);
    let x_2872 : vec4<f32> = u_xlat2;
    let x_2874 : vec4<f32> = u_xlat9;
    u_xlat22.x = dot(vec3<f32>(x_2872.x, x_2872.y, x_2872.z), vec3<f32>(x_2874.x, x_2874.y, x_2874.z));
    let x_2879 : f32 = u_xlat22.x;
    u_xlat22.x = clamp(x_2879, 0.0f, 1.0f);
    let x_2882 : vec4<f32> = u_xlat10;
    let x_2884 : vec4<f32> = u_xlat9;
    u_xlat22.y = dot(vec3<f32>(x_2882.x, x_2882.y, x_2882.z), vec3<f32>(x_2884.x, x_2884.y, x_2884.z));
    let x_2889 : f32 = u_xlat22.y;
    u_xlat22.y = clamp(x_2889, 0.0f, 1.0f);
    let x_2892 : vec3<f32> = u_xlat22;
    let x_2894 : vec3<f32> = u_xlat22;
    let x_2896 : vec2<f32> = (vec2<f32>(x_2892.x, x_2892.y) * vec2<f32>(x_2894.x, x_2894.y));
    let x_2897 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2896.x, x_2896.y, x_2897.z);
    let x_2900 : f32 = u_xlat22.x;
    u_xlat22.x = ((x_2900 * -0.99993896484375f) + 1.00001001358032226562f);
    let x_2905 : f32 = u_xlat22.x;
    let x_2907 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2905 * x_2907);
    let x_2911 : f32 = u_xlat22.y;
    u_xlat41.x = max(x_2911, 0.10000000149011611938f);
    let x_2915 : f32 = u_xlat41.x;
    let x_2917 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2915 * x_2917);
    let x_2921 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2921 * 2.03125f);
    let x_2925 : f32 = u_xlat22.x;
    u_xlat22.x = (0.00006103515625f / x_2925);
    let x_2929 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2929 * 0.03999999910593032837f);
    let x_2932 : vec3<f32> = u_xlat22;
    let x_2934 : vec4<f32> = u_xlat11;
    let x_2937 : vec4<f32> = u_xlat8;
    let x_2939 : vec3<f32> = ((vec3<f32>(x_2932.x, x_2932.x, x_2932.x) * vec3<f32>(x_2934.x, x_2934.y, x_2934.z)) + vec3<f32>(x_2937.x, x_2937.y, x_2937.z));
    let x_2940 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2940.w);
    let x_2942 : f32 = u_xlat59;
    let x_2944 : i32 = u_xlati1;
    let x_2946 : vec4<f32> = x_2733.x_AdditionalLightsColor[x_2944];
    let x_2949 : vec4<f32> = u_xlat7;
    let x_2951 : vec3<f32> = ((vec3<f32>(x_2942, x_2942, x_2942) * vec3<f32>(x_2946.x, x_2946.y, x_2946.z)) + vec3<f32>(x_2949.x, x_2949.y, x_2949.z));
    let x_2952 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2951.x, x_2951.y, x_2951.z, x_2952.w);

    continuing {
      let x_2954 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_2954 + bitcast<u32>(1i));
    }
  }
  let x_2956 : f32 = u_xlat58;
  let x_2957 : f32 = u_xlat38;
  u_xlat5.x = (x_2956 * x_2957);
  u_xlat5.y = 0.375f;
  u_xlat5.z = 0.0f;
  let x_2966 : vec4<f32> = u_xlat5;
  let x_2969 : f32 = x_40.x_GlobalMipBias.x;
  let x_2970 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2966.x, x_2966.y), x_2969);
  let x_2971 : vec3<f32> = vec3<f32>(x_2970.x, x_2970.y, x_2970.z);
  let x_2972 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2971.x, x_2972.y, x_2971.y, x_2971.z);
  let x_2974 : vec3<f32> = vs_TEXCOORD2;
  let x_2976 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(-(x_2974), vec3<f32>(x_2976.x, x_2976.y, x_2976.z));
  let x_2981 : f32 = u_xlat1.x;
  let x_2983 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2981 + x_2983);
  let x_2986 : vec4<f32> = u_xlat2;
  let x_2988 : vec3<f32> = u_xlat1;
  let x_2992 : vec3<f32> = vs_TEXCOORD2;
  let x_2994 : vec3<f32> = ((vec3<f32>(x_2986.x, x_2986.y, x_2986.z) * -(vec3<f32>(x_2988.x, x_2988.x, x_2988.x))) + -(x_2992));
  let x_2995 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2994.x, x_2994.y, x_2994.z, x_2995.w);
  let x_3005 : vec4<f32> = u_xlat2;
  let x_3008 : f32 = x_40.x_GlobalMipBias.x;
  let x_3009 : vec4<f32> = textureSampleBias(x_CubemapTexture, sampler_CubemapTexture, vec3<f32>(x_3005.x, x_3005.y, x_3005.z), x_3008);
  let x_3010 : vec3<f32> = vec3<f32>(x_3009.x, x_3009.y, x_3009.z);
  let x_3011 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
  let x_3018 : vec2<f32> = u_xlat20;
  let x_3020 : f32 = u_xlat41.y;
  let x_3021 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_3018, x_3020);
  u_xlat1 = vec3<f32>(x_3021.x, x_3021.y, x_3021.z);
  let x_3026 : vec4<f32> = u_xlat5;
  let x_3029 : f32 = x_40.x_GlobalMipBias.x;
  let x_3030 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_3026.x, x_3026.z), x_3029);
  u_xlat22 = vec3<f32>(x_3030.x, x_3030.y, x_3030.z);
  let x_3032 : vec3<f32> = u_xlat1;
  let x_3033 : vec3<f32> = u_xlat22;
  let x_3034 : vec3<f32> = (x_3032 * x_3033);
  let x_3035 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3034.x, x_3034.y, x_3034.z, x_3035.w);
  let x_3037 : vec3<f32> = u_xlat1;
  let x_3039 : vec3<f32> = u_xlat22;
  let x_3041 : vec4<f32> = u_xlat2;
  u_xlat1 = ((-(x_3037) * x_3039) + vec3<f32>(x_3041.x, x_3041.y, x_3041.z));
  let x_3044 : f32 = u_xlat3;
  let x_3046 : vec3<f32> = u_xlat1;
  let x_3048 : vec4<f32> = u_xlat5;
  u_xlat1 = ((vec3<f32>(x_3044, x_3044, x_3044) * x_3046) + vec3<f32>(x_3048.x, x_3048.y, x_3048.z));
  let x_3051 : vec4<f32> = u_xlat7;
  let x_3053 : vec4<f32> = u_xlat0;
  let x_3056 : vec3<f32> = u_xlat1;
  let x_3057 : vec3<f32> = ((vec3<f32>(x_3051.x, x_3051.y, x_3051.z) * vec3<f32>(x_3053.x, x_3053.z, x_3053.w)) + x_3056);
  let x_3058 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3057.x, x_3058.y, x_3057.y, x_3057.z);
  let x_3060 : vec4<f32> = u_xlat8;
  let x_3062 : vec4<f32> = u_xlat0;
  let x_3064 : vec3<f32> = (vec3<f32>(x_3060.x, x_3060.y, x_3060.z) + vec3<f32>(x_3062.x, x_3062.z, x_3062.w));
  let x_3065 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3064.x, x_3065.y, x_3064.y, x_3064.z);
  let x_3067 : f32 = u_xlat19;
  let x_3069 : vec4<f32> = u_xlat4;
  let x_3072 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_3067, x_3067, x_3067) * vec3<f32>(x_3069.x, x_3069.y, x_3069.z)) + -(vec3<f32>(x_3072.x, x_3072.z, x_3072.w)));
  let x_3076 : f32 = u_xlat19;
  let x_3078 : vec3<f32> = u_xlat1;
  let x_3080 : vec4<f32> = u_xlat0;
  let x_3082 : vec3<f32> = ((vec3<f32>(x_3076, x_3076, x_3076) * x_3078) + vec3<f32>(x_3080.x, x_3080.z, x_3080.w));
  let x_3083 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3082.x, x_3082.y, x_3082.z, x_3083.w);
  let x_3088 : f32 = vs_TEXCOORD4.x;
  let x_3090 : f32 = vs_TEXCOORD4.x;
  u_xlat57 = (x_3088 * -(x_3090));
  let x_3093 : f32 = u_xlat57;
  u_xlat57 = exp2(x_3093);
  let x_3095 : vec4<f32> = u_xlat0;
  let x_3098 : vec4<f32> = x_40.unity_FogColor;
  let x_3101 : vec3<f32> = (vec3<f32>(x_3095.x, x_3095.y, x_3095.z) + -(vec3<f32>(x_3098.x, x_3098.y, x_3098.z)));
  let x_3102 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3101.x, x_3101.y, x_3101.z, x_3102.w);
  let x_3106 : f32 = u_xlat57;
  let x_3108 : vec4<f32> = u_xlat0;
  let x_3112 : vec4<f32> = x_40.unity_FogColor;
  let x_3114 : vec3<f32> = ((vec3<f32>(x_3106, x_3106, x_3106) * vec3<f32>(x_3108.x, x_3108.y, x_3108.z)) + vec3<f32>(x_3112.x, x_3112.y, x_3112.z));
  let x_3115 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3114.x, x_3114.y, x_3114.z, x_3115.w);
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


