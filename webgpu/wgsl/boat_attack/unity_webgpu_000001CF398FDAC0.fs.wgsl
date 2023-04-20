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
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(176) */
  x_MaxDepth : f32,
  /* @offset(192) */
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

@group(1) @binding(2) var<uniform> x_2333 : UnityPerDraw;

var<private> u_xlat59 : f32;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(15) var sampler_AbsorptionScatteringRamp : sampler;

var<private> u_xlatu1 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati1 : i32;

@group(1) @binding(1) var<uniform> x_2732 : AdditionalLights;

@group(0) @binding(0) var x_CubemapTexture : texture_cube<f32>;

@group(0) @binding(11) var sampler_CubemapTexture : sampler;

@group(0) @binding(3) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraOpaqueTexture_linear_clamp : sampler;

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
  var x_1819 : f32;
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
      let x_609 : vec4<f32> = x_367.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_606.x, x_606.y, x_606.x, x_606.y) + x_609);
      let x_612 : vec4<f32> = u_xlat4;
      let x_613 : vec2<f32> = vec2<f32>(x_612.x, x_612.y);
      let x_615 : f32 = u_xlat22.z;
      txVec2 = vec3<f32>(x_613.x, x_613.y, x_615);
      let x_622 : vec3<f32> = txVec2;
      let x_624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_622.xy, x_622.z);
      u_xlat5.z = x_624;
      let x_627 : vec4<f32> = u_xlat4;
      let x_628 : vec2<f32> = vec2<f32>(x_627.z, x_627.w);
      let x_630 : f32 = u_xlat22.z;
      txVec3 = vec3<f32>(x_628.x, x_628.y, x_630);
      let x_637 : vec3<f32> = txVec3;
      let x_639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_637.xy, x_637.z);
      u_xlat5.w = x_639;
      let x_641 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(x_641, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_648 : f32 = x_367.x_MainLightShadowParams.y;
      u_xlatb23 = (x_648 == 2.0f);
      let x_650 : bool = u_xlatb23;
      if (x_650) {
        let x_654 : vec3<f32> = u_xlat22;
        let x_657 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_654.x, x_654.y) * vec2<f32>(x_657.z, x_657.w)) + vec2<f32>(0.5f, 0.5f));
        let x_661 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_661);
        let x_663 : vec3<f32> = u_xlat22;
        let x_666 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_669 : vec2<f32> = u_xlat23;
        let x_671 : vec2<f32> = ((vec2<f32>(x_663.x, x_663.y) * vec2<f32>(x_666.z, x_666.w)) + -(x_669));
        let x_672 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_674.x, x_674.x, x_674.y, x_674.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_678 : vec4<f32> = u_xlat6;
        let x_680 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_678.x, x_678.x, x_678.z, x_678.z) * vec4<f32>(x_680.x, x_680.x, x_680.z, x_680.z));
        let x_684 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_684.y, x_684.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_689 : vec4<f32> = u_xlat7;
        let x_692 : vec4<f32> = u_xlat5;
        let x_695 : vec2<f32> = ((vec2<f32>(x_689.x, x_689.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_692.x, x_692.y)));
        let x_696 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_695.x, x_696.y, x_695.y, x_696.w);
        let x_698 : vec4<f32> = u_xlat5;
        let x_702 : vec2<f32> = (-(vec2<f32>(x_698.x, x_698.y)) + vec2<f32>(1.0f, 1.0f));
        let x_703 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_706 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_706.x, x_706.y), vec2<f32>(0.0f, 0.0f));
        let x_710 : vec2<f32> = u_xlat45;
        let x_712 : vec2<f32> = u_xlat45;
        let x_714 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_710) * x_712) + vec2<f32>(x_714.x, x_714.y));
        let x_717 : vec4<f32> = u_xlat5;
        let x_719 : vec2<f32> = max(vec2<f32>(x_717.x, x_717.y), vec2<f32>(0.0f, 0.0f));
        let x_720 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_719.x, x_719.y, x_720.z, x_720.w);
        let x_722 : vec4<f32> = u_xlat5;
        let x_725 : vec4<f32> = u_xlat5;
        let x_728 : vec4<f32> = u_xlat6;
        let x_730 : vec2<f32> = ((-(vec2<f32>(x_722.x, x_722.y)) * vec2<f32>(x_725.x, x_725.y)) + vec2<f32>(x_728.y, x_728.w));
        let x_731 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
        let x_733 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_733 + vec2<f32>(1.0f, 1.0f));
        let x_735 : vec4<f32> = u_xlat5;
        let x_737 : vec2<f32> = (vec2<f32>(x_735.x, x_735.y) + vec2<f32>(1.0f, 1.0f));
        let x_738 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_737.x, x_737.y, x_738.z, x_738.w);
        let x_741 : vec4<f32> = u_xlat6;
        let x_745 : vec2<f32> = (vec2<f32>(x_741.x, x_741.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_746 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
        let x_749 : vec4<f32> = u_xlat7;
        let x_751 : vec2<f32> = (vec2<f32>(x_749.x, x_749.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_752 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
        let x_754 : vec2<f32> = u_xlat45;
        let x_755 : vec2<f32> = (x_754 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_756 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
        let x_759 : vec4<f32> = u_xlat5;
        let x_761 : vec2<f32> = (vec2<f32>(x_759.x, x_759.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_762 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat6;
        let x_766 : vec2<f32> = (vec2<f32>(x_764.y, x_764.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_767 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_770 : f32 = u_xlat7.x;
        u_xlat8.z = x_770;
        let x_773 : f32 = u_xlat5.x;
        u_xlat8.w = x_773;
        let x_776 : f32 = u_xlat10.x;
        u_xlat9.z = x_776;
        let x_779 : f32 = u_xlat43.x;
        u_xlat9.w = x_779;
        let x_781 : vec4<f32> = u_xlat8;
        let x_783 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_781.z, x_781.w, x_781.x, x_781.z) + vec4<f32>(x_783.z, x_783.w, x_783.x, x_783.z));
        let x_787 : f32 = u_xlat8.y;
        u_xlat7.z = x_787;
        let x_790 : f32 = u_xlat5.y;
        u_xlat7.w = x_790;
        let x_793 : f32 = u_xlat9.y;
        u_xlat10.z = x_793;
        let x_796 : f32 = u_xlat43.y;
        u_xlat10.w = x_796;
        let x_798 : vec4<f32> = u_xlat7;
        let x_800 : vec4<f32> = u_xlat10;
        let x_802 : vec3<f32> = (vec3<f32>(x_798.z, x_798.y, x_798.w) + vec3<f32>(x_800.z, x_800.y, x_800.w));
        let x_803 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
        let x_805 : vec4<f32> = u_xlat9;
        let x_807 : vec4<f32> = u_xlat6;
        let x_809 : vec3<f32> = (vec3<f32>(x_805.x, x_805.z, x_805.w) / vec3<f32>(x_807.z, x_807.w, x_807.y));
        let x_810 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
        let x_812 : vec4<f32> = u_xlat7;
        let x_818 : vec3<f32> = (vec3<f32>(x_812.x, x_812.y, x_812.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_819 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
        let x_821 : vec4<f32> = u_xlat10;
        let x_823 : vec4<f32> = u_xlat5;
        let x_825 : vec3<f32> = (vec3<f32>(x_821.z, x_821.y, x_821.w) / vec3<f32>(x_823.x, x_823.y, x_823.z));
        let x_826 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
        let x_828 : vec4<f32> = u_xlat8;
        let x_830 : vec3<f32> = (vec3<f32>(x_828.x, x_828.y, x_828.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_831 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
        let x_833 : vec4<f32> = u_xlat7;
        let x_836 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_838 : vec3<f32> = (vec3<f32>(x_833.y, x_833.x, x_833.z) * vec3<f32>(x_836.x, x_836.x, x_836.x));
        let x_839 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
        let x_841 : vec4<f32> = u_xlat8;
        let x_844 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_846 : vec3<f32> = (vec3<f32>(x_841.x, x_841.y, x_841.z) * vec3<f32>(x_844.y, x_844.y, x_844.y));
        let x_847 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
        let x_850 : f32 = u_xlat8.x;
        u_xlat7.w = x_850;
        let x_852 : vec2<f32> = u_xlat23;
        let x_855 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_858 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_852.x, x_852.y, x_852.x, x_852.y) * vec4<f32>(x_855.x, x_855.y, x_855.x, x_855.y)) + vec4<f32>(x_858.y, x_858.w, x_858.x, x_858.w));
        let x_861 : vec2<f32> = u_xlat23;
        let x_863 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_866 : vec4<f32> = u_xlat7;
        let x_868 : vec2<f32> = ((x_861 * vec2<f32>(x_863.x, x_863.y)) + vec2<f32>(x_866.z, x_866.w));
        let x_869 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
        let x_872 : f32 = u_xlat7.y;
        u_xlat8.w = x_872;
        let x_874 : vec4<f32> = u_xlat8;
        let x_875 : vec2<f32> = vec2<f32>(x_874.y, x_874.z);
        let x_876 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_876.x, x_875.x, x_876.z, x_875.y);
        let x_879 : vec2<f32> = u_xlat23;
        let x_882 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_885 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_879.x, x_879.y, x_879.x, x_879.y) * vec4<f32>(x_882.x, x_882.y, x_882.x, x_882.y)) + vec4<f32>(x_885.x, x_885.y, x_885.z, x_885.y));
        let x_888 : vec2<f32> = u_xlat23;
        let x_891 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_894 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_888.x, x_888.y, x_888.x, x_888.y) * vec4<f32>(x_891.x, x_891.y, x_891.x, x_891.y)) + vec4<f32>(x_894.w, x_894.y, x_894.w, x_894.z));
        let x_897 : vec2<f32> = u_xlat23;
        let x_900 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_903 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_897.x, x_897.y, x_897.x, x_897.y) * vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y)) + vec4<f32>(x_903.x, x_903.w, x_903.z, x_903.w));
        let x_907 : vec4<f32> = u_xlat5;
        let x_909 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_907.x, x_907.x, x_907.x, x_907.y) * vec4<f32>(x_909.z, x_909.w, x_909.y, x_909.z));
        let x_913 : vec4<f32> = u_xlat5;
        let x_915 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_913.y, x_913.y, x_913.z, x_913.z) * x_915);
        let x_918 : f32 = u_xlat5.z;
        let x_920 : f32 = u_xlat6.y;
        u_xlat23.x = (x_918 * x_920);
        let x_924 : vec4<f32> = u_xlat9;
        let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
        let x_927 : f32 = u_xlat22.z;
        txVec4 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_935 : vec3<f32> = txVec4;
        let x_937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_935.xy, x_935.z);
        u_xlat42 = x_937;
        let x_939 : vec4<f32> = u_xlat9;
        let x_940 : vec2<f32> = vec2<f32>(x_939.z, x_939.w);
        let x_942 : f32 = u_xlat22.z;
        txVec5 = vec3<f32>(x_940.x, x_940.y, x_942);
        let x_950 : vec3<f32> = txVec5;
        let x_952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_950.xy, x_950.z);
        u_xlat61 = x_952;
        let x_953 : f32 = u_xlat61;
        let x_955 : f32 = u_xlat12.y;
        u_xlat61 = (x_953 * x_955);
        let x_958 : f32 = u_xlat12.x;
        let x_959 : f32 = u_xlat42;
        let x_961 : f32 = u_xlat61;
        u_xlat42 = ((x_958 * x_959) + x_961);
        let x_964 : vec4<f32> = u_xlat10;
        let x_965 : vec2<f32> = vec2<f32>(x_964.x, x_964.y);
        let x_967 : f32 = u_xlat22.z;
        txVec6 = vec3<f32>(x_965.x, x_965.y, x_967);
        let x_974 : vec3<f32> = txVec6;
        let x_976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_974.xy, x_974.z);
        u_xlat61 = x_976;
        let x_978 : f32 = u_xlat12.z;
        let x_979 : f32 = u_xlat61;
        let x_981 : f32 = u_xlat42;
        u_xlat42 = ((x_978 * x_979) + x_981);
        let x_984 : vec4<f32> = u_xlat8;
        let x_985 : vec2<f32> = vec2<f32>(x_984.x, x_984.y);
        let x_987 : f32 = u_xlat22.z;
        txVec7 = vec3<f32>(x_985.x, x_985.y, x_987);
        let x_994 : vec3<f32> = txVec7;
        let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_994.xy, x_994.z);
        u_xlat61 = x_996;
        let x_998 : f32 = u_xlat12.w;
        let x_999 : f32 = u_xlat61;
        let x_1001 : f32 = u_xlat42;
        u_xlat42 = ((x_998 * x_999) + x_1001);
        let x_1004 : vec4<f32> = u_xlat11;
        let x_1005 : vec2<f32> = vec2<f32>(x_1004.x, x_1004.y);
        let x_1007 : f32 = u_xlat22.z;
        txVec8 = vec3<f32>(x_1005.x, x_1005.y, x_1007);
        let x_1014 : vec3<f32> = txVec8;
        let x_1016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1014.xy, x_1014.z);
        u_xlat61 = x_1016;
        let x_1018 : f32 = u_xlat13.x;
        let x_1019 : f32 = u_xlat61;
        let x_1021 : f32 = u_xlat42;
        u_xlat42 = ((x_1018 * x_1019) + x_1021);
        let x_1024 : vec4<f32> = u_xlat11;
        let x_1025 : vec2<f32> = vec2<f32>(x_1024.z, x_1024.w);
        let x_1027 : f32 = u_xlat22.z;
        txVec9 = vec3<f32>(x_1025.x, x_1025.y, x_1027);
        let x_1034 : vec3<f32> = txVec9;
        let x_1036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1034.xy, x_1034.z);
        u_xlat61 = x_1036;
        let x_1038 : f32 = u_xlat13.y;
        let x_1039 : f32 = u_xlat61;
        let x_1041 : f32 = u_xlat42;
        u_xlat42 = ((x_1038 * x_1039) + x_1041);
        let x_1044 : vec4<f32> = u_xlat8;
        let x_1045 : vec2<f32> = vec2<f32>(x_1044.z, x_1044.w);
        let x_1047 : f32 = u_xlat22.z;
        txVec10 = vec3<f32>(x_1045.x, x_1045.y, x_1047);
        let x_1054 : vec3<f32> = txVec10;
        let x_1056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1054.xy, x_1054.z);
        u_xlat61 = x_1056;
        let x_1058 : f32 = u_xlat13.z;
        let x_1059 : f32 = u_xlat61;
        let x_1061 : f32 = u_xlat42;
        u_xlat42 = ((x_1058 * x_1059) + x_1061);
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1065 : vec2<f32> = vec2<f32>(x_1064.x, x_1064.y);
        let x_1067 : f32 = u_xlat22.z;
        txVec11 = vec3<f32>(x_1065.x, x_1065.y, x_1067);
        let x_1074 : vec3<f32> = txVec11;
        let x_1076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1074.xy, x_1074.z);
        u_xlat61 = x_1076;
        let x_1078 : f32 = u_xlat13.w;
        let x_1079 : f32 = u_xlat61;
        let x_1081 : f32 = u_xlat42;
        u_xlat42 = ((x_1078 * x_1079) + x_1081);
        let x_1084 : vec4<f32> = u_xlat7;
        let x_1085 : vec2<f32> = vec2<f32>(x_1084.z, x_1084.w);
        let x_1087 : f32 = u_xlat22.z;
        txVec12 = vec3<f32>(x_1085.x, x_1085.y, x_1087);
        let x_1094 : vec3<f32> = txVec12;
        let x_1096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1094.xy, x_1094.z);
        u_xlat61 = x_1096;
        let x_1098 : f32 = u_xlat23.x;
        let x_1099 : f32 = u_xlat61;
        let x_1101 : f32 = u_xlat42;
        u_xlat4.x = ((x_1098 * x_1099) + x_1101);
      } else {
        let x_1105 : vec3<f32> = u_xlat22;
        let x_1108 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(x_1108.z, x_1108.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1112 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_1112);
        let x_1114 : vec3<f32> = u_xlat22;
        let x_1117 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1120 : vec2<f32> = u_xlat23;
        let x_1122 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.y) * vec2<f32>(x_1117.z, x_1117.w)) + -(x_1120));
        let x_1123 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1125.x, x_1125.x, x_1125.y, x_1125.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1128 : vec4<f32> = u_xlat6;
        let x_1130 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1128.x, x_1128.x, x_1128.z, x_1128.z) * vec4<f32>(x_1130.x, x_1130.x, x_1130.z, x_1130.z));
        let x_1133 : vec4<f32> = u_xlat7;
        let x_1137 : vec2<f32> = (vec2<f32>(x_1133.y, x_1133.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1138 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1138.x, x_1137.x, x_1138.z, x_1137.y);
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1143 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1140.x, x_1140.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1143.x, x_1143.y)));
        let x_1147 : vec4<f32> = u_xlat5;
        let x_1150 : vec2<f32> = (-(vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1151 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1150.x, x_1151.y, x_1150.y, x_1151.w);
        let x_1153 : vec4<f32> = u_xlat5;
        let x_1155 : vec2<f32> = min(vec2<f32>(x_1153.x, x_1153.y), vec2<f32>(0.0f, 0.0f));
        let x_1156 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1161 : vec4<f32> = u_xlat7;
        let x_1164 : vec4<f32> = u_xlat6;
        let x_1166 : vec2<f32> = ((-(vec2<f32>(x_1158.x, x_1158.y)) * vec2<f32>(x_1161.x, x_1161.y)) + vec2<f32>(x_1164.x, x_1164.z));
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat5;
        let x_1171 : vec2<f32> = max(vec2<f32>(x_1169.x, x_1169.y), vec2<f32>(0.0f, 0.0f));
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
        let x_1174 : vec4<f32> = u_xlat7;
        let x_1177 : vec4<f32> = u_xlat7;
        let x_1180 : vec4<f32> = u_xlat6;
        let x_1182 : vec2<f32> = ((-(vec2<f32>(x_1174.x, x_1174.y)) * vec2<f32>(x_1177.x, x_1177.y)) + vec2<f32>(x_1180.y, x_1180.w));
        let x_1183 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1183.x, x_1182.x, x_1183.z, x_1182.y);
        let x_1185 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1185 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1189 : f32 = u_xlat6.y;
        u_xlat7.z = (x_1189 * 0.08163200318813323975f);
        let x_1193 : vec2<f32> = u_xlat43;
        let x_1196 : vec2<f32> = (vec2<f32>(x_1193.y, x_1193.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1199 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_1199.x, x_1199.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1203 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1203 * 0.08163200318813323975f);
        let x_1207 : f32 = u_xlat9.y;
        u_xlat7.x = x_1207;
        let x_1209 : vec4<f32> = u_xlat5;
        let x_1216 : vec2<f32> = ((vec2<f32>(x_1209.x, x_1209.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1217 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1217.x, x_1216.x, x_1217.z, x_1216.y);
        let x_1219 : vec4<f32> = u_xlat5;
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1219.x, x_1219.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1224 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1223.x, x_1224.y, x_1223.y, x_1224.w);
        let x_1227 : f32 = u_xlat43.x;
        u_xlat6.y = x_1227;
        let x_1230 : f32 = u_xlat8.y;
        u_xlat6.w = x_1230;
        let x_1232 : vec4<f32> = u_xlat6;
        let x_1233 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1232 + x_1233);
        let x_1235 : vec4<f32> = u_xlat5;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1235.y, x_1235.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1239 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1239.x, x_1238.x, x_1239.z, x_1238.y);
        let x_1241 : vec4<f32> = u_xlat5;
        let x_1244 : vec2<f32> = ((vec2<f32>(x_1241.y, x_1241.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1244.x, x_1245.y, x_1244.y, x_1245.w);
        let x_1248 : f32 = u_xlat43.y;
        u_xlat8.y = x_1248;
        let x_1250 : vec4<f32> = u_xlat8;
        let x_1251 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1250 + x_1251);
        let x_1253 : vec4<f32> = u_xlat6;
        let x_1254 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1253 / x_1254);
        let x_1256 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1256 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1262 : vec4<f32> = u_xlat8;
        let x_1263 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1262 / x_1263);
        let x_1265 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1265 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1267 : vec4<f32> = u_xlat6;
        let x_1270 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1267.w, x_1267.x, x_1267.y, x_1267.z) * vec4<f32>(x_1270.x, x_1270.x, x_1270.x, x_1270.x));
        let x_1273 : vec4<f32> = u_xlat8;
        let x_1276 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1273.x, x_1273.w, x_1273.y, x_1273.z) * vec4<f32>(x_1276.y, x_1276.y, x_1276.y, x_1276.y));
        let x_1279 : vec4<f32> = u_xlat6;
        let x_1280 : vec3<f32> = vec3<f32>(x_1279.y, x_1279.z, x_1279.w);
        let x_1281 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1280.x, x_1281.y, x_1280.y, x_1280.z);
        let x_1284 : f32 = u_xlat8.x;
        u_xlat9.y = x_1284;
        let x_1286 : vec2<f32> = u_xlat23;
        let x_1289 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1286.x, x_1286.y, x_1286.x, x_1286.y) * vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y)) + vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1292.y));
        let x_1295 : vec2<f32> = u_xlat23;
        let x_1297 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat9;
        let x_1302 : vec2<f32> = ((x_1295 * vec2<f32>(x_1297.x, x_1297.y)) + vec2<f32>(x_1300.w, x_1300.y));
        let x_1303 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1303.w);
        let x_1306 : f32 = u_xlat9.y;
        u_xlat6.y = x_1306;
        let x_1309 : f32 = u_xlat8.z;
        u_xlat9.y = x_1309;
        let x_1311 : vec2<f32> = u_xlat23;
        let x_1314 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1317 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y) * vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y)) + vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1317.y));
        let x_1321 : vec2<f32> = u_xlat23;
        let x_1323 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1326 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1321 * vec2<f32>(x_1323.x, x_1323.y)) + vec2<f32>(x_1326.w, x_1326.y));
        let x_1330 : f32 = u_xlat9.y;
        u_xlat6.z = x_1330;
        let x_1332 : vec2<f32> = u_xlat23;
        let x_1335 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y) * vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y)) + vec4<f32>(x_1338.x, x_1338.y, x_1338.x, x_1338.z));
        let x_1342 : f32 = u_xlat8.w;
        u_xlat9.y = x_1342;
        let x_1345 : vec2<f32> = u_xlat23;
        let x_1348 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1351 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y) * vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y)) + vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1351.y));
        let x_1355 : vec2<f32> = u_xlat23;
        let x_1357 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1360 : vec4<f32> = u_xlat9;
        let x_1362 : vec2<f32> = ((x_1355 * vec2<f32>(x_1357.x, x_1357.y)) + vec2<f32>(x_1360.w, x_1360.y));
        let x_1363 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1362.x, x_1362.y, x_1363.z);
        let x_1366 : f32 = u_xlat9.y;
        u_xlat6.w = x_1366;
        let x_1369 : vec2<f32> = u_xlat23;
        let x_1371 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1374 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1369 * vec2<f32>(x_1371.x, x_1371.y)) + vec2<f32>(x_1374.x, x_1374.w));
        let x_1377 : vec4<f32> = u_xlat9;
        let x_1378 : vec3<f32> = vec3<f32>(x_1377.x, x_1377.z, x_1377.w);
        let x_1379 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1378.x, x_1379.y, x_1378.y, x_1378.z);
        let x_1381 : vec2<f32> = u_xlat23;
        let x_1384 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1381.x, x_1381.y, x_1381.x, x_1381.y) * vec4<f32>(x_1384.x, x_1384.y, x_1384.x, x_1384.y)) + vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1387.y));
        let x_1391 : vec2<f32> = u_xlat23;
        let x_1393 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1391 * vec2<f32>(x_1393.x, x_1393.y)) + vec2<f32>(x_1396.w, x_1396.y));
        let x_1400 : f32 = u_xlat6.x;
        u_xlat8.x = x_1400;
        let x_1402 : vec2<f32> = u_xlat23;
        let x_1404 : vec4<f32> = x_367.x_MainLightShadowmapSize;
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat23 = ((x_1402 * vec2<f32>(x_1404.x, x_1404.y)) + vec2<f32>(x_1407.x, x_1407.y));
        let x_1411 : vec4<f32> = u_xlat5;
        let x_1413 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1411.x, x_1411.x, x_1411.x, x_1411.x) * x_1413);
        let x_1416 : vec4<f32> = u_xlat5;
        let x_1418 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1416.y, x_1416.y, x_1416.y, x_1416.y) * x_1418);
        let x_1421 : vec4<f32> = u_xlat5;
        let x_1423 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1421.z, x_1421.z, x_1421.z, x_1421.z) * x_1423);
        let x_1425 : vec4<f32> = u_xlat5;
        let x_1427 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1425.w, x_1425.w, x_1425.w, x_1425.w) * x_1427);
        let x_1430 : vec4<f32> = u_xlat10;
        let x_1431 : vec2<f32> = vec2<f32>(x_1430.x, x_1430.y);
        let x_1433 : f32 = u_xlat22.z;
        txVec13 = vec3<f32>(x_1431.x, x_1431.y, x_1433);
        let x_1440 : vec3<f32> = txVec13;
        let x_1442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1440.xy, x_1440.z);
        u_xlat61 = x_1442;
        let x_1444 : vec4<f32> = u_xlat10;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.z, x_1444.w);
        let x_1447 : f32 = u_xlat22.z;
        txVec14 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec14;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat6.x = x_1456;
        let x_1459 : f32 = u_xlat6.x;
        let x_1461 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1459 * x_1461);
        let x_1465 : f32 = u_xlat16.x;
        let x_1466 : f32 = u_xlat61;
        let x_1469 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1465 * x_1466) + x_1469);
        let x_1472 : vec4<f32> = u_xlat11;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.x, x_1472.y);
        let x_1475 : f32 = u_xlat22.z;
        txVec15 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec15;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1482.xy, x_1482.z);
        u_xlat6.x = x_1484;
        let x_1487 : f32 = u_xlat16.z;
        let x_1489 : f32 = u_xlat6.x;
        let x_1491 : f32 = u_xlat61;
        u_xlat61 = ((x_1487 * x_1489) + x_1491);
        let x_1494 : vec4<f32> = u_xlat13;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.x, x_1494.y);
        let x_1497 : f32 = u_xlat22.z;
        txVec16 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec16;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
        u_xlat6.x = x_1506;
        let x_1509 : f32 = u_xlat16.w;
        let x_1511 : f32 = u_xlat6.x;
        let x_1513 : f32 = u_xlat61;
        u_xlat61 = ((x_1509 * x_1511) + x_1513);
        let x_1516 : vec4<f32> = u_xlat12;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.x, x_1516.y);
        let x_1519 : f32 = u_xlat22.z;
        txVec17 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec17;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1526.xy, x_1526.z);
        u_xlat6.x = x_1528;
        let x_1531 : f32 = u_xlat17.x;
        let x_1533 : f32 = u_xlat6.x;
        let x_1535 : f32 = u_xlat61;
        u_xlat61 = ((x_1531 * x_1533) + x_1535);
        let x_1538 : vec4<f32> = u_xlat12;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.z, x_1538.w);
        let x_1541 : f32 = u_xlat22.z;
        txVec18 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec18;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1548.xy, x_1548.z);
        u_xlat6.x = x_1550;
        let x_1553 : f32 = u_xlat17.y;
        let x_1555 : f32 = u_xlat6.x;
        let x_1557 : f32 = u_xlat61;
        u_xlat61 = ((x_1553 * x_1555) + x_1557);
        let x_1560 : vec2<f32> = u_xlat49;
        let x_1562 : f32 = u_xlat22.z;
        txVec19 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
        let x_1569 : vec3<f32> = txVec19;
        let x_1571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1569.xy, x_1569.z);
        u_xlat6.x = x_1571;
        let x_1574 : f32 = u_xlat17.z;
        let x_1576 : f32 = u_xlat6.x;
        let x_1578 : f32 = u_xlat61;
        u_xlat61 = ((x_1574 * x_1576) + x_1578);
        let x_1581 : vec4<f32> = u_xlat13;
        let x_1582 : vec2<f32> = vec2<f32>(x_1581.z, x_1581.w);
        let x_1584 : f32 = u_xlat22.z;
        txVec20 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1591 : vec3<f32> = txVec20;
        let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1591.xy, x_1591.z);
        u_xlat6.x = x_1593;
        let x_1596 : f32 = u_xlat17.w;
        let x_1598 : f32 = u_xlat6.x;
        let x_1600 : f32 = u_xlat61;
        u_xlat61 = ((x_1596 * x_1598) + x_1600);
        let x_1603 : vec4<f32> = u_xlat14;
        let x_1604 : vec2<f32> = vec2<f32>(x_1603.x, x_1603.y);
        let x_1606 : f32 = u_xlat22.z;
        txVec21 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec21;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1613.xy, x_1613.z);
        u_xlat6.x = x_1615;
        let x_1618 : f32 = u_xlat18.x;
        let x_1620 : f32 = u_xlat6.x;
        let x_1622 : f32 = u_xlat61;
        u_xlat61 = ((x_1618 * x_1620) + x_1622);
        let x_1625 : vec4<f32> = u_xlat14;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.z, x_1625.w);
        let x_1628 : f32 = u_xlat22.z;
        txVec22 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec22;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1635.xy, x_1635.z);
        u_xlat6.x = x_1637;
        let x_1640 : f32 = u_xlat18.y;
        let x_1642 : f32 = u_xlat6.x;
        let x_1644 : f32 = u_xlat61;
        u_xlat61 = ((x_1640 * x_1642) + x_1644);
        let x_1647 : vec3<f32> = u_xlat25;
        let x_1648 : vec2<f32> = vec2<f32>(x_1647.x, x_1647.y);
        let x_1650 : f32 = u_xlat22.z;
        txVec23 = vec3<f32>(x_1648.x, x_1648.y, x_1650);
        let x_1657 : vec3<f32> = txVec23;
        let x_1659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1657.xy, x_1657.z);
        u_xlat6.x = x_1659;
        let x_1662 : f32 = u_xlat18.z;
        let x_1664 : f32 = u_xlat6.x;
        let x_1666 : f32 = u_xlat61;
        u_xlat61 = ((x_1662 * x_1664) + x_1666);
        let x_1669 : vec2<f32> = u_xlat15;
        let x_1671 : f32 = u_xlat22.z;
        txVec24 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
        let x_1678 : vec3<f32> = txVec24;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1678.xy, x_1678.z);
        u_xlat6.x = x_1680;
        let x_1683 : f32 = u_xlat18.w;
        let x_1685 : f32 = u_xlat6.x;
        let x_1687 : f32 = u_xlat61;
        u_xlat61 = ((x_1683 * x_1685) + x_1687);
        let x_1690 : vec4<f32> = u_xlat9;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.x, x_1690.y);
        let x_1693 : f32 = u_xlat22.z;
        txVec25 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec25;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1700.xy, x_1700.z);
        u_xlat6.x = x_1702;
        let x_1705 : f32 = u_xlat5.x;
        let x_1707 : f32 = u_xlat6.x;
        let x_1709 : f32 = u_xlat61;
        u_xlat61 = ((x_1705 * x_1707) + x_1709);
        let x_1712 : vec4<f32> = u_xlat9;
        let x_1713 : vec2<f32> = vec2<f32>(x_1712.z, x_1712.w);
        let x_1715 : f32 = u_xlat22.z;
        txVec26 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec26;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1722.xy, x_1722.z);
        u_xlat5.x = x_1724;
        let x_1727 : f32 = u_xlat5.y;
        let x_1729 : f32 = u_xlat5.x;
        let x_1731 : f32 = u_xlat61;
        u_xlat61 = ((x_1727 * x_1729) + x_1731);
        let x_1734 : vec2<f32> = u_xlat46;
        let x_1736 : f32 = u_xlat22.z;
        txVec27 = vec3<f32>(x_1734.x, x_1734.y, x_1736);
        let x_1743 : vec3<f32> = txVec27;
        let x_1745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1743.xy, x_1743.z);
        u_xlat5.x = x_1745;
        let x_1748 : f32 = u_xlat5.z;
        let x_1750 : f32 = u_xlat5.x;
        let x_1752 : f32 = u_xlat61;
        u_xlat61 = ((x_1748 * x_1750) + x_1752);
        let x_1755 : vec2<f32> = u_xlat23;
        let x_1757 : f32 = u_xlat22.z;
        txVec28 = vec3<f32>(x_1755.x, x_1755.y, x_1757);
        let x_1764 : vec3<f32> = txVec28;
        let x_1766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1764.xy, x_1764.z);
        u_xlat23.x = x_1766;
        let x_1769 : f32 = u_xlat5.w;
        let x_1771 : f32 = u_xlat23.x;
        let x_1773 : f32 = u_xlat61;
        u_xlat4.x = ((x_1769 * x_1771) + x_1773);
      }
    }
  } else {
    let x_1778 : vec3<f32> = u_xlat22;
    let x_1779 : vec2<f32> = vec2<f32>(x_1778.x, x_1778.y);
    let x_1781 : f32 = u_xlat22.z;
    txVec29 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
    let x_1788 : vec3<f32> = txVec29;
    let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1788.xy, x_1788.z);
    u_xlat4.x = x_1790;
  }
  let x_1793 : f32 = x_367.x_MainLightShadowParams.x;
  u_xlat22.x = (-(x_1793) + 1.0f);
  let x_1798 : f32 = u_xlat4.x;
  let x_1800 : f32 = x_367.x_MainLightShadowParams.x;
  let x_1803 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_1798 * x_1800) + x_1803);
  let x_1808 : f32 = u_xlat22.z;
  u_xlatb41 = (0.0f >= x_1808);
  let x_1812 : f32 = u_xlat22.z;
  u_xlatb60 = (x_1812 >= 1.0f);
  let x_1814 : bool = u_xlatb60;
  let x_1815 : bool = u_xlatb41;
  u_xlatb41 = (x_1814 | x_1815);
  let x_1817 : bool = u_xlatb41;
  if (x_1817) {
    x_1819 = 1.0f;
  } else {
    let x_1824 : f32 = u_xlat22.x;
    x_1819 = x_1824;
  }
  let x_1825 : f32 = x_1819;
  u_xlat22.x = x_1825;
  let x_1827 : vec4<f32> = u_xlat0;
  let x_1830 : vec4<f32> = x_40.x_ScreenParams;
  let x_1832 : vec2<f32> = (vec2<f32>(x_1827.x, x_1827.y) * vec2<f32>(x_1830.x, x_1830.y));
  let x_1833 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1832.x, x_1832.y, x_1833.z, x_1833.w);
  let x_1835 : vec4<f32> = u_xlat0;
  let x_1838 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
  let x_1840 : vec2<f32> = (vec2<f32>(x_1835.x, x_1835.y) * vec2<f32>(x_1838.x, x_1838.y));
  let x_1841 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1840.x, x_1840.y, x_1841.z, x_1841.w);
  let x_1844 : f32 = u_xlat38;
  u_xlat41 = (vec2<f32>(x_1844, x_1844) * vec2<f32>(20.0f, 0.25f));
  let x_1849 : vec2<f32> = u_xlat41;
  let x_1851 : vec3<f32> = vs_TEXCOORD2;
  let x_1853 : vec3<f32> = (vec3<f32>(x_1849.y, x_1849.y, x_1849.y) * -(x_1851));
  let x_1854 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);
  let x_1857 : f32 = x_40.x_Time.x;
  u_xlat5.x = fract(x_1857);
  let x_1861 : f32 = x_40.x_Time.z;
  u_xlat5.y = fract(-(x_1861));
  let x_1865 : vec4<f32> = u_xlat0;
  u_xlat43 = vec2<f32>(x_1865.x, x_1865.y);
  u_xlat61 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1874 : u32 = u_xlatu_loop_1;
    if ((x_1874 < 4u)) {
    } else {
      break;
    }
    let x_1877 : vec4<f32> = u_xlat5;
    let x_1879 : vec2<f32> = u_xlat43;
    u_xlat43 = (vec2<f32>(x_1877.x, x_1877.y) + x_1879);
    let x_1881 : u32 = u_xlatu_loop_1;
    u_xlat25.x = f32(x_1881);
    let x_1885 : vec3<f32> = u_xlat25;
    let x_1888 : vec4<f32> = x_40.x_ScreenParams;
    let x_1891 : vec2<f32> = u_xlat43;
    u_xlat44 = ((vec2<f32>(x_1885.x, x_1885.x) * vec2<f32>(x_1888.x, x_1888.y)) + x_1891);
    let x_1898 : vec2<f32> = u_xlat44;
    let x_1900 : f32 = x_40.x_GlobalMipBias.x;
    let x_1901 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, x_1898, x_1900);
    let x_1902 : vec3<f32> = vec3<f32>(x_1901.x, x_1901.y, x_1901.z);
    let x_1903 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
    let x_1905 : vec4<f32> = u_xlat7;
    let x_1910 : vec3<f32> = ((vec3<f32>(x_1905.x, x_1905.z, x_1905.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_1911 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
    let x_1913 : vec2<f32> = u_xlat41;
    let x_1915 : vec4<f32> = u_xlat7;
    let x_1917 : vec3<f32> = (vec3<f32>(x_1913.y, x_1913.y, x_1913.y) * vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
    let x_1918 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1917.x, x_1917.y, x_1918.z, x_1917.z);
    let x_1920 : vec3<f32> = u_xlat25;
    let x_1922 : vec4<f32> = u_xlat7;
    let x_1924 : vec3<f32> = (vec3<f32>(x_1920.x, x_1920.x, x_1920.x) * vec3<f32>(x_1922.x, x_1922.y, x_1922.w));
    let x_1925 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1924.x, x_1924.y, x_1925.z, x_1924.z);
    let x_1927 : vec4<f32> = u_xlat7;
    let x_1932 : vec3<f32> = vs_TEXCOORD1;
    let x_1933 : vec3<f32> = ((vec3<f32>(x_1927.x, x_1927.y, x_1927.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_1932);
    let x_1934 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1933.x, x_1933.y, x_1934.z, x_1933.z);
    let x_1937 : f32 = u_xlat25.x;
    let x_1939 : f32 = u_xlat7.z;
    u_xlat25.x = (x_1937 + x_1939);
    let x_1942 : vec4<f32> = u_xlat4;
    let x_1944 : vec3<f32> = u_xlat25;
    let x_1947 : vec4<f32> = u_xlat7;
    u_xlat25 = ((vec3<f32>(x_1942.x, x_1942.y, x_1942.z) * vec3<f32>(x_1944.x, x_1944.x, x_1944.x)) + vec3<f32>(x_1947.x, x_1947.y, x_1947.w));
    let x_1950 : vec3<f32> = u_xlat25;
    let x_1952 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
    let x_1955 : vec3<f32> = (x_1950 + -(vec3<f32>(x_1952.x, x_1952.y, x_1952.z)));
    let x_1956 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
    let x_1958 : vec3<f32> = u_xlat25;
    let x_1960 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
    let x_1963 : vec3<f32> = (x_1958 + -(vec3<f32>(x_1960.x, x_1960.y, x_1960.z)));
    let x_1964 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1963.x, x_1963.y, x_1963.z, x_1964.w);
    let x_1966 : vec3<f32> = u_xlat25;
    let x_1968 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
    let x_1971 : vec3<f32> = (x_1966 + -(vec3<f32>(x_1968.x, x_1968.y, x_1968.z)));
    let x_1972 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
    let x_1974 : vec3<f32> = u_xlat25;
    let x_1976 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
    let x_1979 : vec3<f32> = (x_1974 + -(vec3<f32>(x_1976.x, x_1976.y, x_1976.z)));
    let x_1980 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1980.w);
    let x_1982 : vec4<f32> = u_xlat7;
    let x_1984 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_1982.x, x_1982.y, x_1982.z), vec3<f32>(x_1984.x, x_1984.y, x_1984.z));
    let x_1988 : vec4<f32> = u_xlat8;
    let x_1990 : vec4<f32> = u_xlat8;
    u_xlat7.y = dot(vec3<f32>(x_1988.x, x_1988.y, x_1988.z), vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
    let x_1994 : vec4<f32> = u_xlat9;
    let x_1996 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(vec3<f32>(x_1994.x, x_1994.y, x_1994.z), vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
    let x_2000 : vec4<f32> = u_xlat10;
    let x_2002 : vec4<f32> = u_xlat10;
    u_xlat7.w = dot(vec3<f32>(x_2000.x, x_2000.y, x_2000.z), vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
    let x_2007 : vec4<f32> = u_xlat7;
    let x_2009 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
    u_xlatb7 = (x_2007 < x_2009);
    let x_2012 : bool = u_xlatb7.x;
    u_xlat8.x = select(0.0f, 1.0f, x_2012);
    let x_2016 : bool = u_xlatb7.y;
    u_xlat8.y = select(0.0f, 1.0f, x_2016);
    let x_2020 : bool = u_xlatb7.z;
    u_xlat8.z = select(0.0f, 1.0f, x_2020);
    let x_2024 : bool = u_xlatb7.w;
    u_xlat8.w = select(0.0f, 1.0f, x_2024);
    let x_2028 : bool = u_xlatb7.x;
    u_xlat7.x = select(-0.0f, -1.0f, x_2028);
    let x_2032 : bool = u_xlatb7.y;
    u_xlat7.y = select(-0.0f, -1.0f, x_2032);
    let x_2036 : bool = u_xlatb7.z;
    u_xlat7.z = select(-0.0f, -1.0f, x_2036);
    let x_2039 : vec4<f32> = u_xlat7;
    let x_2041 : vec4<f32> = u_xlat8;
    let x_2043 : vec3<f32> = (vec3<f32>(x_2039.x, x_2039.y, x_2039.z) + vec3<f32>(x_2041.y, x_2041.z, x_2041.w));
    let x_2044 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2043.x, x_2043.y, x_2043.z, x_2044.w);
    let x_2046 : vec4<f32> = u_xlat7;
    let x_2048 : vec3<f32> = max(vec3<f32>(x_2046.x, x_2046.y, x_2046.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_2049 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2049.x, x_2048.x, x_2048.y, x_2048.z);
    let x_2051 : vec4<f32> = u_xlat8;
    u_xlat7.x = dot(x_2051, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_2055 : f32 = u_xlat7.x;
    u_xlat7.x = (-(x_2055) + 4.0f);
    let x_2061 : f32 = u_xlat7.x;
    u_xlatu7 = u32(x_2061);
    let x_2064 : u32 = u_xlatu7;
    u_xlati7 = (bitcast<i32>(x_2064) << bitcast<u32>(2i));
    let x_2068 : vec3<f32> = u_xlat25;
    let x_2070 : i32 = u_xlati7;
    let x_2073 : i32 = u_xlati7;
    let x_2077 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_2070 + 1i) / 4i)][((x_2073 + 1i) % 4i)];
    u_xlat26 = (vec3<f32>(x_2068.y, x_2068.y, x_2068.y) * vec3<f32>(x_2077.x, x_2077.y, x_2077.z));
    let x_2080 : i32 = u_xlati7;
    let x_2082 : i32 = u_xlati7;
    let x_2085 : vec4<f32> = x_367.x_MainLightWorldToShadow[(x_2080 / 4i)][(x_2082 % 4i)];
    let x_2087 : vec3<f32> = u_xlat25;
    let x_2090 : vec3<f32> = u_xlat26;
    u_xlat26 = ((vec3<f32>(x_2085.x, x_2085.y, x_2085.z) * vec3<f32>(x_2087.x, x_2087.x, x_2087.x)) + x_2090);
    let x_2092 : i32 = u_xlati7;
    let x_2095 : i32 = u_xlati7;
    let x_2099 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_2092 + 2i) / 4i)][((x_2095 + 2i) % 4i)];
    let x_2101 : vec3<f32> = u_xlat25;
    let x_2104 : vec3<f32> = u_xlat26;
    u_xlat25 = ((vec3<f32>(x_2099.x, x_2099.y, x_2099.z) * vec3<f32>(x_2101.z, x_2101.z, x_2101.z)) + x_2104);
    let x_2106 : vec3<f32> = u_xlat25;
    let x_2107 : i32 = u_xlati7;
    let x_2110 : i32 = u_xlati7;
    let x_2114 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_2107 + 3i) / 4i)][((x_2110 + 3i) % 4i)];
    u_xlat25 = (x_2106 + vec3<f32>(x_2114.x, x_2114.y, x_2114.z));
    let x_2118 : vec3<f32> = u_xlat25;
    let x_2119 : vec2<f32> = vec2<f32>(x_2118.x, x_2118.y);
    let x_2121 : f32 = u_xlat25.z;
    txVec30 = vec3<f32>(x_2119.x, x_2119.y, x_2121);
    let x_2128 : vec3<f32> = txVec30;
    let x_2130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2128.xy, x_2128.z);
    u_xlat25.x = x_2130;
    let x_2132 : f32 = u_xlat61;
    let x_2134 : f32 = u_xlat25.x;
    u_xlat61 = (x_2132 + x_2134);

    continuing {
      let x_2136 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2136 + bitcast<u32>(1i));
    }
  }
  let x_2138 : vec3<f32> = vs_TEXCOORD1;
  let x_2141 : vec3<f32> = (x_2138 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_2142 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
  let x_2144 : vec3<f32> = vs_TEXCOORD1;
  let x_2147 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
  let x_2150 : vec3<f32> = ((x_2144 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2147.x, x_2147.y, x_2147.z)));
  let x_2151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2151.w);
  let x_2153 : vec3<f32> = vs_TEXCOORD1;
  let x_2156 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
  let x_2159 : vec3<f32> = ((x_2153 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2156.x, x_2156.y, x_2156.z)));
  let x_2160 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
  let x_2162 : vec3<f32> = vs_TEXCOORD1;
  let x_2165 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
  let x_2168 : vec3<f32> = ((x_2162 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2165.x, x_2165.y, x_2165.z)));
  let x_2169 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
  let x_2171 : vec3<f32> = vs_TEXCOORD1;
  let x_2174 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
  let x_2177 : vec3<f32> = ((x_2171 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2174.x, x_2174.y, x_2174.z)));
  let x_2178 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2177.x, x_2177.y, x_2177.z, x_2178.w);
  let x_2180 : vec4<f32> = u_xlat5;
  let x_2182 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2180.x, x_2180.y, x_2180.z), vec3<f32>(x_2182.x, x_2182.y, x_2182.z));
  let x_2186 : vec4<f32> = u_xlat6;
  let x_2188 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_2186.x, x_2186.y, x_2186.z), vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
  let x_2192 : vec4<f32> = u_xlat7;
  let x_2194 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_2192.x, x_2192.y, x_2192.z), vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
  let x_2198 : vec4<f32> = u_xlat8;
  let x_2200 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_2198.x, x_2198.y, x_2198.z), vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
  let x_2205 : vec4<f32> = u_xlat5;
  let x_2207 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_2205 < x_2207);
  let x_2210 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_2210);
  let x_2214 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_2214);
  let x_2218 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_2218);
  let x_2222 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_2222);
  let x_2226 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_2226);
  let x_2230 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_2230);
  let x_2234 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_2234);
  let x_2237 : vec4<f32> = u_xlat5;
  let x_2239 : vec4<f32> = u_xlat6;
  let x_2241 : vec3<f32> = (vec3<f32>(x_2237.x, x_2237.y, x_2237.z) + vec3<f32>(x_2239.y, x_2239.z, x_2239.w));
  let x_2242 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
  let x_2244 : vec4<f32> = u_xlat5;
  let x_2246 : vec3<f32> = max(vec3<f32>(x_2244.x, x_2244.y, x_2244.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2247 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2247.x, x_2246.x, x_2246.y, x_2246.z);
  let x_2249 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_2249, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_2253 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_2253) + 4.0f);
  let x_2259 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_2259);
  let x_2262 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_2262) << bitcast<u32>(2i));
  let x_2267 : f32 = u_xlat4.y;
  let x_2268 : i32 = u_xlati0;
  let x_2271 : i32 = u_xlati0;
  let x_2275 : f32 = x_367.x_MainLightWorldToShadow[((x_2268 + 1i) / 4i)][((x_2271 + 1i) % 4i)].z;
  u_xlat19 = (x_2267 * x_2275);
  let x_2277 : i32 = u_xlati0;
  let x_2279 : i32 = u_xlati0;
  let x_2282 : f32 = x_367.x_MainLightWorldToShadow[(x_2277 / 4i)][(x_2279 % 4i)].z;
  let x_2284 : f32 = u_xlat4.x;
  let x_2286 : f32 = u_xlat19;
  u_xlat19 = ((x_2282 * x_2284) + x_2286);
  let x_2288 : i32 = u_xlati0;
  let x_2291 : i32 = u_xlati0;
  let x_2295 : f32 = x_367.x_MainLightWorldToShadow[((x_2288 + 2i) / 4i)][((x_2291 + 2i) % 4i)].z;
  let x_2297 : f32 = u_xlat4.z;
  let x_2299 : f32 = u_xlat19;
  u_xlat19 = ((x_2295 * x_2297) + x_2299);
  let x_2301 : f32 = u_xlat19;
  let x_2302 : i32 = u_xlati0;
  let x_2305 : i32 = u_xlati0;
  let x_2309 : f32 = x_367.x_MainLightWorldToShadow[((x_2302 + 3i) / 4i)][((x_2305 + 3i) % 4i)].z;
  u_xlat0.x = (x_2301 + x_2309);
  let x_2314 : f32 = u_xlat0.x;
  u_xlatb19 = (0.0f >= x_2314);
  let x_2318 : f32 = u_xlat0.x;
  u_xlatb0 = (x_2318 >= 1.0f);
  let x_2320 : bool = u_xlatb0;
  let x_2321 : bool = u_xlatb19;
  u_xlatb0 = (x_2320 | x_2321);
  let x_2323 : f32 = u_xlat61;
  u_xlat19 = (x_2323 * 0.25f);
  let x_2325 : bool = u_xlatb0;
  let x_2326 : f32 = u_xlat19;
  u_xlat0.x = select(x_2326, 1.0f, x_2325);
  u_xlat2.w = 1.0f;
  let x_2336 : vec4<f32> = x_2333.unity_SHAr;
  let x_2337 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_2336, x_2337);
  let x_2342 : vec4<f32> = x_2333.unity_SHAg;
  let x_2343 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_2342, x_2343);
  let x_2348 : vec4<f32> = x_2333.unity_SHAb;
  let x_2349 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_2348, x_2349);
  let x_2352 : vec4<f32> = u_xlat2;
  let x_2354 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_2352.y, x_2352.z, x_2352.z, x_2352.x) * vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2354.z));
  let x_2359 : vec4<f32> = x_2333.unity_SHBr;
  let x_2360 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_2359, x_2360);
  let x_2365 : vec4<f32> = x_2333.unity_SHBg;
  let x_2366 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_2365, x_2366);
  let x_2371 : vec4<f32> = x_2333.unity_SHBb;
  let x_2372 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_2371, x_2372);
  let x_2376 : f32 = u_xlat2.y;
  let x_2378 : f32 = u_xlat2.y;
  u_xlat19 = (x_2376 * x_2378);
  let x_2381 : f32 = u_xlat2.x;
  let x_2383 : f32 = u_xlat2.x;
  let x_2385 : f32 = u_xlat19;
  u_xlat19 = ((x_2381 * x_2383) + -(x_2385));
  let x_2390 : vec4<f32> = x_2333.unity_SHC;
  let x_2392 : f32 = u_xlat19;
  let x_2395 : vec4<f32> = u_xlat6;
  let x_2397 : vec3<f32> = ((vec3<f32>(x_2390.x, x_2390.y, x_2390.z) * vec3<f32>(x_2392, x_2392, x_2392)) + vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
  let x_2400 : vec4<f32> = u_xlat4;
  let x_2402 : vec4<f32> = u_xlat5;
  let x_2404 : vec3<f32> = (vec3<f32>(x_2400.x, x_2400.y, x_2400.z) + vec3<f32>(x_2402.x, x_2402.y, x_2402.z));
  let x_2405 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2404.x, x_2404.y, x_2404.z, x_2405.w);
  let x_2407 : vec4<f32> = u_xlat4;
  let x_2409 : vec3<f32> = max(vec3<f32>(x_2407.x, x_2407.y, x_2407.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2410 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2409.x, x_2409.y, x_2409.z, x_2410.w);
  let x_2412 : vec3<f32> = vs_TEXCOORD2;
  let x_2414 : vec4<f32> = x_40.x_MainLightPosition;
  u_xlat19 = dot(x_2412, -(vec3<f32>(x_2414.x, x_2414.y, x_2414.z)));
  let x_2418 : f32 = u_xlat19;
  let x_2420 : f32 = vs_TEXCOORD5.z;
  u_xlat19 = (x_2418 * x_2420);
  let x_2423 : f32 = u_xlat19;
  let x_2424 : f32 = u_xlat19;
  u_xlat59 = (x_2423 * x_2424);
  let x_2426 : f32 = u_xlat19;
  let x_2427 : f32 = u_xlat59;
  u_xlat19 = (x_2426 * x_2427);
  let x_2429 : f32 = u_xlat19;
  u_xlat19 = clamp(x_2429, 0.0f, 1.0f);
  let x_2431 : f32 = u_xlat19;
  u_xlat19 = (x_2431 * 5.0f);
  let x_2434 : f32 = u_xlat19;
  let x_2437 : vec4<f32> = x_40.x_MainLightColor;
  let x_2439 : vec3<f32> = (vec3<f32>(x_2434, x_2434, x_2434) * vec3<f32>(x_2437.x, x_2437.y, x_2437.z));
  let x_2440 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2439.x, x_2439.y, x_2439.z, x_2440.w);
  let x_2443 : vec4<f32> = x_40.x_MainLightPosition;
  let x_2446 : vec4<f32> = x_40.x_MainLightColor;
  let x_2449 : vec4<f32> = u_xlat5;
  let x_2451 : vec3<f32> = ((vec3<f32>(x_2443.y, x_2443.y, x_2443.y) * vec3<f32>(x_2446.x, x_2446.y, x_2446.z)) + vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
  let x_2452 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
  let x_2454 : vec4<f32> = u_xlat5;
  let x_2456 : vec4<f32> = u_xlat0;
  let x_2459 : vec4<f32> = u_xlat4;
  let x_2461 : vec3<f32> = ((vec3<f32>(x_2454.x, x_2454.y, x_2454.z) * vec3<f32>(x_2456.x, x_2456.x, x_2456.x)) + vec3<f32>(x_2459.x, x_2459.y, x_2459.z));
  let x_2462 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
  let x_2469 : vec4<f32> = vs_TEXCOORD0;
  let x_2472 : f32 = x_40.x_GlobalMipBias.x;
  let x_2473 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_2469.z, x_2469.w), x_2472);
  let x_2474 : vec3<f32> = vec3<f32>(x_2473.x, x_2473.y, x_2473.z);
  let x_2475 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
  let x_2478 : f32 = u_xlat41.x;
  u_xlat41.x = x_2478;
  let x_2481 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_2481, 0.0f, 1.0f);
  let x_2485 : f32 = vs_TEXCOORD5.z;
  u_xlat19 = (x_2485 + -0.375f);
  let x_2488 : f32 = u_xlat19;
  u_xlat19 = clamp(x_2488, 0.0f, 1.0f);
  let x_2490 : f32 = u_xlat38;
  u_xlat59 = ((-(x_2490) * 4.0f) + 1.0f);
  let x_2494 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2494, 0.0f, 1.0f);
  let x_2496 : f32 = u_xlat57;
  let x_2497 : f32 = u_xlat38;
  u_xlat57 = min(x_2496, x_2497);
  let x_2499 : f32 = u_xlat57;
  u_xlat57 = ((-(x_2499) * 0.5f) + 0.75f);
  let x_2504 : f32 = u_xlat59;
  let x_2506 : f32 = u_xlat57;
  u_xlat57 = ((x_2504 * 0.5f) + x_2506);
  let x_2508 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2508, 0.0f, 1.0f);
  let x_2511 : f32 = u_xlat41.x;
  let x_2512 : f32 = u_xlat57;
  u_xlat57 = (x_2511 * x_2512);
  let x_2514 : f32 = u_xlat57;
  let x_2515 : f32 = u_xlat19;
  u_xlat19 = max(x_2514, x_2515);
  let x_2518 : f32 = u_xlat1.x;
  let x_2520 : f32 = u_xlat1.x;
  u_xlat57 = (x_2518 + x_2520);
  let x_2522 : f32 = u_xlat57;
  let x_2523 : f32 = u_xlat19;
  u_xlat7.x = max(x_2522, x_2523);
  u_xlat7.y = 0.66000002622604370117f;
  let x_2533 : vec4<f32> = u_xlat7;
  let x_2536 : f32 = x_40.x_GlobalMipBias.x;
  let x_2537 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2533.x, x_2533.y), x_2536);
  let x_2538 : vec3<f32> = vec3<f32>(x_2537.x, x_2537.y, x_2537.z);
  let x_2539 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2538.x, x_2538.y, x_2538.z, x_2539.w);
  let x_2541 : vec4<f32> = u_xlat6;
  let x_2543 : vec4<f32> = u_xlat7;
  let x_2545 : vec3<f32> = (vec3<f32>(x_2541.x, x_2541.y, x_2541.z) * vec3<f32>(x_2543.x, x_2543.y, x_2543.z));
  let x_2546 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2545.x, x_2545.y, x_2545.z, x_2546.w);
  let x_2548 : vec4<f32> = u_xlat6;
  let x_2550 : vec4<f32> = u_xlat6;
  u_xlat19 = dot(vec3<f32>(x_2548.x, x_2548.y, x_2548.z), vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
  let x_2553 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_2553);
  let x_2555 : f32 = u_xlat19;
  u_xlat19 = ((x_2555 * 1.5f) + -0.10000000149011611938f);
  let x_2559 : f32 = u_xlat19;
  u_xlat19 = clamp(x_2559, 0.0f, 1.0f);
  let x_2561 : vec3<f32> = u_xlat22;
  let x_2564 : vec4<f32> = x_40.x_MainLightColor;
  let x_2567 : vec4<f32> = u_xlat4;
  let x_2569 : vec3<f32> = ((vec3<f32>(x_2561.x, x_2561.x, x_2561.x) * vec3<f32>(x_2564.x, x_2564.y, x_2564.z)) + vec3<f32>(x_2567.x, x_2567.y, x_2567.z));
  let x_2570 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
  let x_2572 : vec3<f32> = vs_TEXCOORD2;
  let x_2574 : vec4<f32> = x_40.x_MainLightPosition;
  let x_2576 : vec3<f32> = (x_2572 + vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
  let x_2577 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
  let x_2579 : vec4<f32> = u_xlat6;
  let x_2581 : vec4<f32> = u_xlat6;
  u_xlat57 = dot(vec3<f32>(x_2579.x, x_2579.y, x_2579.z), vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2584 : f32 = u_xlat57;
  u_xlat57 = max(x_2584, 1.17549435e-38f);
  let x_2587 : f32 = u_xlat57;
  u_xlat57 = inverseSqrt(x_2587);
  let x_2589 : f32 = u_xlat57;
  let x_2591 : vec4<f32> = u_xlat6;
  let x_2593 : vec3<f32> = (vec3<f32>(x_2589, x_2589, x_2589) * vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
  let x_2594 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
  let x_2596 : vec4<f32> = u_xlat2;
  let x_2598 : vec4<f32> = u_xlat6;
  u_xlat57 = dot(vec3<f32>(x_2596.x, x_2596.y, x_2596.z), vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
  let x_2601 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2601, 0.0f, 1.0f);
  let x_2604 : vec4<f32> = x_40.x_MainLightPosition;
  let x_2606 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_2604.x, x_2604.y, x_2604.z), vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
  let x_2611 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2611, 0.0f, 1.0f);
  let x_2614 : f32 = u_xlat57;
  let x_2615 : f32 = u_xlat57;
  u_xlat57 = (x_2614 * x_2615);
  let x_2617 : f32 = u_xlat57;
  u_xlat57 = ((x_2617 * -0.99993896484375f) + 1.00001001358032226562f);
  let x_2623 : f32 = u_xlat1.x;
  let x_2625 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2623 * x_2625);
  let x_2628 : f32 = u_xlat57;
  let x_2629 : f32 = u_xlat57;
  u_xlat57 = (x_2628 * x_2629);
  let x_2632 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2632, 0.10000000149011611938f);
  let x_2635 : f32 = u_xlat57;
  let x_2637 : f32 = u_xlat1.x;
  u_xlat57 = (x_2635 * x_2637);
  let x_2639 : f32 = u_xlat57;
  u_xlat57 = (x_2639 * 2.03125f);
  let x_2643 : f32 = u_xlat57;
  u_xlat57 = (0.00006103515625f / x_2643);
  let x_2646 : f32 = u_xlat0.x;
  let x_2647 : f32 = u_xlat57;
  u_xlat0.x = (x_2646 * x_2647);
  let x_2651 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2651 * 0.03999999910593032837f);
  let x_2655 : vec4<f32> = u_xlat0;
  let x_2658 : vec4<f32> = x_40.x_MainLightColor;
  let x_2660 : vec3<f32> = (vec3<f32>(x_2655.x, x_2655.x, x_2655.x) * vec3<f32>(x_2658.x, x_2658.y, x_2658.z));
  let x_2661 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2660.x, x_2660.y, x_2660.z, x_2661.w);
  let x_2664 : f32 = x_40.x_AdditionalLightsCount.x;
  let x_2666 : f32 = x_2333.unity_LightData.y;
  u_xlat0.x = min(x_2664, x_2666);
  let x_2670 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2670));
  let x_2673 : vec4<f32> = u_xlat5;
  let x_2674 : vec3<f32> = vec3<f32>(x_2673.x, x_2673.y, x_2673.z);
  let x_2675 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2674.x, x_2674.y, x_2674.z, x_2675.w);
  let x_2677 : vec4<f32> = u_xlat6;
  let x_2678 : vec3<f32> = vec3<f32>(x_2677.x, x_2677.y, x_2677.z);
  let x_2679 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2678.x, x_2678.y, x_2678.z, x_2679.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_2687 : u32 = u_xlatu_loop_2;
    let x_2688 : u32 = u_xlatu0;
    if ((x_2687 < x_2688)) {
    } else {
      break;
    }
    let x_2691 : u32 = u_xlatu_loop_2;
    u_xlatu1 = (x_2691 >> 2u);
    let x_2694 : u32 = u_xlatu_loop_2;
    u_xlati59 = bitcast<i32>((x_2694 & 3u));
    let x_2697 : u32 = u_xlatu1;
    let x_2700 : vec4<f32> = x_2333.unity_LightIndices[bitcast<i32>(x_2697)];
    let x_2709 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2714 : vec4<u32> = indexable[x_2709];
    u_xlat1.x = dot(x_2700, bitcast<vec4<f32>>(x_2714));
    let x_2720 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_2720);
    let x_2722 : vec3<f32> = vs_TEXCOORD1;
    let x_2733 : i32 = u_xlati1;
    let x_2735 : vec4<f32> = x_2732.x_AdditionalLightsPosition[x_2733];
    let x_2738 : i32 = u_xlati1;
    let x_2740 : vec4<f32> = x_2732.x_AdditionalLightsPosition[x_2738];
    let x_2742 : vec3<f32> = ((-(x_2722) * vec3<f32>(x_2735.w, x_2735.w, x_2735.w)) + vec3<f32>(x_2740.x, x_2740.y, x_2740.z));
    let x_2743 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2742.x, x_2742.y, x_2742.z, x_2743.w);
    let x_2745 : vec4<f32> = u_xlat9;
    let x_2747 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2745.x, x_2745.y, x_2745.z), vec3<f32>(x_2747.x, x_2747.y, x_2747.z));
    let x_2750 : f32 = u_xlat59;
    u_xlat59 = max(x_2750, 0.00006103515625f);
    let x_2752 : f32 = u_xlat59;
    u_xlat22.x = inverseSqrt(x_2752);
    let x_2755 : vec3<f32> = u_xlat22;
    let x_2757 : vec4<f32> = u_xlat9;
    let x_2759 : vec3<f32> = (vec3<f32>(x_2755.x, x_2755.x, x_2755.x) * vec3<f32>(x_2757.x, x_2757.y, x_2757.z));
    let x_2760 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2759.x, x_2759.y, x_2759.z, x_2760.w);
    let x_2762 : f32 = u_xlat59;
    u_xlat41.x = (1.0f / x_2762);
    let x_2765 : f32 = u_xlat59;
    let x_2766 : i32 = u_xlati1;
    let x_2768 : f32 = x_2732.x_AdditionalLightsAttenuation[x_2766].x;
    u_xlat59 = (x_2765 * x_2768);
    let x_2770 : f32 = u_xlat59;
    let x_2772 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2770) * x_2772) + 1.0f);
    let x_2775 : f32 = u_xlat59;
    u_xlat59 = max(x_2775, 0.0f);
    let x_2777 : f32 = u_xlat59;
    let x_2778 : f32 = u_xlat59;
    u_xlat59 = (x_2777 * x_2778);
    let x_2780 : f32 = u_xlat59;
    let x_2782 : f32 = u_xlat41.x;
    u_xlat59 = (x_2780 * x_2782);
    let x_2784 : i32 = u_xlati1;
    let x_2786 : vec4<f32> = x_2732.x_AdditionalLightsSpotDir[x_2784];
    let x_2788 : vec4<f32> = u_xlat10;
    u_xlat41.x = dot(vec3<f32>(x_2786.x, x_2786.y, x_2786.z), vec3<f32>(x_2788.x, x_2788.y, x_2788.z));
    let x_2793 : f32 = u_xlat41.x;
    let x_2794 : i32 = u_xlati1;
    let x_2796 : f32 = x_2732.x_AdditionalLightsAttenuation[x_2794].z;
    let x_2798 : i32 = u_xlati1;
    let x_2800 : f32 = x_2732.x_AdditionalLightsAttenuation[x_2798].w;
    u_xlat41.x = ((x_2793 * x_2796) + x_2800);
    let x_2804 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2804, 0.0f, 1.0f);
    let x_2808 : f32 = u_xlat41.x;
    let x_2810 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2808 * x_2810);
    let x_2813 : f32 = u_xlat59;
    let x_2815 : f32 = u_xlat41.x;
    u_xlat59 = (x_2813 * x_2815);
    let x_2817 : vec4<f32> = u_xlat2;
    let x_2819 : vec4<f32> = u_xlat10;
    u_xlat41.x = dot(vec3<f32>(x_2817.x, x_2817.y, x_2817.z), vec3<f32>(x_2819.x, x_2819.y, x_2819.z));
    let x_2824 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2824, 0.0f, 1.0f);
    let x_2827 : f32 = u_xlat59;
    let x_2829 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2827 * x_2829);
    let x_2832 : vec2<f32> = u_xlat41;
    let x_2834 : i32 = u_xlati1;
    let x_2836 : vec4<f32> = x_2732.x_AdditionalLightsColor[x_2834];
    let x_2838 : vec3<f32> = (vec3<f32>(x_2832.x, x_2832.x, x_2832.x) * vec3<f32>(x_2836.x, x_2836.y, x_2836.z));
    let x_2839 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2838.x, x_2838.y, x_2838.z, x_2839.w);
    let x_2841 : vec4<f32> = u_xlat9;
    let x_2843 : vec3<f32> = u_xlat22;
    let x_2846 : vec3<f32> = vs_TEXCOORD2;
    let x_2847 : vec3<f32> = ((vec3<f32>(x_2841.x, x_2841.y, x_2841.z) * vec3<f32>(x_2843.x, x_2843.x, x_2843.x)) + x_2846);
    let x_2848 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2847.x, x_2847.y, x_2847.z, x_2848.w);
    let x_2850 : vec4<f32> = u_xlat9;
    let x_2852 : vec4<f32> = u_xlat9;
    u_xlat22.x = dot(vec3<f32>(x_2850.x, x_2850.y, x_2850.z), vec3<f32>(x_2852.x, x_2852.y, x_2852.z));
    let x_2857 : f32 = u_xlat22.x;
    u_xlat22.x = max(x_2857, 1.17549435e-38f);
    let x_2861 : f32 = u_xlat22.x;
    u_xlat22.x = inverseSqrt(x_2861);
    let x_2864 : vec3<f32> = u_xlat22;
    let x_2866 : vec4<f32> = u_xlat9;
    let x_2868 : vec3<f32> = (vec3<f32>(x_2864.x, x_2864.x, x_2864.x) * vec3<f32>(x_2866.x, x_2866.y, x_2866.z));
    let x_2869 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2868.x, x_2868.y, x_2868.z, x_2869.w);
    let x_2871 : vec4<f32> = u_xlat2;
    let x_2873 : vec4<f32> = u_xlat9;
    u_xlat22.x = dot(vec3<f32>(x_2871.x, x_2871.y, x_2871.z), vec3<f32>(x_2873.x, x_2873.y, x_2873.z));
    let x_2878 : f32 = u_xlat22.x;
    u_xlat22.x = clamp(x_2878, 0.0f, 1.0f);
    let x_2881 : vec4<f32> = u_xlat10;
    let x_2883 : vec4<f32> = u_xlat9;
    u_xlat22.y = dot(vec3<f32>(x_2881.x, x_2881.y, x_2881.z), vec3<f32>(x_2883.x, x_2883.y, x_2883.z));
    let x_2888 : f32 = u_xlat22.y;
    u_xlat22.y = clamp(x_2888, 0.0f, 1.0f);
    let x_2891 : vec3<f32> = u_xlat22;
    let x_2893 : vec3<f32> = u_xlat22;
    let x_2895 : vec2<f32> = (vec2<f32>(x_2891.x, x_2891.y) * vec2<f32>(x_2893.x, x_2893.y));
    let x_2896 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2895.x, x_2895.y, x_2896.z);
    let x_2899 : f32 = u_xlat22.x;
    u_xlat22.x = ((x_2899 * -0.99993896484375f) + 1.00001001358032226562f);
    let x_2904 : f32 = u_xlat22.x;
    let x_2906 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2904 * x_2906);
    let x_2910 : f32 = u_xlat22.y;
    u_xlat41.x = max(x_2910, 0.10000000149011611938f);
    let x_2914 : f32 = u_xlat41.x;
    let x_2916 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2914 * x_2916);
    let x_2920 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2920 * 2.03125f);
    let x_2924 : f32 = u_xlat22.x;
    u_xlat22.x = (0.00006103515625f / x_2924);
    let x_2928 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2928 * 0.03999999910593032837f);
    let x_2931 : vec3<f32> = u_xlat22;
    let x_2933 : vec4<f32> = u_xlat11;
    let x_2936 : vec4<f32> = u_xlat8;
    let x_2938 : vec3<f32> = ((vec3<f32>(x_2931.x, x_2931.x, x_2931.x) * vec3<f32>(x_2933.x, x_2933.y, x_2933.z)) + vec3<f32>(x_2936.x, x_2936.y, x_2936.z));
    let x_2939 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2938.x, x_2938.y, x_2938.z, x_2939.w);
    let x_2941 : f32 = u_xlat59;
    let x_2943 : i32 = u_xlati1;
    let x_2945 : vec4<f32> = x_2732.x_AdditionalLightsColor[x_2943];
    let x_2948 : vec4<f32> = u_xlat7;
    let x_2950 : vec3<f32> = ((vec3<f32>(x_2941, x_2941, x_2941) * vec3<f32>(x_2945.x, x_2945.y, x_2945.z)) + vec3<f32>(x_2948.x, x_2948.y, x_2948.z));
    let x_2951 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2950.x, x_2950.y, x_2950.z, x_2951.w);

    continuing {
      let x_2953 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_2953 + bitcast<u32>(1i));
    }
  }
  let x_2955 : f32 = u_xlat58;
  let x_2956 : f32 = u_xlat38;
  u_xlat5.x = (x_2955 * x_2956);
  u_xlat5.y = 0.375f;
  u_xlat5.z = 0.0f;
  let x_2965 : vec4<f32> = u_xlat5;
  let x_2968 : f32 = x_40.x_GlobalMipBias.x;
  let x_2969 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2965.x, x_2965.y), x_2968);
  let x_2970 : vec3<f32> = vec3<f32>(x_2969.x, x_2969.y, x_2969.z);
  let x_2971 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2970.x, x_2971.y, x_2970.y, x_2970.z);
  let x_2973 : vec3<f32> = vs_TEXCOORD2;
  let x_2975 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(-(x_2973), vec3<f32>(x_2975.x, x_2975.y, x_2975.z));
  let x_2980 : f32 = u_xlat1.x;
  let x_2982 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2980 + x_2982);
  let x_2985 : vec4<f32> = u_xlat2;
  let x_2987 : vec3<f32> = u_xlat1;
  let x_2991 : vec3<f32> = vs_TEXCOORD2;
  let x_2993 : vec3<f32> = ((vec3<f32>(x_2985.x, x_2985.y, x_2985.z) * -(vec3<f32>(x_2987.x, x_2987.x, x_2987.x))) + -(x_2991));
  let x_2994 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2994.w);
  let x_3004 : vec4<f32> = u_xlat2;
  let x_3007 : f32 = x_40.x_GlobalMipBias.x;
  let x_3008 : vec4<f32> = textureSampleBias(x_CubemapTexture, sampler_CubemapTexture, vec3<f32>(x_3004.x, x_3004.y, x_3004.z), x_3007);
  let x_3009 : vec3<f32> = vec3<f32>(x_3008.x, x_3008.y, x_3008.z);
  let x_3010 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3009.x, x_3009.y, x_3009.z, x_3010.w);
  let x_3017 : vec2<f32> = u_xlat20;
  let x_3019 : f32 = u_xlat41.y;
  let x_3020 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_3017, x_3019);
  u_xlat1 = vec3<f32>(x_3020.x, x_3020.y, x_3020.z);
  let x_3025 : vec4<f32> = u_xlat5;
  let x_3028 : f32 = x_40.x_GlobalMipBias.x;
  let x_3029 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_3025.x, x_3025.z), x_3028);
  u_xlat22 = vec3<f32>(x_3029.x, x_3029.y, x_3029.z);
  let x_3031 : vec3<f32> = u_xlat1;
  let x_3032 : vec3<f32> = u_xlat22;
  let x_3033 : vec3<f32> = (x_3031 * x_3032);
  let x_3034 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3033.x, x_3033.y, x_3033.z, x_3034.w);
  let x_3036 : vec3<f32> = u_xlat1;
  let x_3038 : vec3<f32> = u_xlat22;
  let x_3040 : vec4<f32> = u_xlat2;
  u_xlat1 = ((-(x_3036) * x_3038) + vec3<f32>(x_3040.x, x_3040.y, x_3040.z));
  let x_3043 : f32 = u_xlat3;
  let x_3045 : vec3<f32> = u_xlat1;
  let x_3047 : vec4<f32> = u_xlat5;
  u_xlat1 = ((vec3<f32>(x_3043, x_3043, x_3043) * x_3045) + vec3<f32>(x_3047.x, x_3047.y, x_3047.z));
  let x_3050 : vec4<f32> = u_xlat7;
  let x_3052 : vec4<f32> = u_xlat0;
  let x_3055 : vec3<f32> = u_xlat1;
  let x_3056 : vec3<f32> = ((vec3<f32>(x_3050.x, x_3050.y, x_3050.z) * vec3<f32>(x_3052.x, x_3052.z, x_3052.w)) + x_3055);
  let x_3057 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3056.x, x_3057.y, x_3056.y, x_3056.z);
  let x_3059 : vec4<f32> = u_xlat8;
  let x_3061 : vec4<f32> = u_xlat0;
  let x_3063 : vec3<f32> = (vec3<f32>(x_3059.x, x_3059.y, x_3059.z) + vec3<f32>(x_3061.x, x_3061.z, x_3061.w));
  let x_3064 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3063.x, x_3064.y, x_3063.y, x_3063.z);
  let x_3066 : f32 = u_xlat19;
  let x_3068 : vec4<f32> = u_xlat4;
  let x_3071 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_3066, x_3066, x_3066) * vec3<f32>(x_3068.x, x_3068.y, x_3068.z)) + -(vec3<f32>(x_3071.x, x_3071.z, x_3071.w)));
  let x_3077 : f32 = u_xlat19;
  let x_3079 : vec3<f32> = u_xlat1;
  let x_3081 : vec4<f32> = u_xlat0;
  let x_3083 : vec3<f32> = ((vec3<f32>(x_3077, x_3077, x_3077) * x_3079) + vec3<f32>(x_3081.x, x_3081.z, x_3081.w));
  let x_3084 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3083.x, x_3083.y, x_3083.z, x_3084.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_TEXCOORD6_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_NORMAL0_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_NORMAL0 = vs_NORMAL0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


