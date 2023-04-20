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

@group(1) @binding(4) var<uniform> x_369 : LightShadows;

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

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatu6 : u32;

var<private> u_xlatb25 : bool;

var<private> u_xlatu57 : u32;

fn main_1() {
  var x_324 : vec2<f32>;
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
  var x_1821 : f32;
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
  let x_208 : vec2<f32> = (vec2<f32>(x_200.x, x_200.y) * vec2<f32>(x_206, x_206));
  let x_209 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_208.x, x_209.y, x_208.y, x_209.w);
  u_xlat2.y = 0.0f;
  u_xlat2.w = 1.0f;
  let x_213 : vec4<f32> = u_xlat2;
  let x_216 : vec3<f32> = vs_NORMAL0;
  let x_217 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) + x_216);
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_221 : vec3<f32> = u_xlat1;
  let x_224 : vec2<f32> = (-(vec2<f32>(x_221.y, x_221.z)) + vec2<f32>(0.5f, 0.5f));
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_224.x, x_225.y, x_224.y, x_225.w);
  u_xlat4.y = 0.0f;
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat4;
  let x_232 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) + vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_236 : vec4<f32> = u_xlat2;
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat20.x = dot(vec3<f32>(x_236.x, x_236.y, x_236.z), vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_243 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_243);
  let x_246 : vec2<f32> = u_xlat20;
  let x_248 : vec4<f32> = u_xlat2;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.x, x_246.x) * vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat2;
  let x_260 : vec4<f32> = x_40.unity_MatrixVP[1i];
  u_xlat20 = (-(vec2<f32>(x_253.y, x_253.y)) * vec2<f32>(x_260.x, x_260.z));
  let x_264 : vec4<f32> = x_40.unity_MatrixVP[0i];
  let x_266 : vec4<f32> = u_xlat2;
  let x_270 : vec2<f32> = u_xlat20;
  u_xlat20 = ((vec2<f32>(x_264.x, x_264.z) * -(vec2<f32>(x_266.x, x_266.x))) + x_270);
  let x_274 : vec4<f32> = x_40.unity_MatrixVP[2i];
  let x_276 : vec4<f32> = u_xlat2;
  let x_280 : vec2<f32> = u_xlat20;
  u_xlat20 = ((vec2<f32>(x_274.x, x_274.z) * -(vec2<f32>(x_276.z, x_276.z))) + x_280);
  let x_282 : f32 = u_xlat3;
  u_xlat3 = x_282;
  let x_283 : f32 = u_xlat3;
  u_xlat3 = clamp(x_283, 0.0f, 1.0f);
  let x_285 : vec2<f32> = u_xlat20;
  let x_286 : f32 = u_xlat3;
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat20 = ((x_285 * vec2<f32>(x_286, x_286)) + vec2<f32>(x_289.x, x_289.y));
  let x_295 : vec2<f32> = u_xlat20;
  let x_297 : f32 = x_40.x_GlobalMipBias.x;
  let x_298 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_295, x_297);
  u_xlat3 = x_298.x;
  let x_301 : f32 = x_40.x_ZBufferParams.z;
  let x_302 : f32 = u_xlat3;
  let x_305 : f32 = x_40.x_ZBufferParams.w;
  u_xlat3 = ((x_301 * x_302) + x_305);
  let x_307 : f32 = u_xlat3;
  u_xlat3 = (1.0f / x_307);
  let x_309 : f32 = u_xlat3;
  let x_311 : f32 = vs_TEXCOORD5.x;
  let x_314 : f32 = vs_TEXCOORD5.y;
  u_xlat3 = ((x_309 * x_311) + -(x_314));
  let x_320 : f32 = u_xlat3;
  u_xlatb22 = (x_320 < 0.0f);
  let x_322 : bool = u_xlatb22;
  if (x_322) {
    let x_327 : vec4<f32> = u_xlat0;
    x_324 = vec2<f32>(x_327.x, x_327.y);
  } else {
    let x_330 : vec2<f32> = u_xlat20;
    x_324 = x_330;
  }
  let x_331 : vec2<f32> = x_324;
  u_xlat20 = x_331;
  let x_332 : bool = u_xlatb22;
  let x_333 : f32 = u_xlat38;
  let x_334 : f32 = u_xlat3;
  u_xlat38 = select(x_334, x_333, x_332);
  let x_336 : vec4<f32> = u_xlat2;
  let x_339 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = dot(vec3<f32>(x_336.x, x_336.y, x_336.z), x_339);
  let x_341 : f32 = u_xlat3;
  u_xlat3 = (-(x_341) + 1.0f);
  let x_345 : f32 = u_xlat3;
  let x_346 : f32 = u_xlat3;
  u_xlat22.x = (x_345 * x_346);
  let x_350 : f32 = u_xlat22.x;
  let x_352 : f32 = u_xlat22.x;
  u_xlat22.x = (x_350 * x_352);
  let x_356 : f32 = u_xlat22.x;
  let x_357 : f32 = u_xlat3;
  u_xlat3 = (x_356 * x_357);
  let x_359 : f32 = u_xlat3;
  u_xlat3 = clamp(x_359, 0.0f, 1.0f);
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_371 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
  u_xlat22 = (x_361 + -(vec3<f32>(x_371.x, x_371.y, x_371.z)));
  let x_375 : vec3<f32> = vs_TEXCOORD1;
  let x_377 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
  let x_380 : vec3<f32> = (x_375 + -(vec3<f32>(x_377.x, x_377.y, x_377.z)));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : vec3<f32> = vs_TEXCOORD1;
  let x_387 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
  let x_390 : vec3<f32> = (x_384 + -(vec3<f32>(x_387.x, x_387.y, x_387.z)));
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : vec3<f32> = vs_TEXCOORD1;
  let x_397 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
  let x_400 : vec3<f32> = (x_394 + -(vec3<f32>(x_397.x, x_397.y, x_397.z)));
  let x_401 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : vec3<f32> = u_xlat22;
  let x_405 : vec3<f32> = u_xlat22;
  u_xlat7.x = dot(x_404, x_405);
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat7.y = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_414 : vec4<f32> = u_xlat5;
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_414.x, x_414.y, x_414.z), vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_420 : vec4<f32> = u_xlat6;
  let x_422 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_429 : vec4<f32> = u_xlat7;
  let x_432 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_429 < x_432);
  let x_435 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_435);
  let x_439 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_439);
  let x_443 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_443);
  let x_447 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_447);
  let x_451 : bool = u_xlatb4.x;
  u_xlat22.x = select(-0.0f, -1.0f, x_451);
  let x_456 : bool = u_xlatb4.y;
  u_xlat22.y = select(-0.0f, -1.0f, x_456);
  let x_460 : bool = u_xlatb4.z;
  u_xlat22.z = select(-0.0f, -1.0f, x_460);
  let x_463 : vec3<f32> = u_xlat22;
  let x_464 : vec4<f32> = u_xlat5;
  u_xlat22 = (x_463 + vec3<f32>(x_464.y, x_464.z, x_464.w));
  let x_467 : vec3<f32> = u_xlat22;
  let x_469 : vec3<f32> = max(x_467, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_470 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_470.x, x_469.x, x_469.y, x_469.z);
  let x_472 : vec4<f32> = u_xlat5;
  u_xlat22.x = dot(x_472, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_479 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_479) + 4.0f);
  let x_486 : f32 = u_xlat22.x;
  u_xlatu22 = u32(x_486);
  let x_490 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_490) << bitcast<u32>(2i));
  let x_493 : vec3<f32> = vs_TEXCOORD1;
  let x_495 : i32 = u_xlati22;
  let x_498 : i32 = u_xlati22;
  let x_502 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_495 + 1i) / 4i)][((x_498 + 1i) % 4i)];
  let x_504 : vec3<f32> = (vec3<f32>(x_493.y, x_493.y, x_493.y) * vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : i32 = u_xlati22;
  let x_509 : i32 = u_xlati22;
  let x_512 : vec4<f32> = x_369.x_MainLightWorldToShadow[(x_507 / 4i)][(x_509 % 4i)];
  let x_514 : vec3<f32> = vs_TEXCOORD1;
  let x_517 : vec4<f32> = u_xlat4;
  let x_519 : vec3<f32> = ((vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(x_514.x, x_514.x, x_514.x)) + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : i32 = u_xlati22;
  let x_525 : i32 = u_xlati22;
  let x_529 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_522 + 2i) / 4i)][((x_525 + 2i) % 4i)];
  let x_531 : vec3<f32> = vs_TEXCOORD1;
  let x_534 : vec4<f32> = u_xlat4;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_531.z, x_531.z, x_531.z)) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : i32 = u_xlati22;
  let x_544 : i32 = u_xlati22;
  let x_548 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_541 + 3i) / 4i)][((x_544 + 3i) % 4i)];
  u_xlat22 = (vec3<f32>(x_539.x, x_539.y, x_539.z) + vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_552 : f32 = x_369.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_552);
  let x_556 : bool = u_xlatb4.x;
  if (x_556) {
    let x_560 : f32 = x_369.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_560 == 1.0f);
    let x_564 : bool = u_xlatb4.x;
    if (x_564) {
      let x_567 : vec3<f32> = u_xlat22;
      let x_570 : vec4<f32> = x_369.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_567.x, x_567.y, x_567.x, x_567.y) + x_570);
      let x_574 : vec4<f32> = u_xlat4;
      let x_575 : vec2<f32> = vec2<f32>(x_574.x, x_574.y);
      let x_577 : f32 = u_xlat22.z;
      txVec0 = vec3<f32>(x_575.x, x_575.y, x_577);
      let x_589 : vec3<f32> = txVec0;
      let x_591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_589.xy, x_589.z);
      u_xlat5.x = x_591;
      let x_594 : vec4<f32> = u_xlat4;
      let x_595 : vec2<f32> = vec2<f32>(x_594.z, x_594.w);
      let x_597 : f32 = u_xlat22.z;
      txVec1 = vec3<f32>(x_595.x, x_595.y, x_597);
      let x_604 : vec3<f32> = txVec1;
      let x_606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_604.xy, x_604.z);
      u_xlat5.y = x_606;
      let x_608 : vec3<f32> = u_xlat22;
      let x_611 : vec4<f32> = x_369.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y) + x_611);
      let x_614 : vec4<f32> = u_xlat4;
      let x_615 : vec2<f32> = vec2<f32>(x_614.x, x_614.y);
      let x_617 : f32 = u_xlat22.z;
      txVec2 = vec3<f32>(x_615.x, x_615.y, x_617);
      let x_624 : vec3<f32> = txVec2;
      let x_626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_624.xy, x_624.z);
      u_xlat5.z = x_626;
      let x_629 : vec4<f32> = u_xlat4;
      let x_630 : vec2<f32> = vec2<f32>(x_629.z, x_629.w);
      let x_632 : f32 = u_xlat22.z;
      txVec3 = vec3<f32>(x_630.x, x_630.y, x_632);
      let x_639 : vec3<f32> = txVec3;
      let x_641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_639.xy, x_639.z);
      u_xlat5.w = x_641;
      let x_643 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(x_643, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_650 : f32 = x_369.x_MainLightShadowParams.y;
      u_xlatb23 = (x_650 == 2.0f);
      let x_652 : bool = u_xlatb23;
      if (x_652) {
        let x_656 : vec3<f32> = u_xlat22;
        let x_659 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_656.x, x_656.y) * vec2<f32>(x_659.z, x_659.w)) + vec2<f32>(0.5f, 0.5f));
        let x_663 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_663);
        let x_665 : vec3<f32> = u_xlat22;
        let x_668 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_671 : vec2<f32> = u_xlat23;
        let x_673 : vec2<f32> = ((vec2<f32>(x_665.x, x_665.y) * vec2<f32>(x_668.z, x_668.w)) + -(x_671));
        let x_674 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_676 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_676.x, x_676.x, x_676.y, x_676.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_680 : vec4<f32> = u_xlat6;
        let x_682 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_680.x, x_680.x, x_680.z, x_680.z) * vec4<f32>(x_682.x, x_682.x, x_682.z, x_682.z));
        let x_686 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_686.y, x_686.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_691 : vec4<f32> = u_xlat7;
        let x_694 : vec4<f32> = u_xlat5;
        let x_697 : vec2<f32> = ((vec2<f32>(x_691.x, x_691.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_694.x, x_694.y)));
        let x_698 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_697.x, x_698.y, x_697.y, x_698.w);
        let x_700 : vec4<f32> = u_xlat5;
        let x_704 : vec2<f32> = (-(vec2<f32>(x_700.x, x_700.y)) + vec2<f32>(1.0f, 1.0f));
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_708 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_708.x, x_708.y), vec2<f32>(0.0f, 0.0f));
        let x_712 : vec2<f32> = u_xlat45;
        let x_714 : vec2<f32> = u_xlat45;
        let x_716 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_712) * x_714) + vec2<f32>(x_716.x, x_716.y));
        let x_719 : vec4<f32> = u_xlat5;
        let x_721 : vec2<f32> = max(vec2<f32>(x_719.x, x_719.y), vec2<f32>(0.0f, 0.0f));
        let x_722 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
        let x_724 : vec4<f32> = u_xlat5;
        let x_727 : vec4<f32> = u_xlat5;
        let x_730 : vec4<f32> = u_xlat6;
        let x_732 : vec2<f32> = ((-(vec2<f32>(x_724.x, x_724.y)) * vec2<f32>(x_727.x, x_727.y)) + vec2<f32>(x_730.y, x_730.w));
        let x_733 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_732.x, x_732.y, x_733.z, x_733.w);
        let x_735 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_735 + vec2<f32>(1.0f, 1.0f));
        let x_737 : vec4<f32> = u_xlat5;
        let x_739 : vec2<f32> = (vec2<f32>(x_737.x, x_737.y) + vec2<f32>(1.0f, 1.0f));
        let x_740 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
        let x_743 : vec4<f32> = u_xlat6;
        let x_747 : vec2<f32> = (vec2<f32>(x_743.x, x_743.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_748 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
        let x_751 : vec4<f32> = u_xlat7;
        let x_753 : vec2<f32> = (vec2<f32>(x_751.x, x_751.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_754 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
        let x_756 : vec2<f32> = u_xlat45;
        let x_757 : vec2<f32> = (x_756 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_758 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_761 : vec4<f32> = u_xlat5;
        let x_763 : vec2<f32> = (vec2<f32>(x_761.x, x_761.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_764 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
        let x_766 : vec4<f32> = u_xlat6;
        let x_768 : vec2<f32> = (vec2<f32>(x_766.y, x_766.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_769 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_768.x, x_768.y, x_769.z, x_769.w);
        let x_772 : f32 = u_xlat7.x;
        u_xlat8.z = x_772;
        let x_775 : f32 = u_xlat5.x;
        u_xlat8.w = x_775;
        let x_778 : f32 = u_xlat10.x;
        u_xlat9.z = x_778;
        let x_781 : f32 = u_xlat43.x;
        u_xlat9.w = x_781;
        let x_783 : vec4<f32> = u_xlat8;
        let x_785 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_783.z, x_783.w, x_783.x, x_783.z) + vec4<f32>(x_785.z, x_785.w, x_785.x, x_785.z));
        let x_789 : f32 = u_xlat8.y;
        u_xlat7.z = x_789;
        let x_792 : f32 = u_xlat5.y;
        u_xlat7.w = x_792;
        let x_795 : f32 = u_xlat9.y;
        u_xlat10.z = x_795;
        let x_798 : f32 = u_xlat43.y;
        u_xlat10.w = x_798;
        let x_800 : vec4<f32> = u_xlat7;
        let x_802 : vec4<f32> = u_xlat10;
        let x_804 : vec3<f32> = (vec3<f32>(x_800.z, x_800.y, x_800.w) + vec3<f32>(x_802.z, x_802.y, x_802.w));
        let x_805 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
        let x_807 : vec4<f32> = u_xlat9;
        let x_809 : vec4<f32> = u_xlat6;
        let x_811 : vec3<f32> = (vec3<f32>(x_807.x, x_807.z, x_807.w) / vec3<f32>(x_809.z, x_809.w, x_809.y));
        let x_812 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
        let x_814 : vec4<f32> = u_xlat7;
        let x_820 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_821 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
        let x_823 : vec4<f32> = u_xlat10;
        let x_825 : vec4<f32> = u_xlat5;
        let x_827 : vec3<f32> = (vec3<f32>(x_823.z, x_823.y, x_823.w) / vec3<f32>(x_825.x, x_825.y, x_825.z));
        let x_828 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat8;
        let x_832 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_833 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
        let x_835 : vec4<f32> = u_xlat7;
        let x_838 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_840 : vec3<f32> = (vec3<f32>(x_835.y, x_835.x, x_835.z) * vec3<f32>(x_838.x, x_838.x, x_838.x));
        let x_841 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
        let x_843 : vec4<f32> = u_xlat8;
        let x_846 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_848 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) * vec3<f32>(x_846.y, x_846.y, x_846.y));
        let x_849 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
        let x_852 : f32 = u_xlat8.x;
        u_xlat7.w = x_852;
        let x_854 : vec2<f32> = u_xlat23;
        let x_857 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_860 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_854.x, x_854.y, x_854.x, x_854.y) * vec4<f32>(x_857.x, x_857.y, x_857.x, x_857.y)) + vec4<f32>(x_860.y, x_860.w, x_860.x, x_860.w));
        let x_863 : vec2<f32> = u_xlat23;
        let x_865 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_868 : vec4<f32> = u_xlat7;
        let x_870 : vec2<f32> = ((x_863 * vec2<f32>(x_865.x, x_865.y)) + vec2<f32>(x_868.z, x_868.w));
        let x_871 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_874 : f32 = u_xlat7.y;
        u_xlat8.w = x_874;
        let x_876 : vec4<f32> = u_xlat8;
        let x_877 : vec2<f32> = vec2<f32>(x_876.y, x_876.z);
        let x_878 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_878.x, x_877.x, x_878.z, x_877.y);
        let x_881 : vec2<f32> = u_xlat23;
        let x_884 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_887 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_881.x, x_881.y, x_881.x, x_881.y) * vec4<f32>(x_884.x, x_884.y, x_884.x, x_884.y)) + vec4<f32>(x_887.x, x_887.y, x_887.z, x_887.y));
        let x_890 : vec2<f32> = u_xlat23;
        let x_893 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_896 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_890.x, x_890.y, x_890.x, x_890.y) * vec4<f32>(x_893.x, x_893.y, x_893.x, x_893.y)) + vec4<f32>(x_896.w, x_896.y, x_896.w, x_896.z));
        let x_899 : vec2<f32> = u_xlat23;
        let x_902 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_905 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_899.x, x_899.y, x_899.x, x_899.y) * vec4<f32>(x_902.x, x_902.y, x_902.x, x_902.y)) + vec4<f32>(x_905.x, x_905.w, x_905.z, x_905.w));
        let x_909 : vec4<f32> = u_xlat5;
        let x_911 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_909.x, x_909.x, x_909.x, x_909.y) * vec4<f32>(x_911.z, x_911.w, x_911.y, x_911.z));
        let x_915 : vec4<f32> = u_xlat5;
        let x_917 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_915.y, x_915.y, x_915.z, x_915.z) * x_917);
        let x_920 : f32 = u_xlat5.z;
        let x_922 : f32 = u_xlat6.y;
        u_xlat23.x = (x_920 * x_922);
        let x_926 : vec4<f32> = u_xlat9;
        let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
        let x_929 : f32 = u_xlat22.z;
        txVec4 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_937 : vec3<f32> = txVec4;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_937.xy, x_937.z);
        u_xlat42 = x_939;
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
        let x_961 : f32 = u_xlat42;
        let x_963 : f32 = u_xlat61;
        u_xlat42 = ((x_960 * x_961) + x_963);
        let x_966 : vec4<f32> = u_xlat10;
        let x_967 : vec2<f32> = vec2<f32>(x_966.x, x_966.y);
        let x_969 : f32 = u_xlat22.z;
        txVec6 = vec3<f32>(x_967.x, x_967.y, x_969);
        let x_976 : vec3<f32> = txVec6;
        let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_976.xy, x_976.z);
        u_xlat61 = x_978;
        let x_980 : f32 = u_xlat12.z;
        let x_981 : f32 = u_xlat61;
        let x_983 : f32 = u_xlat42;
        u_xlat42 = ((x_980 * x_981) + x_983);
        let x_986 : vec4<f32> = u_xlat8;
        let x_987 : vec2<f32> = vec2<f32>(x_986.x, x_986.y);
        let x_989 : f32 = u_xlat22.z;
        txVec7 = vec3<f32>(x_987.x, x_987.y, x_989);
        let x_996 : vec3<f32> = txVec7;
        let x_998 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_996.xy, x_996.z);
        u_xlat61 = x_998;
        let x_1000 : f32 = u_xlat12.w;
        let x_1001 : f32 = u_xlat61;
        let x_1003 : f32 = u_xlat42;
        u_xlat42 = ((x_1000 * x_1001) + x_1003);
        let x_1006 : vec4<f32> = u_xlat11;
        let x_1007 : vec2<f32> = vec2<f32>(x_1006.x, x_1006.y);
        let x_1009 : f32 = u_xlat22.z;
        txVec8 = vec3<f32>(x_1007.x, x_1007.y, x_1009);
        let x_1016 : vec3<f32> = txVec8;
        let x_1018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1016.xy, x_1016.z);
        u_xlat61 = x_1018;
        let x_1020 : f32 = u_xlat13.x;
        let x_1021 : f32 = u_xlat61;
        let x_1023 : f32 = u_xlat42;
        u_xlat42 = ((x_1020 * x_1021) + x_1023);
        let x_1026 : vec4<f32> = u_xlat11;
        let x_1027 : vec2<f32> = vec2<f32>(x_1026.z, x_1026.w);
        let x_1029 : f32 = u_xlat22.z;
        txVec9 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
        let x_1036 : vec3<f32> = txVec9;
        let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1036.xy, x_1036.z);
        u_xlat61 = x_1038;
        let x_1040 : f32 = u_xlat13.y;
        let x_1041 : f32 = u_xlat61;
        let x_1043 : f32 = u_xlat42;
        u_xlat42 = ((x_1040 * x_1041) + x_1043);
        let x_1046 : vec4<f32> = u_xlat8;
        let x_1047 : vec2<f32> = vec2<f32>(x_1046.z, x_1046.w);
        let x_1049 : f32 = u_xlat22.z;
        txVec10 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
        let x_1056 : vec3<f32> = txVec10;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1056.xy, x_1056.z);
        u_xlat61 = x_1058;
        let x_1060 : f32 = u_xlat13.z;
        let x_1061 : f32 = u_xlat61;
        let x_1063 : f32 = u_xlat42;
        u_xlat42 = ((x_1060 * x_1061) + x_1063);
        let x_1066 : vec4<f32> = u_xlat7;
        let x_1067 : vec2<f32> = vec2<f32>(x_1066.x, x_1066.y);
        let x_1069 : f32 = u_xlat22.z;
        txVec11 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
        let x_1076 : vec3<f32> = txVec11;
        let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1076.xy, x_1076.z);
        u_xlat61 = x_1078;
        let x_1080 : f32 = u_xlat13.w;
        let x_1081 : f32 = u_xlat61;
        let x_1083 : f32 = u_xlat42;
        u_xlat42 = ((x_1080 * x_1081) + x_1083);
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1087 : vec2<f32> = vec2<f32>(x_1086.z, x_1086.w);
        let x_1089 : f32 = u_xlat22.z;
        txVec12 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
        let x_1096 : vec3<f32> = txVec12;
        let x_1098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1096.xy, x_1096.z);
        u_xlat61 = x_1098;
        let x_1100 : f32 = u_xlat23.x;
        let x_1101 : f32 = u_xlat61;
        let x_1103 : f32 = u_xlat42;
        u_xlat4.x = ((x_1100 * x_1101) + x_1103);
      } else {
        let x_1107 : vec3<f32> = u_xlat22;
        let x_1110 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(x_1110.z, x_1110.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1114 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_1114);
        let x_1116 : vec3<f32> = u_xlat22;
        let x_1119 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1122 : vec2<f32> = u_xlat23;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1119.z, x_1119.w)) + -(x_1122));
        let x_1125 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1127 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1127.x, x_1127.x, x_1127.y, x_1127.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1130 : vec4<f32> = u_xlat6;
        let x_1132 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1130.x, x_1130.x, x_1130.z, x_1130.z) * vec4<f32>(x_1132.x, x_1132.x, x_1132.z, x_1132.z));
        let x_1135 : vec4<f32> = u_xlat7;
        let x_1139 : vec2<f32> = (vec2<f32>(x_1135.y, x_1135.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1140.x, x_1139.x, x_1140.z, x_1139.y);
        let x_1142 : vec4<f32> = u_xlat7;
        let x_1145 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1142.x, x_1142.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1145.x, x_1145.y)));
        let x_1149 : vec4<f32> = u_xlat5;
        let x_1152 : vec2<f32> = (-(vec2<f32>(x_1149.x, x_1149.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1153 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1152.x, x_1153.y, x_1152.y, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat5;
        let x_1157 : vec2<f32> = min(vec2<f32>(x_1155.x, x_1155.y), vec2<f32>(0.0f, 0.0f));
        let x_1158 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat7;
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1166 : vec4<f32> = u_xlat6;
        let x_1168 : vec2<f32> = ((-(vec2<f32>(x_1160.x, x_1160.y)) * vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(x_1166.x, x_1166.z));
        let x_1169 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1168.x, x_1169.y, x_1168.y, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat5;
        let x_1173 : vec2<f32> = max(vec2<f32>(x_1171.x, x_1171.y), vec2<f32>(0.0f, 0.0f));
        let x_1174 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat7;
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1182 : vec4<f32> = u_xlat6;
        let x_1184 : vec2<f32> = ((-(vec2<f32>(x_1176.x, x_1176.y)) * vec2<f32>(x_1179.x, x_1179.y)) + vec2<f32>(x_1182.y, x_1182.w));
        let x_1185 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1185.x, x_1184.x, x_1185.z, x_1184.y);
        let x_1187 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1187 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1191 : f32 = u_xlat6.y;
        u_xlat7.z = (x_1191 * 0.08163200318813323975f);
        let x_1195 : vec2<f32> = u_xlat43;
        let x_1198 : vec2<f32> = (vec2<f32>(x_1195.y, x_1195.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1199 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1198.x, x_1198.y, x_1199.z, x_1199.w);
        let x_1201 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_1201.x, x_1201.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1205 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1205 * 0.08163200318813323975f);
        let x_1209 : f32 = u_xlat9.y;
        u_xlat7.x = x_1209;
        let x_1211 : vec4<f32> = u_xlat5;
        let x_1218 : vec2<f32> = ((vec2<f32>(x_1211.x, x_1211.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1219 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1219.x, x_1218.x, x_1219.z, x_1218.y);
        let x_1221 : vec4<f32> = u_xlat5;
        let x_1225 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1226 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1225.x, x_1226.y, x_1225.y, x_1226.w);
        let x_1229 : f32 = u_xlat43.x;
        u_xlat6.y = x_1229;
        let x_1232 : f32 = u_xlat8.y;
        u_xlat6.w = x_1232;
        let x_1234 : vec4<f32> = u_xlat6;
        let x_1235 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1234 + x_1235);
        let x_1237 : vec4<f32> = u_xlat5;
        let x_1240 : vec2<f32> = ((vec2<f32>(x_1237.y, x_1237.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1241 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1241.x, x_1240.x, x_1241.z, x_1240.y);
        let x_1243 : vec4<f32> = u_xlat5;
        let x_1246 : vec2<f32> = ((vec2<f32>(x_1243.y, x_1243.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1247 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1246.x, x_1247.y, x_1246.y, x_1247.w);
        let x_1250 : f32 = u_xlat43.y;
        u_xlat8.y = x_1250;
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1252 + x_1253);
        let x_1255 : vec4<f32> = u_xlat6;
        let x_1256 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1255 / x_1256);
        let x_1258 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1258 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1264 : vec4<f32> = u_xlat8;
        let x_1265 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1264 / x_1265);
        let x_1267 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1267 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1269 : vec4<f32> = u_xlat6;
        let x_1272 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1269.w, x_1269.x, x_1269.y, x_1269.z) * vec4<f32>(x_1272.x, x_1272.x, x_1272.x, x_1272.x));
        let x_1275 : vec4<f32> = u_xlat8;
        let x_1278 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1275.x, x_1275.w, x_1275.y, x_1275.z) * vec4<f32>(x_1278.y, x_1278.y, x_1278.y, x_1278.y));
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1282 : vec3<f32> = vec3<f32>(x_1281.y, x_1281.z, x_1281.w);
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1282.x, x_1283.y, x_1282.y, x_1282.z);
        let x_1286 : f32 = u_xlat8.x;
        u_xlat9.y = x_1286;
        let x_1288 : vec2<f32> = u_xlat23;
        let x_1291 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y) * vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y)) + vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.y));
        let x_1297 : vec2<f32> = u_xlat23;
        let x_1299 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat9;
        let x_1304 : vec2<f32> = ((x_1297 * vec2<f32>(x_1299.x, x_1299.y)) + vec2<f32>(x_1302.w, x_1302.y));
        let x_1305 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1304.x, x_1304.y, x_1305.z, x_1305.w);
        let x_1308 : f32 = u_xlat9.y;
        u_xlat6.y = x_1308;
        let x_1311 : f32 = u_xlat8.z;
        u_xlat9.y = x_1311;
        let x_1313 : vec2<f32> = u_xlat23;
        let x_1316 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y) * vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y)) + vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1319.y));
        let x_1323 : vec2<f32> = u_xlat23;
        let x_1325 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1323 * vec2<f32>(x_1325.x, x_1325.y)) + vec2<f32>(x_1328.w, x_1328.y));
        let x_1332 : f32 = u_xlat9.y;
        u_xlat6.z = x_1332;
        let x_1334 : vec2<f32> = u_xlat23;
        let x_1337 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y) * vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y)) + vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.z));
        let x_1344 : f32 = u_xlat8.w;
        u_xlat9.y = x_1344;
        let x_1347 : vec2<f32> = u_xlat23;
        let x_1350 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1353 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1347.x, x_1347.y, x_1347.x, x_1347.y) * vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y)) + vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1353.y));
        let x_1357 : vec2<f32> = u_xlat23;
        let x_1359 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat9;
        let x_1364 : vec2<f32> = ((x_1357 * vec2<f32>(x_1359.x, x_1359.y)) + vec2<f32>(x_1362.w, x_1362.y));
        let x_1365 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1364.x, x_1364.y, x_1365.z);
        let x_1368 : f32 = u_xlat9.y;
        u_xlat6.w = x_1368;
        let x_1371 : vec2<f32> = u_xlat23;
        let x_1373 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1376 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1371 * vec2<f32>(x_1373.x, x_1373.y)) + vec2<f32>(x_1376.x, x_1376.w));
        let x_1379 : vec4<f32> = u_xlat9;
        let x_1380 : vec3<f32> = vec3<f32>(x_1379.x, x_1379.z, x_1379.w);
        let x_1381 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1380.x, x_1381.y, x_1380.y, x_1380.z);
        let x_1383 : vec2<f32> = u_xlat23;
        let x_1386 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1389 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1383.x, x_1383.y, x_1383.x, x_1383.y) * vec4<f32>(x_1386.x, x_1386.y, x_1386.x, x_1386.y)) + vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1389.y));
        let x_1393 : vec2<f32> = u_xlat23;
        let x_1395 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1398 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1393 * vec2<f32>(x_1395.x, x_1395.y)) + vec2<f32>(x_1398.w, x_1398.y));
        let x_1402 : f32 = u_xlat6.x;
        u_xlat8.x = x_1402;
        let x_1404 : vec2<f32> = u_xlat23;
        let x_1406 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1409 : vec4<f32> = u_xlat8;
        u_xlat23 = ((x_1404 * vec2<f32>(x_1406.x, x_1406.y)) + vec2<f32>(x_1409.x, x_1409.y));
        let x_1413 : vec4<f32> = u_xlat5;
        let x_1415 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1413.x, x_1413.x, x_1413.x, x_1413.x) * x_1415);
        let x_1418 : vec4<f32> = u_xlat5;
        let x_1420 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1418.y, x_1418.y, x_1418.y, x_1418.y) * x_1420);
        let x_1423 : vec4<f32> = u_xlat5;
        let x_1425 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1423.z, x_1423.z, x_1423.z, x_1423.z) * x_1425);
        let x_1427 : vec4<f32> = u_xlat5;
        let x_1429 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1427.w, x_1427.w, x_1427.w, x_1427.w) * x_1429);
        let x_1432 : vec4<f32> = u_xlat10;
        let x_1433 : vec2<f32> = vec2<f32>(x_1432.x, x_1432.y);
        let x_1435 : f32 = u_xlat22.z;
        txVec13 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec13;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1442.xy, x_1442.z);
        u_xlat61 = x_1444;
        let x_1446 : vec4<f32> = u_xlat10;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.z, x_1446.w);
        let x_1449 : f32 = u_xlat22.z;
        txVec14 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec14;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
        u_xlat6.x = x_1458;
        let x_1461 : f32 = u_xlat6.x;
        let x_1463 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1461 * x_1463);
        let x_1467 : f32 = u_xlat16.x;
        let x_1468 : f32 = u_xlat61;
        let x_1471 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1467 * x_1468) + x_1471);
        let x_1474 : vec4<f32> = u_xlat11;
        let x_1475 : vec2<f32> = vec2<f32>(x_1474.x, x_1474.y);
        let x_1477 : f32 = u_xlat22.z;
        txVec15 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
        let x_1484 : vec3<f32> = txVec15;
        let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1484.xy, x_1484.z);
        u_xlat6.x = x_1486;
        let x_1489 : f32 = u_xlat16.z;
        let x_1491 : f32 = u_xlat6.x;
        let x_1493 : f32 = u_xlat61;
        u_xlat61 = ((x_1489 * x_1491) + x_1493);
        let x_1496 : vec4<f32> = u_xlat13;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.x, x_1496.y);
        let x_1499 : f32 = u_xlat22.z;
        txVec16 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec16;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1506.xy, x_1506.z);
        u_xlat6.x = x_1508;
        let x_1511 : f32 = u_xlat16.w;
        let x_1513 : f32 = u_xlat6.x;
        let x_1515 : f32 = u_xlat61;
        u_xlat61 = ((x_1511 * x_1513) + x_1515);
        let x_1518 : vec4<f32> = u_xlat12;
        let x_1519 : vec2<f32> = vec2<f32>(x_1518.x, x_1518.y);
        let x_1521 : f32 = u_xlat22.z;
        txVec17 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec17;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1528.xy, x_1528.z);
        u_xlat6.x = x_1530;
        let x_1533 : f32 = u_xlat17.x;
        let x_1535 : f32 = u_xlat6.x;
        let x_1537 : f32 = u_xlat61;
        u_xlat61 = ((x_1533 * x_1535) + x_1537);
        let x_1540 : vec4<f32> = u_xlat12;
        let x_1541 : vec2<f32> = vec2<f32>(x_1540.z, x_1540.w);
        let x_1543 : f32 = u_xlat22.z;
        txVec18 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec18;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1550.xy, x_1550.z);
        u_xlat6.x = x_1552;
        let x_1555 : f32 = u_xlat17.y;
        let x_1557 : f32 = u_xlat6.x;
        let x_1559 : f32 = u_xlat61;
        u_xlat61 = ((x_1555 * x_1557) + x_1559);
        let x_1562 : vec2<f32> = u_xlat49;
        let x_1564 : f32 = u_xlat22.z;
        txVec19 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec19;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1571.xy, x_1571.z);
        u_xlat6.x = x_1573;
        let x_1576 : f32 = u_xlat17.z;
        let x_1578 : f32 = u_xlat6.x;
        let x_1580 : f32 = u_xlat61;
        u_xlat61 = ((x_1576 * x_1578) + x_1580);
        let x_1583 : vec4<f32> = u_xlat13;
        let x_1584 : vec2<f32> = vec2<f32>(x_1583.z, x_1583.w);
        let x_1586 : f32 = u_xlat22.z;
        txVec20 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec20;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1593.xy, x_1593.z);
        u_xlat6.x = x_1595;
        let x_1598 : f32 = u_xlat17.w;
        let x_1600 : f32 = u_xlat6.x;
        let x_1602 : f32 = u_xlat61;
        u_xlat61 = ((x_1598 * x_1600) + x_1602);
        let x_1605 : vec4<f32> = u_xlat14;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.x, x_1605.y);
        let x_1608 : f32 = u_xlat22.z;
        txVec21 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec21;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1615.xy, x_1615.z);
        u_xlat6.x = x_1617;
        let x_1620 : f32 = u_xlat18.x;
        let x_1622 : f32 = u_xlat6.x;
        let x_1624 : f32 = u_xlat61;
        u_xlat61 = ((x_1620 * x_1622) + x_1624);
        let x_1627 : vec4<f32> = u_xlat14;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.z, x_1627.w);
        let x_1630 : f32 = u_xlat22.z;
        txVec22 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec22;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
        u_xlat6.x = x_1639;
        let x_1642 : f32 = u_xlat18.y;
        let x_1644 : f32 = u_xlat6.x;
        let x_1646 : f32 = u_xlat61;
        u_xlat61 = ((x_1642 * x_1644) + x_1646);
        let x_1649 : vec3<f32> = u_xlat25;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.x, x_1649.y);
        let x_1652 : f32 = u_xlat22.z;
        txVec23 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec23;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat6.x = x_1661;
        let x_1664 : f32 = u_xlat18.z;
        let x_1666 : f32 = u_xlat6.x;
        let x_1668 : f32 = u_xlat61;
        u_xlat61 = ((x_1664 * x_1666) + x_1668);
        let x_1671 : vec2<f32> = u_xlat15;
        let x_1673 : f32 = u_xlat22.z;
        txVec24 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec24;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1680.xy, x_1680.z);
        u_xlat6.x = x_1682;
        let x_1685 : f32 = u_xlat18.w;
        let x_1687 : f32 = u_xlat6.x;
        let x_1689 : f32 = u_xlat61;
        u_xlat61 = ((x_1685 * x_1687) + x_1689);
        let x_1692 : vec4<f32> = u_xlat9;
        let x_1693 : vec2<f32> = vec2<f32>(x_1692.x, x_1692.y);
        let x_1695 : f32 = u_xlat22.z;
        txVec25 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1702 : vec3<f32> = txVec25;
        let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1702.xy, x_1702.z);
        u_xlat6.x = x_1704;
        let x_1707 : f32 = u_xlat5.x;
        let x_1709 : f32 = u_xlat6.x;
        let x_1711 : f32 = u_xlat61;
        u_xlat61 = ((x_1707 * x_1709) + x_1711);
        let x_1714 : vec4<f32> = u_xlat9;
        let x_1715 : vec2<f32> = vec2<f32>(x_1714.z, x_1714.w);
        let x_1717 : f32 = u_xlat22.z;
        txVec26 = vec3<f32>(x_1715.x, x_1715.y, x_1717);
        let x_1724 : vec3<f32> = txVec26;
        let x_1726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1724.xy, x_1724.z);
        u_xlat5.x = x_1726;
        let x_1729 : f32 = u_xlat5.y;
        let x_1731 : f32 = u_xlat5.x;
        let x_1733 : f32 = u_xlat61;
        u_xlat61 = ((x_1729 * x_1731) + x_1733);
        let x_1736 : vec2<f32> = u_xlat46;
        let x_1738 : f32 = u_xlat22.z;
        txVec27 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec27;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1745.xy, x_1745.z);
        u_xlat5.x = x_1747;
        let x_1750 : f32 = u_xlat5.z;
        let x_1752 : f32 = u_xlat5.x;
        let x_1754 : f32 = u_xlat61;
        u_xlat61 = ((x_1750 * x_1752) + x_1754);
        let x_1757 : vec2<f32> = u_xlat23;
        let x_1759 : f32 = u_xlat22.z;
        txVec28 = vec3<f32>(x_1757.x, x_1757.y, x_1759);
        let x_1766 : vec3<f32> = txVec28;
        let x_1768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1766.xy, x_1766.z);
        u_xlat23.x = x_1768;
        let x_1771 : f32 = u_xlat5.w;
        let x_1773 : f32 = u_xlat23.x;
        let x_1775 : f32 = u_xlat61;
        u_xlat4.x = ((x_1771 * x_1773) + x_1775);
      }
    }
  } else {
    let x_1780 : vec3<f32> = u_xlat22;
    let x_1781 : vec2<f32> = vec2<f32>(x_1780.x, x_1780.y);
    let x_1783 : f32 = u_xlat22.z;
    txVec29 = vec3<f32>(x_1781.x, x_1781.y, x_1783);
    let x_1790 : vec3<f32> = txVec29;
    let x_1792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1790.xy, x_1790.z);
    u_xlat4.x = x_1792;
  }
  let x_1795 : f32 = x_369.x_MainLightShadowParams.x;
  u_xlat22.x = (-(x_1795) + 1.0f);
  let x_1800 : f32 = u_xlat4.x;
  let x_1802 : f32 = x_369.x_MainLightShadowParams.x;
  let x_1805 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_1800 * x_1802) + x_1805);
  let x_1810 : f32 = u_xlat22.z;
  u_xlatb41 = (0.0f >= x_1810);
  let x_1814 : f32 = u_xlat22.z;
  u_xlatb60 = (x_1814 >= 1.0f);
  let x_1816 : bool = u_xlatb60;
  let x_1817 : bool = u_xlatb41;
  u_xlatb41 = (x_1816 | x_1817);
  let x_1819 : bool = u_xlatb41;
  if (x_1819) {
    x_1821 = 1.0f;
  } else {
    let x_1826 : f32 = u_xlat22.x;
    x_1821 = x_1826;
  }
  let x_1827 : f32 = x_1821;
  u_xlat22.x = x_1827;
  let x_1829 : vec4<f32> = u_xlat0;
  let x_1832 : vec4<f32> = x_40.x_ScreenParams;
  let x_1834 : vec2<f32> = (vec2<f32>(x_1829.x, x_1829.y) * vec2<f32>(x_1832.x, x_1832.y));
  let x_1835 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1834.x, x_1834.y, x_1835.z, x_1835.w);
  let x_1837 : vec4<f32> = u_xlat0;
  let x_1840 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
  let x_1842 : vec2<f32> = (vec2<f32>(x_1837.x, x_1837.y) * vec2<f32>(x_1840.x, x_1840.y));
  let x_1843 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1842.x, x_1842.y, x_1843.z, x_1843.w);
  let x_1846 : f32 = u_xlat38;
  u_xlat41 = (vec2<f32>(x_1846, x_1846) * vec2<f32>(20.0f, 0.25f));
  let x_1851 : vec2<f32> = u_xlat41;
  let x_1853 : vec3<f32> = vs_TEXCOORD2;
  let x_1855 : vec3<f32> = (vec3<f32>(x_1851.y, x_1851.y, x_1851.y) * -(x_1853));
  let x_1856 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
  let x_1859 : f32 = x_40.x_Time.x;
  u_xlat5.x = fract(x_1859);
  let x_1863 : f32 = x_40.x_Time.z;
  u_xlat5.y = fract(-(x_1863));
  let x_1867 : vec4<f32> = u_xlat0;
  u_xlat43 = vec2<f32>(x_1867.x, x_1867.y);
  u_xlat61 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1876 : u32 = u_xlatu_loop_1;
    if ((x_1876 < 4u)) {
    } else {
      break;
    }
    let x_1879 : vec4<f32> = u_xlat5;
    let x_1881 : vec2<f32> = u_xlat43;
    u_xlat43 = (vec2<f32>(x_1879.x, x_1879.y) + x_1881);
    let x_1883 : u32 = u_xlatu_loop_1;
    u_xlat25.x = f32(x_1883);
    let x_1887 : vec3<f32> = u_xlat25;
    let x_1890 : vec4<f32> = x_40.x_ScreenParams;
    let x_1893 : vec2<f32> = u_xlat43;
    u_xlat44 = ((vec2<f32>(x_1887.x, x_1887.x) * vec2<f32>(x_1890.x, x_1890.y)) + x_1893);
    let x_1900 : vec2<f32> = u_xlat44;
    let x_1902 : f32 = x_40.x_GlobalMipBias.x;
    let x_1903 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, x_1900, x_1902);
    let x_1904 : vec3<f32> = vec3<f32>(x_1903.x, x_1903.y, x_1903.z);
    let x_1905 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
    let x_1907 : vec4<f32> = u_xlat7;
    let x_1912 : vec3<f32> = ((vec3<f32>(x_1907.x, x_1907.z, x_1907.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_1913 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1913.w);
    let x_1915 : vec2<f32> = u_xlat41;
    let x_1917 : vec4<f32> = u_xlat7;
    let x_1919 : vec3<f32> = (vec3<f32>(x_1915.y, x_1915.y, x_1915.y) * vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
    let x_1920 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1919.x, x_1919.y, x_1920.z, x_1919.z);
    let x_1922 : vec3<f32> = u_xlat25;
    let x_1924 : vec4<f32> = u_xlat7;
    let x_1926 : vec3<f32> = (vec3<f32>(x_1922.x, x_1922.x, x_1922.x) * vec3<f32>(x_1924.x, x_1924.y, x_1924.w));
    let x_1927 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1926.x, x_1926.y, x_1927.z, x_1926.z);
    let x_1929 : vec4<f32> = u_xlat7;
    let x_1934 : vec3<f32> = vs_TEXCOORD1;
    let x_1935 : vec3<f32> = ((vec3<f32>(x_1929.x, x_1929.y, x_1929.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_1934);
    let x_1936 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1935.x, x_1935.y, x_1936.z, x_1935.z);
    let x_1939 : f32 = u_xlat25.x;
    let x_1941 : f32 = u_xlat7.z;
    u_xlat25.x = (x_1939 + x_1941);
    let x_1944 : vec4<f32> = u_xlat4;
    let x_1946 : vec3<f32> = u_xlat25;
    let x_1949 : vec4<f32> = u_xlat7;
    u_xlat25 = ((vec3<f32>(x_1944.x, x_1944.y, x_1944.z) * vec3<f32>(x_1946.x, x_1946.x, x_1946.x)) + vec3<f32>(x_1949.x, x_1949.y, x_1949.w));
    let x_1952 : vec3<f32> = u_xlat25;
    let x_1954 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
    let x_1957 : vec3<f32> = (x_1952 + -(vec3<f32>(x_1954.x, x_1954.y, x_1954.z)));
    let x_1958 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1958.w);
    let x_1960 : vec3<f32> = u_xlat25;
    let x_1962 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
    let x_1965 : vec3<f32> = (x_1960 + -(vec3<f32>(x_1962.x, x_1962.y, x_1962.z)));
    let x_1966 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1966.w);
    let x_1968 : vec3<f32> = u_xlat25;
    let x_1970 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
    let x_1973 : vec3<f32> = (x_1968 + -(vec3<f32>(x_1970.x, x_1970.y, x_1970.z)));
    let x_1974 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
    let x_1976 : vec3<f32> = u_xlat25;
    let x_1978 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
    let x_1981 : vec3<f32> = (x_1976 + -(vec3<f32>(x_1978.x, x_1978.y, x_1978.z)));
    let x_1982 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1981.x, x_1981.y, x_1981.z, x_1982.w);
    let x_1984 : vec4<f32> = u_xlat7;
    let x_1986 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_1984.x, x_1984.y, x_1984.z), vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
    let x_1990 : vec4<f32> = u_xlat8;
    let x_1992 : vec4<f32> = u_xlat8;
    u_xlat7.y = dot(vec3<f32>(x_1990.x, x_1990.y, x_1990.z), vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
    let x_1996 : vec4<f32> = u_xlat9;
    let x_1998 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(vec3<f32>(x_1996.x, x_1996.y, x_1996.z), vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
    let x_2002 : vec4<f32> = u_xlat10;
    let x_2004 : vec4<f32> = u_xlat10;
    u_xlat7.w = dot(vec3<f32>(x_2002.x, x_2002.y, x_2002.z), vec3<f32>(x_2004.x, x_2004.y, x_2004.z));
    let x_2009 : vec4<f32> = u_xlat7;
    let x_2011 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
    u_xlatb7 = (x_2009 < x_2011);
    let x_2014 : bool = u_xlatb7.x;
    u_xlat8.x = select(0.0f, 1.0f, x_2014);
    let x_2018 : bool = u_xlatb7.y;
    u_xlat8.y = select(0.0f, 1.0f, x_2018);
    let x_2022 : bool = u_xlatb7.z;
    u_xlat8.z = select(0.0f, 1.0f, x_2022);
    let x_2026 : bool = u_xlatb7.w;
    u_xlat8.w = select(0.0f, 1.0f, x_2026);
    let x_2030 : bool = u_xlatb7.x;
    u_xlat7.x = select(-0.0f, -1.0f, x_2030);
    let x_2034 : bool = u_xlatb7.y;
    u_xlat7.y = select(-0.0f, -1.0f, x_2034);
    let x_2038 : bool = u_xlatb7.z;
    u_xlat7.z = select(-0.0f, -1.0f, x_2038);
    let x_2041 : vec4<f32> = u_xlat7;
    let x_2043 : vec4<f32> = u_xlat8;
    let x_2045 : vec3<f32> = (vec3<f32>(x_2041.x, x_2041.y, x_2041.z) + vec3<f32>(x_2043.y, x_2043.z, x_2043.w));
    let x_2046 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
    let x_2048 : vec4<f32> = u_xlat7;
    let x_2050 : vec3<f32> = max(vec3<f32>(x_2048.x, x_2048.y, x_2048.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_2051 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2051.x, x_2050.x, x_2050.y, x_2050.z);
    let x_2053 : vec4<f32> = u_xlat8;
    u_xlat7.x = dot(x_2053, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_2057 : f32 = u_xlat7.x;
    u_xlat7.x = (-(x_2057) + 4.0f);
    let x_2063 : f32 = u_xlat7.x;
    u_xlatu7 = u32(x_2063);
    let x_2066 : u32 = u_xlatu7;
    u_xlati7 = (bitcast<i32>(x_2066) << bitcast<u32>(2i));
    let x_2070 : vec3<f32> = u_xlat25;
    let x_2072 : i32 = u_xlati7;
    let x_2075 : i32 = u_xlati7;
    let x_2079 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2072 + 1i) / 4i)][((x_2075 + 1i) % 4i)];
    u_xlat26 = (vec3<f32>(x_2070.y, x_2070.y, x_2070.y) * vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
    let x_2082 : i32 = u_xlati7;
    let x_2084 : i32 = u_xlati7;
    let x_2087 : vec4<f32> = x_369.x_MainLightWorldToShadow[(x_2082 / 4i)][(x_2084 % 4i)];
    let x_2089 : vec3<f32> = u_xlat25;
    let x_2092 : vec3<f32> = u_xlat26;
    u_xlat26 = ((vec3<f32>(x_2087.x, x_2087.y, x_2087.z) * vec3<f32>(x_2089.x, x_2089.x, x_2089.x)) + x_2092);
    let x_2094 : i32 = u_xlati7;
    let x_2097 : i32 = u_xlati7;
    let x_2101 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2094 + 2i) / 4i)][((x_2097 + 2i) % 4i)];
    let x_2103 : vec3<f32> = u_xlat25;
    let x_2106 : vec3<f32> = u_xlat26;
    u_xlat25 = ((vec3<f32>(x_2101.x, x_2101.y, x_2101.z) * vec3<f32>(x_2103.z, x_2103.z, x_2103.z)) + x_2106);
    let x_2108 : vec3<f32> = u_xlat25;
    let x_2109 : i32 = u_xlati7;
    let x_2112 : i32 = u_xlati7;
    let x_2116 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2109 + 3i) / 4i)][((x_2112 + 3i) % 4i)];
    u_xlat25 = (x_2108 + vec3<f32>(x_2116.x, x_2116.y, x_2116.z));
    let x_2120 : vec3<f32> = u_xlat25;
    let x_2121 : vec2<f32> = vec2<f32>(x_2120.x, x_2120.y);
    let x_2123 : f32 = u_xlat25.z;
    txVec30 = vec3<f32>(x_2121.x, x_2121.y, x_2123);
    let x_2130 : vec3<f32> = txVec30;
    let x_2132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2130.xy, x_2130.z);
    u_xlat25.x = x_2132;
    let x_2134 : f32 = u_xlat61;
    let x_2136 : f32 = u_xlat25.x;
    u_xlat61 = (x_2134 + x_2136);

    continuing {
      let x_2138 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2138 + bitcast<u32>(1i));
    }
  }
  let x_2140 : vec3<f32> = vs_TEXCOORD1;
  let x_2143 : vec3<f32> = (x_2140 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_2144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
  let x_2146 : vec3<f32> = vs_TEXCOORD1;
  let x_2149 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
  let x_2152 : vec3<f32> = ((x_2146 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2149.x, x_2149.y, x_2149.z)));
  let x_2153 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2152.x, x_2152.y, x_2152.z, x_2153.w);
  let x_2155 : vec3<f32> = vs_TEXCOORD1;
  let x_2158 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
  let x_2161 : vec3<f32> = ((x_2155 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2158.x, x_2158.y, x_2158.z)));
  let x_2162 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
  let x_2164 : vec3<f32> = vs_TEXCOORD1;
  let x_2167 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
  let x_2170 : vec3<f32> = ((x_2164 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2167.x, x_2167.y, x_2167.z)));
  let x_2171 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
  let x_2173 : vec3<f32> = vs_TEXCOORD1;
  let x_2176 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
  let x_2179 : vec3<f32> = ((x_2173 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2176.x, x_2176.y, x_2176.z)));
  let x_2180 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
  let x_2182 : vec4<f32> = u_xlat5;
  let x_2184 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2182.x, x_2182.y, x_2182.z), vec3<f32>(x_2184.x, x_2184.y, x_2184.z));
  let x_2188 : vec4<f32> = u_xlat6;
  let x_2190 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_2188.x, x_2188.y, x_2188.z), vec3<f32>(x_2190.x, x_2190.y, x_2190.z));
  let x_2194 : vec4<f32> = u_xlat7;
  let x_2196 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_2194.x, x_2194.y, x_2194.z), vec3<f32>(x_2196.x, x_2196.y, x_2196.z));
  let x_2200 : vec4<f32> = u_xlat8;
  let x_2202 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_2200.x, x_2200.y, x_2200.z), vec3<f32>(x_2202.x, x_2202.y, x_2202.z));
  let x_2207 : vec4<f32> = u_xlat5;
  let x_2209 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_2207 < x_2209);
  let x_2212 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_2212);
  let x_2216 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_2216);
  let x_2220 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_2220);
  let x_2224 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_2224);
  let x_2228 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_2228);
  let x_2232 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_2232);
  let x_2236 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_2236);
  let x_2239 : vec4<f32> = u_xlat5;
  let x_2241 : vec4<f32> = u_xlat6;
  let x_2243 : vec3<f32> = (vec3<f32>(x_2239.x, x_2239.y, x_2239.z) + vec3<f32>(x_2241.y, x_2241.z, x_2241.w));
  let x_2244 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2243.x, x_2243.y, x_2243.z, x_2244.w);
  let x_2246 : vec4<f32> = u_xlat5;
  let x_2248 : vec3<f32> = max(vec3<f32>(x_2246.x, x_2246.y, x_2246.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2249 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2249.x, x_2248.x, x_2248.y, x_2248.z);
  let x_2251 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_2251, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_2255 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_2255) + 4.0f);
  let x_2261 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_2261);
  let x_2264 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_2264) << bitcast<u32>(2i));
  let x_2269 : f32 = u_xlat4.y;
  let x_2270 : i32 = u_xlati0;
  let x_2273 : i32 = u_xlati0;
  let x_2277 : f32 = x_369.x_MainLightWorldToShadow[((x_2270 + 1i) / 4i)][((x_2273 + 1i) % 4i)].z;
  u_xlat19 = (x_2269 * x_2277);
  let x_2279 : i32 = u_xlati0;
  let x_2281 : i32 = u_xlati0;
  let x_2284 : f32 = x_369.x_MainLightWorldToShadow[(x_2279 / 4i)][(x_2281 % 4i)].z;
  let x_2286 : f32 = u_xlat4.x;
  let x_2288 : f32 = u_xlat19;
  u_xlat19 = ((x_2284 * x_2286) + x_2288);
  let x_2290 : i32 = u_xlati0;
  let x_2293 : i32 = u_xlati0;
  let x_2297 : f32 = x_369.x_MainLightWorldToShadow[((x_2290 + 2i) / 4i)][((x_2293 + 2i) % 4i)].z;
  let x_2299 : f32 = u_xlat4.z;
  let x_2301 : f32 = u_xlat19;
  u_xlat19 = ((x_2297 * x_2299) + x_2301);
  let x_2303 : f32 = u_xlat19;
  let x_2304 : i32 = u_xlati0;
  let x_2307 : i32 = u_xlati0;
  let x_2311 : f32 = x_369.x_MainLightWorldToShadow[((x_2304 + 3i) / 4i)][((x_2307 + 3i) % 4i)].z;
  u_xlat0.x = (x_2303 + x_2311);
  let x_2316 : f32 = u_xlat0.x;
  u_xlatb19 = (0.0f >= x_2316);
  let x_2320 : f32 = u_xlat0.x;
  u_xlatb0 = (x_2320 >= 1.0f);
  let x_2322 : bool = u_xlatb0;
  let x_2323 : bool = u_xlatb19;
  u_xlatb0 = (x_2322 | x_2323);
  let x_2325 : f32 = u_xlat61;
  u_xlat19 = (x_2325 * 0.25f);
  let x_2327 : bool = u_xlatb0;
  let x_2328 : f32 = u_xlat19;
  u_xlat0.x = select(x_2328, 1.0f, x_2327);
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
  let x_3078 : f32 = u_xlat19;
  let x_3080 : vec3<f32> = u_xlat1;
  let x_3082 : vec4<f32> = u_xlat0;
  let x_3084 : vec3<f32> = ((vec3<f32>(x_3078, x_3078, x_3078) * x_3080) + vec3<f32>(x_3082.x, x_3082.z, x_3082.w));
  let x_3085 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3084.x, x_3084.y, x_3084.z, x_3085.w);
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


