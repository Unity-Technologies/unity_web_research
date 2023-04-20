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

@group(1) @binding(2) var<uniform> x_2335 : UnityPerDraw;

var<private> u_xlat59 : f32;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(15) var sampler_AbsorptionScatteringRamp : sampler;

var<private> u_xlatu1 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati1 : i32;

@group(1) @binding(1) var<uniform> x_2734 : AdditionalLights;

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
  var x_1822 : f32;
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
      let x_612 : vec4<f32> = x_369.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y) + x_612);
      let x_615 : vec4<f32> = u_xlat4;
      let x_616 : vec2<f32> = vec2<f32>(x_615.x, x_615.y);
      let x_618 : f32 = u_xlat22.z;
      txVec2 = vec3<f32>(x_616.x, x_616.y, x_618);
      let x_625 : vec3<f32> = txVec2;
      let x_627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_625.xy, x_625.z);
      u_xlat5.z = x_627;
      let x_630 : vec4<f32> = u_xlat4;
      let x_631 : vec2<f32> = vec2<f32>(x_630.z, x_630.w);
      let x_633 : f32 = u_xlat22.z;
      txVec3 = vec3<f32>(x_631.x, x_631.y, x_633);
      let x_640 : vec3<f32> = txVec3;
      let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_640.xy, x_640.z);
      u_xlat5.w = x_642;
      let x_644 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(x_644, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_651 : f32 = x_369.x_MainLightShadowParams.y;
      u_xlatb23 = (x_651 == 2.0f);
      let x_653 : bool = u_xlatb23;
      if (x_653) {
        let x_657 : vec3<f32> = u_xlat22;
        let x_660 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_657.x, x_657.y) * vec2<f32>(x_660.z, x_660.w)) + vec2<f32>(0.5f, 0.5f));
        let x_664 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_664);
        let x_666 : vec3<f32> = u_xlat22;
        let x_669 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_672 : vec2<f32> = u_xlat23;
        let x_674 : vec2<f32> = ((vec2<f32>(x_666.x, x_666.y) * vec2<f32>(x_669.z, x_669.w)) + -(x_672));
        let x_675 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
        let x_677 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_677.x, x_677.x, x_677.y, x_677.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_681 : vec4<f32> = u_xlat6;
        let x_683 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_681.x, x_681.x, x_681.z, x_681.z) * vec4<f32>(x_683.x, x_683.x, x_683.z, x_683.z));
        let x_687 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_687.y, x_687.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_692 : vec4<f32> = u_xlat7;
        let x_695 : vec4<f32> = u_xlat5;
        let x_698 : vec2<f32> = ((vec2<f32>(x_692.x, x_692.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_695.x, x_695.y)));
        let x_699 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_698.x, x_699.y, x_698.y, x_699.w);
        let x_701 : vec4<f32> = u_xlat5;
        let x_705 : vec2<f32> = (-(vec2<f32>(x_701.x, x_701.y)) + vec2<f32>(1.0f, 1.0f));
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
        let x_709 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_709.x, x_709.y), vec2<f32>(0.0f, 0.0f));
        let x_713 : vec2<f32> = u_xlat45;
        let x_715 : vec2<f32> = u_xlat45;
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_713) * x_715) + vec2<f32>(x_717.x, x_717.y));
        let x_720 : vec4<f32> = u_xlat5;
        let x_722 : vec2<f32> = max(vec2<f32>(x_720.x, x_720.y), vec2<f32>(0.0f, 0.0f));
        let x_723 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_722.x, x_722.y, x_723.z, x_723.w);
        let x_725 : vec4<f32> = u_xlat5;
        let x_728 : vec4<f32> = u_xlat5;
        let x_731 : vec4<f32> = u_xlat6;
        let x_733 : vec2<f32> = ((-(vec2<f32>(x_725.x, x_725.y)) * vec2<f32>(x_728.x, x_728.y)) + vec2<f32>(x_731.y, x_731.w));
        let x_734 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
        let x_736 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_736 + vec2<f32>(1.0f, 1.0f));
        let x_738 : vec4<f32> = u_xlat5;
        let x_740 : vec2<f32> = (vec2<f32>(x_738.x, x_738.y) + vec2<f32>(1.0f, 1.0f));
        let x_741 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
        let x_744 : vec4<f32> = u_xlat6;
        let x_748 : vec2<f32> = (vec2<f32>(x_744.x, x_744.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_749 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_748.x, x_748.y, x_749.z, x_749.w);
        let x_752 : vec4<f32> = u_xlat7;
        let x_754 : vec2<f32> = (vec2<f32>(x_752.x, x_752.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_755 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_757 : vec2<f32> = u_xlat45;
        let x_758 : vec2<f32> = (x_757 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_759 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
        let x_762 : vec4<f32> = u_xlat5;
        let x_764 : vec2<f32> = (vec2<f32>(x_762.x, x_762.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_765 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_764.x, x_764.y, x_765.z, x_765.w);
        let x_767 : vec4<f32> = u_xlat6;
        let x_769 : vec2<f32> = (vec2<f32>(x_767.y, x_767.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_770 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
        let x_773 : f32 = u_xlat7.x;
        u_xlat8.z = x_773;
        let x_776 : f32 = u_xlat5.x;
        u_xlat8.w = x_776;
        let x_779 : f32 = u_xlat10.x;
        u_xlat9.z = x_779;
        let x_782 : f32 = u_xlat43.x;
        u_xlat9.w = x_782;
        let x_784 : vec4<f32> = u_xlat8;
        let x_786 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_784.z, x_784.w, x_784.x, x_784.z) + vec4<f32>(x_786.z, x_786.w, x_786.x, x_786.z));
        let x_790 : f32 = u_xlat8.y;
        u_xlat7.z = x_790;
        let x_793 : f32 = u_xlat5.y;
        u_xlat7.w = x_793;
        let x_796 : f32 = u_xlat9.y;
        u_xlat10.z = x_796;
        let x_799 : f32 = u_xlat43.y;
        u_xlat10.w = x_799;
        let x_801 : vec4<f32> = u_xlat7;
        let x_803 : vec4<f32> = u_xlat10;
        let x_805 : vec3<f32> = (vec3<f32>(x_801.z, x_801.y, x_801.w) + vec3<f32>(x_803.z, x_803.y, x_803.w));
        let x_806 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
        let x_808 : vec4<f32> = u_xlat9;
        let x_810 : vec4<f32> = u_xlat6;
        let x_812 : vec3<f32> = (vec3<f32>(x_808.x, x_808.z, x_808.w) / vec3<f32>(x_810.z, x_810.w, x_810.y));
        let x_813 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
        let x_815 : vec4<f32> = u_xlat7;
        let x_821 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_822 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat10;
        let x_826 : vec4<f32> = u_xlat5;
        let x_828 : vec3<f32> = (vec3<f32>(x_824.z, x_824.y, x_824.w) / vec3<f32>(x_826.x, x_826.y, x_826.z));
        let x_829 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
        let x_831 : vec4<f32> = u_xlat8;
        let x_833 : vec3<f32> = (vec3<f32>(x_831.x, x_831.y, x_831.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_834 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
        let x_836 : vec4<f32> = u_xlat7;
        let x_839 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_841 : vec3<f32> = (vec3<f32>(x_836.y, x_836.x, x_836.z) * vec3<f32>(x_839.x, x_839.x, x_839.x));
        let x_842 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat8;
        let x_847 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_849 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_847.y, x_847.y, x_847.y));
        let x_850 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
        let x_853 : f32 = u_xlat8.x;
        u_xlat7.w = x_853;
        let x_855 : vec2<f32> = u_xlat23;
        let x_858 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_861 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_855.x, x_855.y, x_855.x, x_855.y) * vec4<f32>(x_858.x, x_858.y, x_858.x, x_858.y)) + vec4<f32>(x_861.y, x_861.w, x_861.x, x_861.w));
        let x_864 : vec2<f32> = u_xlat23;
        let x_866 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_869 : vec4<f32> = u_xlat7;
        let x_871 : vec2<f32> = ((x_864 * vec2<f32>(x_866.x, x_866.y)) + vec2<f32>(x_869.z, x_869.w));
        let x_872 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
        let x_875 : f32 = u_xlat7.y;
        u_xlat8.w = x_875;
        let x_877 : vec4<f32> = u_xlat8;
        let x_878 : vec2<f32> = vec2<f32>(x_877.y, x_877.z);
        let x_879 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_879.x, x_878.x, x_879.z, x_878.y);
        let x_882 : vec2<f32> = u_xlat23;
        let x_885 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_888 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_882.x, x_882.y, x_882.x, x_882.y) * vec4<f32>(x_885.x, x_885.y, x_885.x, x_885.y)) + vec4<f32>(x_888.x, x_888.y, x_888.z, x_888.y));
        let x_891 : vec2<f32> = u_xlat23;
        let x_894 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_897 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_891.x, x_891.y, x_891.x, x_891.y) * vec4<f32>(x_894.x, x_894.y, x_894.x, x_894.y)) + vec4<f32>(x_897.w, x_897.y, x_897.w, x_897.z));
        let x_900 : vec2<f32> = u_xlat23;
        let x_903 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_906 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y) * vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.y)) + vec4<f32>(x_906.x, x_906.w, x_906.z, x_906.w));
        let x_910 : vec4<f32> = u_xlat5;
        let x_912 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_910.x, x_910.x, x_910.x, x_910.y) * vec4<f32>(x_912.z, x_912.w, x_912.y, x_912.z));
        let x_916 : vec4<f32> = u_xlat5;
        let x_918 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_916.y, x_916.y, x_916.z, x_916.z) * x_918);
        let x_921 : f32 = u_xlat5.z;
        let x_923 : f32 = u_xlat6.y;
        u_xlat23.x = (x_921 * x_923);
        let x_927 : vec4<f32> = u_xlat9;
        let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
        let x_930 : f32 = u_xlat22.z;
        txVec4 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_938 : vec3<f32> = txVec4;
        let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_938.xy, x_938.z);
        u_xlat42 = x_940;
        let x_942 : vec4<f32> = u_xlat9;
        let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
        let x_945 : f32 = u_xlat22.z;
        txVec5 = vec3<f32>(x_943.x, x_943.y, x_945);
        let x_953 : vec3<f32> = txVec5;
        let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_953.xy, x_953.z);
        u_xlat61 = x_955;
        let x_956 : f32 = u_xlat61;
        let x_958 : f32 = u_xlat12.y;
        u_xlat61 = (x_956 * x_958);
        let x_961 : f32 = u_xlat12.x;
        let x_962 : f32 = u_xlat42;
        let x_964 : f32 = u_xlat61;
        u_xlat42 = ((x_961 * x_962) + x_964);
        let x_967 : vec4<f32> = u_xlat10;
        let x_968 : vec2<f32> = vec2<f32>(x_967.x, x_967.y);
        let x_970 : f32 = u_xlat22.z;
        txVec6 = vec3<f32>(x_968.x, x_968.y, x_970);
        let x_977 : vec3<f32> = txVec6;
        let x_979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_977.xy, x_977.z);
        u_xlat61 = x_979;
        let x_981 : f32 = u_xlat12.z;
        let x_982 : f32 = u_xlat61;
        let x_984 : f32 = u_xlat42;
        u_xlat42 = ((x_981 * x_982) + x_984);
        let x_987 : vec4<f32> = u_xlat8;
        let x_988 : vec2<f32> = vec2<f32>(x_987.x, x_987.y);
        let x_990 : f32 = u_xlat22.z;
        txVec7 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_997 : vec3<f32> = txVec7;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
        u_xlat61 = x_999;
        let x_1001 : f32 = u_xlat12.w;
        let x_1002 : f32 = u_xlat61;
        let x_1004 : f32 = u_xlat42;
        u_xlat42 = ((x_1001 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat11;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
        let x_1010 : f32 = u_xlat22.z;
        txVec8 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec8;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
        u_xlat61 = x_1019;
        let x_1021 : f32 = u_xlat13.x;
        let x_1022 : f32 = u_xlat61;
        let x_1024 : f32 = u_xlat42;
        u_xlat42 = ((x_1021 * x_1022) + x_1024);
        let x_1027 : vec4<f32> = u_xlat11;
        let x_1028 : vec2<f32> = vec2<f32>(x_1027.z, x_1027.w);
        let x_1030 : f32 = u_xlat22.z;
        txVec9 = vec3<f32>(x_1028.x, x_1028.y, x_1030);
        let x_1037 : vec3<f32> = txVec9;
        let x_1039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1037.xy, x_1037.z);
        u_xlat61 = x_1039;
        let x_1041 : f32 = u_xlat13.y;
        let x_1042 : f32 = u_xlat61;
        let x_1044 : f32 = u_xlat42;
        u_xlat42 = ((x_1041 * x_1042) + x_1044);
        let x_1047 : vec4<f32> = u_xlat8;
        let x_1048 : vec2<f32> = vec2<f32>(x_1047.z, x_1047.w);
        let x_1050 : f32 = u_xlat22.z;
        txVec10 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
        let x_1057 : vec3<f32> = txVec10;
        let x_1059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1057.xy, x_1057.z);
        u_xlat61 = x_1059;
        let x_1061 : f32 = u_xlat13.z;
        let x_1062 : f32 = u_xlat61;
        let x_1064 : f32 = u_xlat42;
        u_xlat42 = ((x_1061 * x_1062) + x_1064);
        let x_1067 : vec4<f32> = u_xlat7;
        let x_1068 : vec2<f32> = vec2<f32>(x_1067.x, x_1067.y);
        let x_1070 : f32 = u_xlat22.z;
        txVec11 = vec3<f32>(x_1068.x, x_1068.y, x_1070);
        let x_1077 : vec3<f32> = txVec11;
        let x_1079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1077.xy, x_1077.z);
        u_xlat61 = x_1079;
        let x_1081 : f32 = u_xlat13.w;
        let x_1082 : f32 = u_xlat61;
        let x_1084 : f32 = u_xlat42;
        u_xlat42 = ((x_1081 * x_1082) + x_1084);
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1088 : vec2<f32> = vec2<f32>(x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat22.z;
        txVec12 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec12;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
        u_xlat61 = x_1099;
        let x_1101 : f32 = u_xlat23.x;
        let x_1102 : f32 = u_xlat61;
        let x_1104 : f32 = u_xlat42;
        u_xlat4.x = ((x_1101 * x_1102) + x_1104);
      } else {
        let x_1108 : vec3<f32> = u_xlat22;
        let x_1111 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.z, x_1111.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1115 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_1115);
        let x_1117 : vec3<f32> = u_xlat22;
        let x_1120 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1123 : vec2<f32> = u_xlat23;
        let x_1125 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(x_1120.z, x_1120.w)) + -(x_1123));
        let x_1126 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
        let x_1128 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1128.x, x_1128.x, x_1128.y, x_1128.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1131 : vec4<f32> = u_xlat6;
        let x_1133 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1131.x, x_1131.x, x_1131.z, x_1131.z) * vec4<f32>(x_1133.x, x_1133.x, x_1133.z, x_1133.z));
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1140 : vec2<f32> = (vec2<f32>(x_1136.y, x_1136.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1141 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1141.x, x_1140.x, x_1141.z, x_1140.y);
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1146 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1143.x, x_1143.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1146.x, x_1146.y)));
        let x_1150 : vec4<f32> = u_xlat5;
        let x_1153 : vec2<f32> = (-(vec2<f32>(x_1150.x, x_1150.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1154 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1153.x, x_1154.y, x_1153.y, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat5;
        let x_1158 : vec2<f32> = min(vec2<f32>(x_1156.x, x_1156.y), vec2<f32>(0.0f, 0.0f));
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1161 : vec4<f32> = u_xlat7;
        let x_1164 : vec4<f32> = u_xlat7;
        let x_1167 : vec4<f32> = u_xlat6;
        let x_1169 : vec2<f32> = ((-(vec2<f32>(x_1161.x, x_1161.y)) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1167.x, x_1167.z));
        let x_1170 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1169.x, x_1170.y, x_1169.y, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat5;
        let x_1174 : vec2<f32> = max(vec2<f32>(x_1172.x, x_1172.y), vec2<f32>(0.0f, 0.0f));
        let x_1175 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
        let x_1177 : vec4<f32> = u_xlat7;
        let x_1180 : vec4<f32> = u_xlat7;
        let x_1183 : vec4<f32> = u_xlat6;
        let x_1185 : vec2<f32> = ((-(vec2<f32>(x_1177.x, x_1177.y)) * vec2<f32>(x_1180.x, x_1180.y)) + vec2<f32>(x_1183.y, x_1183.w));
        let x_1186 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1186.x, x_1185.x, x_1186.z, x_1185.y);
        let x_1188 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1188 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1192 : f32 = u_xlat6.y;
        u_xlat7.z = (x_1192 * 0.08163200318813323975f);
        let x_1196 : vec2<f32> = u_xlat43;
        let x_1199 : vec2<f32> = (vec2<f32>(x_1196.y, x_1196.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_1202.x, x_1202.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1206 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1206 * 0.08163200318813323975f);
        let x_1210 : f32 = u_xlat9.y;
        u_xlat7.x = x_1210;
        let x_1212 : vec4<f32> = u_xlat5;
        let x_1219 : vec2<f32> = ((vec2<f32>(x_1212.x, x_1212.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1220 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1220.x, x_1219.x, x_1220.z, x_1219.y);
        let x_1222 : vec4<f32> = u_xlat5;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1222.x, x_1222.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1227 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1226.x, x_1227.y, x_1226.y, x_1227.w);
        let x_1230 : f32 = u_xlat43.x;
        u_xlat6.y = x_1230;
        let x_1233 : f32 = u_xlat8.y;
        u_xlat6.w = x_1233;
        let x_1235 : vec4<f32> = u_xlat6;
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1235 + x_1236);
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1238.y, x_1238.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1242 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1242.x, x_1241.x, x_1242.z, x_1241.y);
        let x_1244 : vec4<f32> = u_xlat5;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1244.y, x_1244.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1248 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1247.x, x_1248.y, x_1247.y, x_1248.w);
        let x_1251 : f32 = u_xlat43.y;
        u_xlat8.y = x_1251;
        let x_1253 : vec4<f32> = u_xlat8;
        let x_1254 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1253 + x_1254);
        let x_1256 : vec4<f32> = u_xlat6;
        let x_1257 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1256 / x_1257);
        let x_1259 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1259 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1265 : vec4<f32> = u_xlat8;
        let x_1266 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1265 / x_1266);
        let x_1268 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1268 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1270 : vec4<f32> = u_xlat6;
        let x_1273 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1270.w, x_1270.x, x_1270.y, x_1270.z) * vec4<f32>(x_1273.x, x_1273.x, x_1273.x, x_1273.x));
        let x_1276 : vec4<f32> = u_xlat8;
        let x_1279 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1276.x, x_1276.w, x_1276.y, x_1276.z) * vec4<f32>(x_1279.y, x_1279.y, x_1279.y, x_1279.y));
        let x_1282 : vec4<f32> = u_xlat6;
        let x_1283 : vec3<f32> = vec3<f32>(x_1282.y, x_1282.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1283.x, x_1284.y, x_1283.y, x_1283.z);
        let x_1287 : f32 = u_xlat8.x;
        u_xlat9.y = x_1287;
        let x_1289 : vec2<f32> = u_xlat23;
        let x_1292 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1295.y));
        let x_1298 : vec2<f32> = u_xlat23;
        let x_1300 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat9;
        let x_1305 : vec2<f32> = ((x_1298 * vec2<f32>(x_1300.x, x_1300.y)) + vec2<f32>(x_1303.w, x_1303.y));
        let x_1306 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1305.x, x_1305.y, x_1306.z, x_1306.w);
        let x_1309 : f32 = u_xlat9.y;
        u_xlat6.y = x_1309;
        let x_1312 : f32 = u_xlat8.z;
        u_xlat9.y = x_1312;
        let x_1314 : vec2<f32> = u_xlat23;
        let x_1317 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y) * vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y)) + vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1320.y));
        let x_1324 : vec2<f32> = u_xlat23;
        let x_1326 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1324 * vec2<f32>(x_1326.x, x_1326.y)) + vec2<f32>(x_1329.w, x_1329.y));
        let x_1333 : f32 = u_xlat9.y;
        u_xlat6.z = x_1333;
        let x_1335 : vec2<f32> = u_xlat23;
        let x_1338 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1341 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y) * vec4<f32>(x_1338.x, x_1338.y, x_1338.x, x_1338.y)) + vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.z));
        let x_1345 : f32 = u_xlat8.w;
        u_xlat9.y = x_1345;
        let x_1348 : vec2<f32> = u_xlat23;
        let x_1351 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1354 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y) * vec4<f32>(x_1351.x, x_1351.y, x_1351.x, x_1351.y)) + vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1354.y));
        let x_1358 : vec2<f32> = u_xlat23;
        let x_1360 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1363 : vec4<f32> = u_xlat9;
        let x_1365 : vec2<f32> = ((x_1358 * vec2<f32>(x_1360.x, x_1360.y)) + vec2<f32>(x_1363.w, x_1363.y));
        let x_1366 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1365.x, x_1365.y, x_1366.z);
        let x_1369 : f32 = u_xlat9.y;
        u_xlat6.w = x_1369;
        let x_1372 : vec2<f32> = u_xlat23;
        let x_1374 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1372 * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1377.x, x_1377.w));
        let x_1380 : vec4<f32> = u_xlat9;
        let x_1381 : vec3<f32> = vec3<f32>(x_1380.x, x_1380.z, x_1380.w);
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1381.x, x_1382.y, x_1381.y, x_1381.z);
        let x_1384 : vec2<f32> = u_xlat23;
        let x_1387 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1384.x, x_1384.y, x_1384.x, x_1384.y) * vec4<f32>(x_1387.x, x_1387.y, x_1387.x, x_1387.y)) + vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1390.y));
        let x_1394 : vec2<f32> = u_xlat23;
        let x_1396 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1399 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1394 * vec2<f32>(x_1396.x, x_1396.y)) + vec2<f32>(x_1399.w, x_1399.y));
        let x_1403 : f32 = u_xlat6.x;
        u_xlat8.x = x_1403;
        let x_1405 : vec2<f32> = u_xlat23;
        let x_1407 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1410 : vec4<f32> = u_xlat8;
        u_xlat23 = ((x_1405 * vec2<f32>(x_1407.x, x_1407.y)) + vec2<f32>(x_1410.x, x_1410.y));
        let x_1414 : vec4<f32> = u_xlat5;
        let x_1416 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1414.x, x_1414.x, x_1414.x, x_1414.x) * x_1416);
        let x_1419 : vec4<f32> = u_xlat5;
        let x_1421 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1419.y, x_1419.y, x_1419.y, x_1419.y) * x_1421);
        let x_1424 : vec4<f32> = u_xlat5;
        let x_1426 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1424.z, x_1424.z, x_1424.z, x_1424.z) * x_1426);
        let x_1428 : vec4<f32> = u_xlat5;
        let x_1430 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1428.w, x_1428.w, x_1428.w, x_1428.w) * x_1430);
        let x_1433 : vec4<f32> = u_xlat10;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = u_xlat22.z;
        txVec13 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec13;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat61 = x_1445;
        let x_1447 : vec4<f32> = u_xlat10;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.z, x_1447.w);
        let x_1450 : f32 = u_xlat22.z;
        txVec14 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec14;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1457.xy, x_1457.z);
        u_xlat6.x = x_1459;
        let x_1462 : f32 = u_xlat6.x;
        let x_1464 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1462 * x_1464);
        let x_1468 : f32 = u_xlat16.x;
        let x_1469 : f32 = u_xlat61;
        let x_1472 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1468 * x_1469) + x_1472);
        let x_1475 : vec4<f32> = u_xlat11;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.x, x_1475.y);
        let x_1478 : f32 = u_xlat22.z;
        txVec15 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec15;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
        u_xlat6.x = x_1487;
        let x_1490 : f32 = u_xlat16.z;
        let x_1492 : f32 = u_xlat6.x;
        let x_1494 : f32 = u_xlat61;
        u_xlat61 = ((x_1490 * x_1492) + x_1494);
        let x_1497 : vec4<f32> = u_xlat13;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.x, x_1497.y);
        let x_1500 : f32 = u_xlat22.z;
        txVec16 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec16;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat6.x = x_1509;
        let x_1512 : f32 = u_xlat16.w;
        let x_1514 : f32 = u_xlat6.x;
        let x_1516 : f32 = u_xlat61;
        u_xlat61 = ((x_1512 * x_1514) + x_1516);
        let x_1519 : vec4<f32> = u_xlat12;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = u_xlat22.z;
        txVec17 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec17;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat6.x = x_1531;
        let x_1534 : f32 = u_xlat17.x;
        let x_1536 : f32 = u_xlat6.x;
        let x_1538 : f32 = u_xlat61;
        u_xlat61 = ((x_1534 * x_1536) + x_1538);
        let x_1541 : vec4<f32> = u_xlat12;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = u_xlat22.z;
        txVec18 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec18;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1551.xy, x_1551.z);
        u_xlat6.x = x_1553;
        let x_1556 : f32 = u_xlat17.y;
        let x_1558 : f32 = u_xlat6.x;
        let x_1560 : f32 = u_xlat61;
        u_xlat61 = ((x_1556 * x_1558) + x_1560);
        let x_1563 : vec2<f32> = u_xlat49;
        let x_1565 : f32 = u_xlat22.z;
        txVec19 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec19;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat6.x = x_1574;
        let x_1577 : f32 = u_xlat17.z;
        let x_1579 : f32 = u_xlat6.x;
        let x_1581 : f32 = u_xlat61;
        u_xlat61 = ((x_1577 * x_1579) + x_1581);
        let x_1584 : vec4<f32> = u_xlat13;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.z, x_1584.w);
        let x_1587 : f32 = u_xlat22.z;
        txVec20 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec20;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat6.x = x_1596;
        let x_1599 : f32 = u_xlat17.w;
        let x_1601 : f32 = u_xlat6.x;
        let x_1603 : f32 = u_xlat61;
        u_xlat61 = ((x_1599 * x_1601) + x_1603);
        let x_1606 : vec4<f32> = u_xlat14;
        let x_1607 : vec2<f32> = vec2<f32>(x_1606.x, x_1606.y);
        let x_1609 : f32 = u_xlat22.z;
        txVec21 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
        let x_1616 : vec3<f32> = txVec21;
        let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
        u_xlat6.x = x_1618;
        let x_1621 : f32 = u_xlat18.x;
        let x_1623 : f32 = u_xlat6.x;
        let x_1625 : f32 = u_xlat61;
        u_xlat61 = ((x_1621 * x_1623) + x_1625);
        let x_1628 : vec4<f32> = u_xlat14;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.z, x_1628.w);
        let x_1631 : f32 = u_xlat22.z;
        txVec22 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec22;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1638.xy, x_1638.z);
        u_xlat6.x = x_1640;
        let x_1643 : f32 = u_xlat18.y;
        let x_1645 : f32 = u_xlat6.x;
        let x_1647 : f32 = u_xlat61;
        u_xlat61 = ((x_1643 * x_1645) + x_1647);
        let x_1650 : vec3<f32> = u_xlat25;
        let x_1651 : vec2<f32> = vec2<f32>(x_1650.x, x_1650.y);
        let x_1653 : f32 = u_xlat22.z;
        txVec23 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec23;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat6.x = x_1662;
        let x_1665 : f32 = u_xlat18.z;
        let x_1667 : f32 = u_xlat6.x;
        let x_1669 : f32 = u_xlat61;
        u_xlat61 = ((x_1665 * x_1667) + x_1669);
        let x_1672 : vec2<f32> = u_xlat15;
        let x_1674 : f32 = u_xlat22.z;
        txVec24 = vec3<f32>(x_1672.x, x_1672.y, x_1674);
        let x_1681 : vec3<f32> = txVec24;
        let x_1683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1681.xy, x_1681.z);
        u_xlat6.x = x_1683;
        let x_1686 : f32 = u_xlat18.w;
        let x_1688 : f32 = u_xlat6.x;
        let x_1690 : f32 = u_xlat61;
        u_xlat61 = ((x_1686 * x_1688) + x_1690);
        let x_1693 : vec4<f32> = u_xlat9;
        let x_1694 : vec2<f32> = vec2<f32>(x_1693.x, x_1693.y);
        let x_1696 : f32 = u_xlat22.z;
        txVec25 = vec3<f32>(x_1694.x, x_1694.y, x_1696);
        let x_1703 : vec3<f32> = txVec25;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1703.xy, x_1703.z);
        u_xlat6.x = x_1705;
        let x_1708 : f32 = u_xlat5.x;
        let x_1710 : f32 = u_xlat6.x;
        let x_1712 : f32 = u_xlat61;
        u_xlat61 = ((x_1708 * x_1710) + x_1712);
        let x_1715 : vec4<f32> = u_xlat9;
        let x_1716 : vec2<f32> = vec2<f32>(x_1715.z, x_1715.w);
        let x_1718 : f32 = u_xlat22.z;
        txVec26 = vec3<f32>(x_1716.x, x_1716.y, x_1718);
        let x_1725 : vec3<f32> = txVec26;
        let x_1727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1725.xy, x_1725.z);
        u_xlat5.x = x_1727;
        let x_1730 : f32 = u_xlat5.y;
        let x_1732 : f32 = u_xlat5.x;
        let x_1734 : f32 = u_xlat61;
        u_xlat61 = ((x_1730 * x_1732) + x_1734);
        let x_1737 : vec2<f32> = u_xlat46;
        let x_1739 : f32 = u_xlat22.z;
        txVec27 = vec3<f32>(x_1737.x, x_1737.y, x_1739);
        let x_1746 : vec3<f32> = txVec27;
        let x_1748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1746.xy, x_1746.z);
        u_xlat5.x = x_1748;
        let x_1751 : f32 = u_xlat5.z;
        let x_1753 : f32 = u_xlat5.x;
        let x_1755 : f32 = u_xlat61;
        u_xlat61 = ((x_1751 * x_1753) + x_1755);
        let x_1758 : vec2<f32> = u_xlat23;
        let x_1760 : f32 = u_xlat22.z;
        txVec28 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec28;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1767.xy, x_1767.z);
        u_xlat23.x = x_1769;
        let x_1772 : f32 = u_xlat5.w;
        let x_1774 : f32 = u_xlat23.x;
        let x_1776 : f32 = u_xlat61;
        u_xlat4.x = ((x_1772 * x_1774) + x_1776);
      }
    }
  } else {
    let x_1781 : vec3<f32> = u_xlat22;
    let x_1782 : vec2<f32> = vec2<f32>(x_1781.x, x_1781.y);
    let x_1784 : f32 = u_xlat22.z;
    txVec29 = vec3<f32>(x_1782.x, x_1782.y, x_1784);
    let x_1791 : vec3<f32> = txVec29;
    let x_1793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1791.xy, x_1791.z);
    u_xlat4.x = x_1793;
  }
  let x_1796 : f32 = x_369.x_MainLightShadowParams.x;
  u_xlat22.x = (-(x_1796) + 1.0f);
  let x_1801 : f32 = u_xlat4.x;
  let x_1803 : f32 = x_369.x_MainLightShadowParams.x;
  let x_1806 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_1801 * x_1803) + x_1806);
  let x_1811 : f32 = u_xlat22.z;
  u_xlatb41 = (0.0f >= x_1811);
  let x_1815 : f32 = u_xlat22.z;
  u_xlatb60 = (x_1815 >= 1.0f);
  let x_1817 : bool = u_xlatb60;
  let x_1818 : bool = u_xlatb41;
  u_xlatb41 = (x_1817 | x_1818);
  let x_1820 : bool = u_xlatb41;
  if (x_1820) {
    x_1822 = 1.0f;
  } else {
    let x_1827 : f32 = u_xlat22.x;
    x_1822 = x_1827;
  }
  let x_1828 : f32 = x_1822;
  u_xlat22.x = x_1828;
  let x_1830 : vec4<f32> = u_xlat0;
  let x_1833 : vec4<f32> = x_40.x_ScreenParams;
  let x_1835 : vec2<f32> = (vec2<f32>(x_1830.x, x_1830.y) * vec2<f32>(x_1833.x, x_1833.y));
  let x_1836 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1835.x, x_1835.y, x_1836.z, x_1836.w);
  let x_1838 : vec4<f32> = u_xlat0;
  let x_1841 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
  let x_1843 : vec2<f32> = (vec2<f32>(x_1838.x, x_1838.y) * vec2<f32>(x_1841.x, x_1841.y));
  let x_1844 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1843.x, x_1843.y, x_1844.z, x_1844.w);
  let x_1847 : f32 = u_xlat38;
  u_xlat41 = (vec2<f32>(x_1847, x_1847) * vec2<f32>(20.0f, 0.25f));
  let x_1852 : vec2<f32> = u_xlat41;
  let x_1854 : vec3<f32> = vs_TEXCOORD2;
  let x_1856 : vec3<f32> = (vec3<f32>(x_1852.y, x_1852.y, x_1852.y) * -(x_1854));
  let x_1857 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
  let x_1860 : f32 = x_40.x_Time.x;
  u_xlat5.x = fract(x_1860);
  let x_1864 : f32 = x_40.x_Time.z;
  u_xlat5.y = fract(-(x_1864));
  let x_1868 : vec4<f32> = u_xlat0;
  u_xlat43 = vec2<f32>(x_1868.x, x_1868.y);
  u_xlat61 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1877 : u32 = u_xlatu_loop_1;
    if ((x_1877 < 4u)) {
    } else {
      break;
    }
    let x_1880 : vec4<f32> = u_xlat5;
    let x_1882 : vec2<f32> = u_xlat43;
    u_xlat43 = (vec2<f32>(x_1880.x, x_1880.y) + x_1882);
    let x_1884 : u32 = u_xlatu_loop_1;
    u_xlat25.x = f32(x_1884);
    let x_1888 : vec3<f32> = u_xlat25;
    let x_1891 : vec4<f32> = x_40.x_ScreenParams;
    let x_1894 : vec2<f32> = u_xlat43;
    u_xlat44 = ((vec2<f32>(x_1888.x, x_1888.x) * vec2<f32>(x_1891.x, x_1891.y)) + x_1894);
    let x_1901 : vec2<f32> = u_xlat44;
    let x_1903 : f32 = x_40.x_GlobalMipBias.x;
    let x_1904 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, x_1901, x_1903);
    let x_1905 : vec3<f32> = vec3<f32>(x_1904.x, x_1904.y, x_1904.z);
    let x_1906 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1906.w);
    let x_1908 : vec4<f32> = u_xlat7;
    let x_1913 : vec3<f32> = ((vec3<f32>(x_1908.x, x_1908.z, x_1908.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_1914 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
    let x_1916 : vec2<f32> = u_xlat41;
    let x_1918 : vec4<f32> = u_xlat7;
    let x_1920 : vec3<f32> = (vec3<f32>(x_1916.y, x_1916.y, x_1916.y) * vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
    let x_1921 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1920.x, x_1920.y, x_1921.z, x_1920.z);
    let x_1923 : vec3<f32> = u_xlat25;
    let x_1925 : vec4<f32> = u_xlat7;
    let x_1927 : vec3<f32> = (vec3<f32>(x_1923.x, x_1923.x, x_1923.x) * vec3<f32>(x_1925.x, x_1925.y, x_1925.w));
    let x_1928 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1927.x, x_1927.y, x_1928.z, x_1927.z);
    let x_1930 : vec4<f32> = u_xlat7;
    let x_1935 : vec3<f32> = vs_TEXCOORD1;
    let x_1936 : vec3<f32> = ((vec3<f32>(x_1930.x, x_1930.y, x_1930.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_1935);
    let x_1937 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1936.x, x_1936.y, x_1937.z, x_1936.z);
    let x_1940 : f32 = u_xlat25.x;
    let x_1942 : f32 = u_xlat7.z;
    u_xlat25.x = (x_1940 + x_1942);
    let x_1945 : vec4<f32> = u_xlat4;
    let x_1947 : vec3<f32> = u_xlat25;
    let x_1950 : vec4<f32> = u_xlat7;
    u_xlat25 = ((vec3<f32>(x_1945.x, x_1945.y, x_1945.z) * vec3<f32>(x_1947.x, x_1947.x, x_1947.x)) + vec3<f32>(x_1950.x, x_1950.y, x_1950.w));
    let x_1953 : vec3<f32> = u_xlat25;
    let x_1955 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
    let x_1958 : vec3<f32> = (x_1953 + -(vec3<f32>(x_1955.x, x_1955.y, x_1955.z)));
    let x_1959 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1958.x, x_1958.y, x_1958.z, x_1959.w);
    let x_1961 : vec3<f32> = u_xlat25;
    let x_1963 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
    let x_1966 : vec3<f32> = (x_1961 + -(vec3<f32>(x_1963.x, x_1963.y, x_1963.z)));
    let x_1967 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
    let x_1969 : vec3<f32> = u_xlat25;
    let x_1971 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
    let x_1974 : vec3<f32> = (x_1969 + -(vec3<f32>(x_1971.x, x_1971.y, x_1971.z)));
    let x_1975 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
    let x_1977 : vec3<f32> = u_xlat25;
    let x_1979 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
    let x_1982 : vec3<f32> = (x_1977 + -(vec3<f32>(x_1979.x, x_1979.y, x_1979.z)));
    let x_1983 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
    let x_1985 : vec4<f32> = u_xlat7;
    let x_1987 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_1985.x, x_1985.y, x_1985.z), vec3<f32>(x_1987.x, x_1987.y, x_1987.z));
    let x_1991 : vec4<f32> = u_xlat8;
    let x_1993 : vec4<f32> = u_xlat8;
    u_xlat7.y = dot(vec3<f32>(x_1991.x, x_1991.y, x_1991.z), vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
    let x_1997 : vec4<f32> = u_xlat9;
    let x_1999 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(vec3<f32>(x_1997.x, x_1997.y, x_1997.z), vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
    let x_2003 : vec4<f32> = u_xlat10;
    let x_2005 : vec4<f32> = u_xlat10;
    u_xlat7.w = dot(vec3<f32>(x_2003.x, x_2003.y, x_2003.z), vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
    let x_2010 : vec4<f32> = u_xlat7;
    let x_2012 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
    u_xlatb7 = (x_2010 < x_2012);
    let x_2015 : bool = u_xlatb7.x;
    u_xlat8.x = select(0.0f, 1.0f, x_2015);
    let x_2019 : bool = u_xlatb7.y;
    u_xlat8.y = select(0.0f, 1.0f, x_2019);
    let x_2023 : bool = u_xlatb7.z;
    u_xlat8.z = select(0.0f, 1.0f, x_2023);
    let x_2027 : bool = u_xlatb7.w;
    u_xlat8.w = select(0.0f, 1.0f, x_2027);
    let x_2031 : bool = u_xlatb7.x;
    u_xlat7.x = select(-0.0f, -1.0f, x_2031);
    let x_2035 : bool = u_xlatb7.y;
    u_xlat7.y = select(-0.0f, -1.0f, x_2035);
    let x_2039 : bool = u_xlatb7.z;
    u_xlat7.z = select(-0.0f, -1.0f, x_2039);
    let x_2042 : vec4<f32> = u_xlat7;
    let x_2044 : vec4<f32> = u_xlat8;
    let x_2046 : vec3<f32> = (vec3<f32>(x_2042.x, x_2042.y, x_2042.z) + vec3<f32>(x_2044.y, x_2044.z, x_2044.w));
    let x_2047 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
    let x_2049 : vec4<f32> = u_xlat7;
    let x_2051 : vec3<f32> = max(vec3<f32>(x_2049.x, x_2049.y, x_2049.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_2052 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2052.x, x_2051.x, x_2051.y, x_2051.z);
    let x_2054 : vec4<f32> = u_xlat8;
    u_xlat7.x = dot(x_2054, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_2058 : f32 = u_xlat7.x;
    u_xlat7.x = (-(x_2058) + 4.0f);
    let x_2064 : f32 = u_xlat7.x;
    u_xlatu7 = u32(x_2064);
    let x_2067 : u32 = u_xlatu7;
    u_xlati7 = (bitcast<i32>(x_2067) << bitcast<u32>(2i));
    let x_2071 : vec3<f32> = u_xlat25;
    let x_2073 : i32 = u_xlati7;
    let x_2076 : i32 = u_xlati7;
    let x_2080 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2073 + 1i) / 4i)][((x_2076 + 1i) % 4i)];
    u_xlat26 = (vec3<f32>(x_2071.y, x_2071.y, x_2071.y) * vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
    let x_2083 : i32 = u_xlati7;
    let x_2085 : i32 = u_xlati7;
    let x_2088 : vec4<f32> = x_369.x_MainLightWorldToShadow[(x_2083 / 4i)][(x_2085 % 4i)];
    let x_2090 : vec3<f32> = u_xlat25;
    let x_2093 : vec3<f32> = u_xlat26;
    u_xlat26 = ((vec3<f32>(x_2088.x, x_2088.y, x_2088.z) * vec3<f32>(x_2090.x, x_2090.x, x_2090.x)) + x_2093);
    let x_2095 : i32 = u_xlati7;
    let x_2098 : i32 = u_xlati7;
    let x_2102 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2095 + 2i) / 4i)][((x_2098 + 2i) % 4i)];
    let x_2104 : vec3<f32> = u_xlat25;
    let x_2107 : vec3<f32> = u_xlat26;
    u_xlat25 = ((vec3<f32>(x_2102.x, x_2102.y, x_2102.z) * vec3<f32>(x_2104.z, x_2104.z, x_2104.z)) + x_2107);
    let x_2109 : vec3<f32> = u_xlat25;
    let x_2110 : i32 = u_xlati7;
    let x_2113 : i32 = u_xlati7;
    let x_2117 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2110 + 3i) / 4i)][((x_2113 + 3i) % 4i)];
    u_xlat25 = (x_2109 + vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
    let x_2121 : vec3<f32> = u_xlat25;
    let x_2122 : vec2<f32> = vec2<f32>(x_2121.x, x_2121.y);
    let x_2124 : f32 = u_xlat25.z;
    txVec30 = vec3<f32>(x_2122.x, x_2122.y, x_2124);
    let x_2131 : vec3<f32> = txVec30;
    let x_2133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2131.xy, x_2131.z);
    u_xlat25.x = x_2133;
    let x_2135 : f32 = u_xlat61;
    let x_2137 : f32 = u_xlat25.x;
    u_xlat61 = (x_2135 + x_2137);

    continuing {
      let x_2139 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2139 + bitcast<u32>(1i));
    }
  }
  let x_2141 : vec3<f32> = vs_TEXCOORD1;
  let x_2144 : vec3<f32> = (x_2141 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_2145 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
  let x_2147 : vec3<f32> = vs_TEXCOORD1;
  let x_2150 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
  let x_2153 : vec3<f32> = ((x_2147 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2150.x, x_2150.y, x_2150.z)));
  let x_2154 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
  let x_2156 : vec3<f32> = vs_TEXCOORD1;
  let x_2159 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
  let x_2162 : vec3<f32> = ((x_2156 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2159.x, x_2159.y, x_2159.z)));
  let x_2163 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
  let x_2165 : vec3<f32> = vs_TEXCOORD1;
  let x_2168 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
  let x_2171 : vec3<f32> = ((x_2165 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2168.x, x_2168.y, x_2168.z)));
  let x_2172 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2174 : vec3<f32> = vs_TEXCOORD1;
  let x_2177 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
  let x_2180 : vec3<f32> = ((x_2174 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2177.x, x_2177.y, x_2177.z)));
  let x_2181 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
  let x_2183 : vec4<f32> = u_xlat5;
  let x_2185 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2183.x, x_2183.y, x_2183.z), vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
  let x_2189 : vec4<f32> = u_xlat6;
  let x_2191 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_2189.x, x_2189.y, x_2189.z), vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
  let x_2195 : vec4<f32> = u_xlat7;
  let x_2197 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_2195.x, x_2195.y, x_2195.z), vec3<f32>(x_2197.x, x_2197.y, x_2197.z));
  let x_2201 : vec4<f32> = u_xlat8;
  let x_2203 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_2201.x, x_2201.y, x_2201.z), vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
  let x_2208 : vec4<f32> = u_xlat5;
  let x_2210 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_2208 < x_2210);
  let x_2213 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_2213);
  let x_2217 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_2217);
  let x_2221 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_2221);
  let x_2225 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_2225);
  let x_2229 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_2229);
  let x_2233 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_2233);
  let x_2237 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_2237);
  let x_2240 : vec4<f32> = u_xlat5;
  let x_2242 : vec4<f32> = u_xlat6;
  let x_2244 : vec3<f32> = (vec3<f32>(x_2240.x, x_2240.y, x_2240.z) + vec3<f32>(x_2242.y, x_2242.z, x_2242.w));
  let x_2245 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
  let x_2247 : vec4<f32> = u_xlat5;
  let x_2249 : vec3<f32> = max(vec3<f32>(x_2247.x, x_2247.y, x_2247.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2250 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2250.x, x_2249.x, x_2249.y, x_2249.z);
  let x_2252 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_2252, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_2256 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_2256) + 4.0f);
  let x_2262 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_2262);
  let x_2265 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_2265) << bitcast<u32>(2i));
  let x_2270 : f32 = u_xlat4.y;
  let x_2271 : i32 = u_xlati0;
  let x_2274 : i32 = u_xlati0;
  let x_2278 : f32 = x_369.x_MainLightWorldToShadow[((x_2271 + 1i) / 4i)][((x_2274 + 1i) % 4i)].z;
  u_xlat19 = (x_2270 * x_2278);
  let x_2280 : i32 = u_xlati0;
  let x_2282 : i32 = u_xlati0;
  let x_2285 : f32 = x_369.x_MainLightWorldToShadow[(x_2280 / 4i)][(x_2282 % 4i)].z;
  let x_2287 : f32 = u_xlat4.x;
  let x_2289 : f32 = u_xlat19;
  u_xlat19 = ((x_2285 * x_2287) + x_2289);
  let x_2291 : i32 = u_xlati0;
  let x_2294 : i32 = u_xlati0;
  let x_2298 : f32 = x_369.x_MainLightWorldToShadow[((x_2291 + 2i) / 4i)][((x_2294 + 2i) % 4i)].z;
  let x_2300 : f32 = u_xlat4.z;
  let x_2302 : f32 = u_xlat19;
  u_xlat19 = ((x_2298 * x_2300) + x_2302);
  let x_2304 : f32 = u_xlat19;
  let x_2305 : i32 = u_xlati0;
  let x_2308 : i32 = u_xlati0;
  let x_2312 : f32 = x_369.x_MainLightWorldToShadow[((x_2305 + 3i) / 4i)][((x_2308 + 3i) % 4i)].z;
  u_xlat0.x = (x_2304 + x_2312);
  let x_2317 : f32 = u_xlat0.x;
  u_xlatb19 = (0.0f >= x_2317);
  let x_2321 : f32 = u_xlat0.x;
  u_xlatb0 = (x_2321 >= 1.0f);
  let x_2323 : bool = u_xlatb0;
  let x_2324 : bool = u_xlatb19;
  u_xlatb0 = (x_2323 | x_2324);
  let x_2326 : f32 = u_xlat61;
  u_xlat19 = (x_2326 * 0.25f);
  let x_2328 : bool = u_xlatb0;
  let x_2329 : f32 = u_xlat19;
  u_xlat0.x = select(x_2329, 1.0f, x_2328);
  let x_2338 : vec4<f32> = x_2335.unity_SHAr;
  let x_2339 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_2338, x_2339);
  let x_2344 : vec4<f32> = x_2335.unity_SHAg;
  let x_2345 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_2344, x_2345);
  let x_2350 : vec4<f32> = x_2335.unity_SHAb;
  let x_2351 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_2350, x_2351);
  let x_2354 : vec4<f32> = u_xlat2;
  let x_2356 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_2354.y, x_2354.z, x_2354.z, x_2354.x) * vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2356.z));
  let x_2361 : vec4<f32> = x_2335.unity_SHBr;
  let x_2362 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_2361, x_2362);
  let x_2367 : vec4<f32> = x_2335.unity_SHBg;
  let x_2368 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_2367, x_2368);
  let x_2373 : vec4<f32> = x_2335.unity_SHBb;
  let x_2374 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_2373, x_2374);
  let x_2378 : f32 = u_xlat2.y;
  let x_2380 : f32 = u_xlat2.y;
  u_xlat19 = (x_2378 * x_2380);
  let x_2383 : f32 = u_xlat2.x;
  let x_2385 : f32 = u_xlat2.x;
  let x_2387 : f32 = u_xlat19;
  u_xlat19 = ((x_2383 * x_2385) + -(x_2387));
  let x_2392 : vec4<f32> = x_2335.unity_SHC;
  let x_2394 : f32 = u_xlat19;
  let x_2397 : vec4<f32> = u_xlat6;
  let x_2399 : vec3<f32> = ((vec3<f32>(x_2392.x, x_2392.y, x_2392.z) * vec3<f32>(x_2394, x_2394, x_2394)) + vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
  let x_2400 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
  let x_2402 : vec4<f32> = u_xlat4;
  let x_2404 : vec4<f32> = u_xlat5;
  let x_2406 : vec3<f32> = (vec3<f32>(x_2402.x, x_2402.y, x_2402.z) + vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
  let x_2407 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2406.x, x_2406.y, x_2406.z, x_2407.w);
  let x_2409 : vec4<f32> = u_xlat4;
  let x_2411 : vec3<f32> = max(vec3<f32>(x_2409.x, x_2409.y, x_2409.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2412 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);
  let x_2414 : vec3<f32> = vs_TEXCOORD2;
  let x_2416 : vec4<f32> = x_40.x_MainLightPosition;
  u_xlat19 = dot(x_2414, -(vec3<f32>(x_2416.x, x_2416.y, x_2416.z)));
  let x_2420 : f32 = u_xlat19;
  let x_2422 : f32 = vs_TEXCOORD5.z;
  u_xlat19 = (x_2420 * x_2422);
  let x_2425 : f32 = u_xlat19;
  let x_2426 : f32 = u_xlat19;
  u_xlat59 = (x_2425 * x_2426);
  let x_2428 : f32 = u_xlat19;
  let x_2429 : f32 = u_xlat59;
  u_xlat19 = (x_2428 * x_2429);
  let x_2431 : f32 = u_xlat19;
  u_xlat19 = clamp(x_2431, 0.0f, 1.0f);
  let x_2433 : f32 = u_xlat19;
  u_xlat19 = (x_2433 * 5.0f);
  let x_2436 : f32 = u_xlat19;
  let x_2439 : vec4<f32> = x_40.x_MainLightColor;
  let x_2441 : vec3<f32> = (vec3<f32>(x_2436, x_2436, x_2436) * vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
  let x_2442 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
  let x_2445 : vec4<f32> = x_40.x_MainLightPosition;
  let x_2448 : vec4<f32> = x_40.x_MainLightColor;
  let x_2451 : vec4<f32> = u_xlat5;
  let x_2453 : vec3<f32> = ((vec3<f32>(x_2445.y, x_2445.y, x_2445.y) * vec3<f32>(x_2448.x, x_2448.y, x_2448.z)) + vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
  let x_2454 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2453.x, x_2453.y, x_2453.z, x_2454.w);
  let x_2456 : vec4<f32> = u_xlat5;
  let x_2458 : vec4<f32> = u_xlat0;
  let x_2461 : vec4<f32> = u_xlat4;
  let x_2463 : vec3<f32> = ((vec3<f32>(x_2456.x, x_2456.y, x_2456.z) * vec3<f32>(x_2458.x, x_2458.x, x_2458.x)) + vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
  let x_2464 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
  let x_2471 : vec4<f32> = vs_TEXCOORD0;
  let x_2474 : f32 = x_40.x_GlobalMipBias.x;
  let x_2475 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_2471.z, x_2471.w), x_2474);
  let x_2476 : vec3<f32> = vec3<f32>(x_2475.x, x_2475.y, x_2475.z);
  let x_2477 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
  let x_2480 : f32 = u_xlat41.x;
  u_xlat41.x = x_2480;
  let x_2483 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_2483, 0.0f, 1.0f);
  let x_2487 : f32 = vs_TEXCOORD5.z;
  u_xlat19 = (x_2487 + -0.375f);
  let x_2490 : f32 = u_xlat19;
  u_xlat19 = clamp(x_2490, 0.0f, 1.0f);
  let x_2492 : f32 = u_xlat38;
  u_xlat59 = ((-(x_2492) * 4.0f) + 1.0f);
  let x_2496 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2496, 0.0f, 1.0f);
  let x_2498 : f32 = u_xlat57;
  let x_2499 : f32 = u_xlat38;
  u_xlat57 = min(x_2498, x_2499);
  let x_2501 : f32 = u_xlat57;
  u_xlat57 = ((-(x_2501) * 0.5f) + 0.75f);
  let x_2506 : f32 = u_xlat59;
  let x_2508 : f32 = u_xlat57;
  u_xlat57 = ((x_2506 * 0.5f) + x_2508);
  let x_2510 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2510, 0.0f, 1.0f);
  let x_2513 : f32 = u_xlat41.x;
  let x_2514 : f32 = u_xlat57;
  u_xlat57 = (x_2513 * x_2514);
  let x_2516 : f32 = u_xlat57;
  let x_2517 : f32 = u_xlat19;
  u_xlat19 = max(x_2516, x_2517);
  let x_2520 : f32 = u_xlat1.x;
  let x_2522 : f32 = u_xlat1.x;
  u_xlat57 = (x_2520 + x_2522);
  let x_2524 : f32 = u_xlat57;
  let x_2525 : f32 = u_xlat19;
  u_xlat7.x = max(x_2524, x_2525);
  u_xlat7.y = 0.66000002622604370117f;
  let x_2535 : vec4<f32> = u_xlat7;
  let x_2538 : f32 = x_40.x_GlobalMipBias.x;
  let x_2539 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2535.x, x_2535.y), x_2538);
  let x_2540 : vec3<f32> = vec3<f32>(x_2539.x, x_2539.y, x_2539.z);
  let x_2541 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
  let x_2543 : vec4<f32> = u_xlat6;
  let x_2545 : vec4<f32> = u_xlat7;
  let x_2547 : vec3<f32> = (vec3<f32>(x_2543.x, x_2543.y, x_2543.z) * vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
  let x_2548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);
  let x_2550 : vec4<f32> = u_xlat6;
  let x_2552 : vec4<f32> = u_xlat6;
  u_xlat19 = dot(vec3<f32>(x_2550.x, x_2550.y, x_2550.z), vec3<f32>(x_2552.x, x_2552.y, x_2552.z));
  let x_2555 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_2555);
  let x_2557 : f32 = u_xlat19;
  u_xlat19 = ((x_2557 * 1.5f) + -0.10000000149011611938f);
  let x_2561 : f32 = u_xlat19;
  u_xlat19 = clamp(x_2561, 0.0f, 1.0f);
  let x_2563 : vec3<f32> = u_xlat22;
  let x_2566 : vec4<f32> = x_40.x_MainLightColor;
  let x_2569 : vec4<f32> = u_xlat4;
  let x_2571 : vec3<f32> = ((vec3<f32>(x_2563.x, x_2563.x, x_2563.x) * vec3<f32>(x_2566.x, x_2566.y, x_2566.z)) + vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
  let x_2572 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);
  let x_2574 : vec3<f32> = vs_TEXCOORD2;
  let x_2576 : vec4<f32> = x_40.x_MainLightPosition;
  let x_2578 : vec3<f32> = (x_2574 + vec3<f32>(x_2576.x, x_2576.y, x_2576.z));
  let x_2579 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);
  let x_2581 : vec4<f32> = u_xlat6;
  let x_2583 : vec4<f32> = u_xlat6;
  u_xlat57 = dot(vec3<f32>(x_2581.x, x_2581.y, x_2581.z), vec3<f32>(x_2583.x, x_2583.y, x_2583.z));
  let x_2586 : f32 = u_xlat57;
  u_xlat57 = max(x_2586, 1.17549435e-38f);
  let x_2589 : f32 = u_xlat57;
  u_xlat57 = inverseSqrt(x_2589);
  let x_2591 : f32 = u_xlat57;
  let x_2593 : vec4<f32> = u_xlat6;
  let x_2595 : vec3<f32> = (vec3<f32>(x_2591, x_2591, x_2591) * vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
  let x_2596 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2595.x, x_2595.y, x_2595.z, x_2596.w);
  let x_2598 : vec4<f32> = u_xlat2;
  let x_2600 : vec4<f32> = u_xlat6;
  u_xlat57 = dot(vec3<f32>(x_2598.x, x_2598.y, x_2598.z), vec3<f32>(x_2600.x, x_2600.y, x_2600.z));
  let x_2603 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2603, 0.0f, 1.0f);
  let x_2606 : vec4<f32> = x_40.x_MainLightPosition;
  let x_2608 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_2606.x, x_2606.y, x_2606.z), vec3<f32>(x_2608.x, x_2608.y, x_2608.z));
  let x_2613 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2613, 0.0f, 1.0f);
  let x_2616 : f32 = u_xlat57;
  let x_2617 : f32 = u_xlat57;
  u_xlat57 = (x_2616 * x_2617);
  let x_2619 : f32 = u_xlat57;
  u_xlat57 = ((x_2619 * -0.99993896484375f) + 1.00001001358032226562f);
  let x_2625 : f32 = u_xlat1.x;
  let x_2627 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2625 * x_2627);
  let x_2630 : f32 = u_xlat57;
  let x_2631 : f32 = u_xlat57;
  u_xlat57 = (x_2630 * x_2631);
  let x_2634 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2634, 0.10000000149011611938f);
  let x_2637 : f32 = u_xlat57;
  let x_2639 : f32 = u_xlat1.x;
  u_xlat57 = (x_2637 * x_2639);
  let x_2641 : f32 = u_xlat57;
  u_xlat57 = (x_2641 * 2.03125f);
  let x_2645 : f32 = u_xlat57;
  u_xlat57 = (0.00006103515625f / x_2645);
  let x_2648 : f32 = u_xlat0.x;
  let x_2649 : f32 = u_xlat57;
  u_xlat0.x = (x_2648 * x_2649);
  let x_2653 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2653 * 0.03999999910593032837f);
  let x_2657 : vec4<f32> = u_xlat0;
  let x_2660 : vec4<f32> = x_40.x_MainLightColor;
  let x_2662 : vec3<f32> = (vec3<f32>(x_2657.x, x_2657.x, x_2657.x) * vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
  let x_2663 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2662.x, x_2662.y, x_2662.z, x_2663.w);
  let x_2666 : f32 = x_40.x_AdditionalLightsCount.x;
  let x_2668 : f32 = x_2335.unity_LightData.y;
  u_xlat0.x = min(x_2666, x_2668);
  let x_2672 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2672));
  let x_2675 : vec4<f32> = u_xlat5;
  let x_2676 : vec3<f32> = vec3<f32>(x_2675.x, x_2675.y, x_2675.z);
  let x_2677 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2676.x, x_2676.y, x_2676.z, x_2677.w);
  let x_2679 : vec4<f32> = u_xlat6;
  let x_2680 : vec3<f32> = vec3<f32>(x_2679.x, x_2679.y, x_2679.z);
  let x_2681 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_2689 : u32 = u_xlatu_loop_2;
    let x_2690 : u32 = u_xlatu0;
    if ((x_2689 < x_2690)) {
    } else {
      break;
    }
    let x_2693 : u32 = u_xlatu_loop_2;
    u_xlatu1 = (x_2693 >> 2u);
    let x_2696 : u32 = u_xlatu_loop_2;
    u_xlati59 = bitcast<i32>((x_2696 & 3u));
    let x_2699 : u32 = u_xlatu1;
    let x_2702 : vec4<f32> = x_2335.unity_LightIndices[bitcast<i32>(x_2699)];
    let x_2711 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2716 : vec4<u32> = indexable[x_2711];
    u_xlat1.x = dot(x_2702, bitcast<vec4<f32>>(x_2716));
    let x_2722 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_2722);
    let x_2724 : vec3<f32> = vs_TEXCOORD1;
    let x_2735 : i32 = u_xlati1;
    let x_2737 : vec4<f32> = x_2734.x_AdditionalLightsPosition[x_2735];
    let x_2740 : i32 = u_xlati1;
    let x_2742 : vec4<f32> = x_2734.x_AdditionalLightsPosition[x_2740];
    let x_2744 : vec3<f32> = ((-(x_2724) * vec3<f32>(x_2737.w, x_2737.w, x_2737.w)) + vec3<f32>(x_2742.x, x_2742.y, x_2742.z));
    let x_2745 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2744.x, x_2744.y, x_2744.z, x_2745.w);
    let x_2747 : vec4<f32> = u_xlat9;
    let x_2749 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2747.x, x_2747.y, x_2747.z), vec3<f32>(x_2749.x, x_2749.y, x_2749.z));
    let x_2752 : f32 = u_xlat59;
    u_xlat59 = max(x_2752, 0.00006103515625f);
    let x_2754 : f32 = u_xlat59;
    u_xlat22.x = inverseSqrt(x_2754);
    let x_2757 : vec3<f32> = u_xlat22;
    let x_2759 : vec4<f32> = u_xlat9;
    let x_2761 : vec3<f32> = (vec3<f32>(x_2757.x, x_2757.x, x_2757.x) * vec3<f32>(x_2759.x, x_2759.y, x_2759.z));
    let x_2762 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2761.x, x_2761.y, x_2761.z, x_2762.w);
    let x_2764 : f32 = u_xlat59;
    u_xlat41.x = (1.0f / x_2764);
    let x_2767 : f32 = u_xlat59;
    let x_2768 : i32 = u_xlati1;
    let x_2770 : f32 = x_2734.x_AdditionalLightsAttenuation[x_2768].x;
    u_xlat59 = (x_2767 * x_2770);
    let x_2772 : f32 = u_xlat59;
    let x_2774 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2772) * x_2774) + 1.0f);
    let x_2777 : f32 = u_xlat59;
    u_xlat59 = max(x_2777, 0.0f);
    let x_2779 : f32 = u_xlat59;
    let x_2780 : f32 = u_xlat59;
    u_xlat59 = (x_2779 * x_2780);
    let x_2782 : f32 = u_xlat59;
    let x_2784 : f32 = u_xlat41.x;
    u_xlat59 = (x_2782 * x_2784);
    let x_2786 : i32 = u_xlati1;
    let x_2788 : vec4<f32> = x_2734.x_AdditionalLightsSpotDir[x_2786];
    let x_2790 : vec4<f32> = u_xlat10;
    u_xlat41.x = dot(vec3<f32>(x_2788.x, x_2788.y, x_2788.z), vec3<f32>(x_2790.x, x_2790.y, x_2790.z));
    let x_2795 : f32 = u_xlat41.x;
    let x_2796 : i32 = u_xlati1;
    let x_2798 : f32 = x_2734.x_AdditionalLightsAttenuation[x_2796].z;
    let x_2800 : i32 = u_xlati1;
    let x_2802 : f32 = x_2734.x_AdditionalLightsAttenuation[x_2800].w;
    u_xlat41.x = ((x_2795 * x_2798) + x_2802);
    let x_2806 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2806, 0.0f, 1.0f);
    let x_2810 : f32 = u_xlat41.x;
    let x_2812 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2810 * x_2812);
    let x_2815 : f32 = u_xlat59;
    let x_2817 : f32 = u_xlat41.x;
    u_xlat59 = (x_2815 * x_2817);
    let x_2819 : vec4<f32> = u_xlat2;
    let x_2821 : vec4<f32> = u_xlat10;
    u_xlat41.x = dot(vec3<f32>(x_2819.x, x_2819.y, x_2819.z), vec3<f32>(x_2821.x, x_2821.y, x_2821.z));
    let x_2826 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2826, 0.0f, 1.0f);
    let x_2829 : f32 = u_xlat59;
    let x_2831 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2829 * x_2831);
    let x_2834 : vec2<f32> = u_xlat41;
    let x_2836 : i32 = u_xlati1;
    let x_2838 : vec4<f32> = x_2734.x_AdditionalLightsColor[x_2836];
    let x_2840 : vec3<f32> = (vec3<f32>(x_2834.x, x_2834.x, x_2834.x) * vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
    let x_2841 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
    let x_2843 : vec4<f32> = u_xlat9;
    let x_2845 : vec3<f32> = u_xlat22;
    let x_2848 : vec3<f32> = vs_TEXCOORD2;
    let x_2849 : vec3<f32> = ((vec3<f32>(x_2843.x, x_2843.y, x_2843.z) * vec3<f32>(x_2845.x, x_2845.x, x_2845.x)) + x_2848);
    let x_2850 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2849.x, x_2849.y, x_2849.z, x_2850.w);
    let x_2852 : vec4<f32> = u_xlat9;
    let x_2854 : vec4<f32> = u_xlat9;
    u_xlat22.x = dot(vec3<f32>(x_2852.x, x_2852.y, x_2852.z), vec3<f32>(x_2854.x, x_2854.y, x_2854.z));
    let x_2859 : f32 = u_xlat22.x;
    u_xlat22.x = max(x_2859, 1.17549435e-38f);
    let x_2863 : f32 = u_xlat22.x;
    u_xlat22.x = inverseSqrt(x_2863);
    let x_2866 : vec3<f32> = u_xlat22;
    let x_2868 : vec4<f32> = u_xlat9;
    let x_2870 : vec3<f32> = (vec3<f32>(x_2866.x, x_2866.x, x_2866.x) * vec3<f32>(x_2868.x, x_2868.y, x_2868.z));
    let x_2871 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2870.x, x_2870.y, x_2870.z, x_2871.w);
    let x_2873 : vec4<f32> = u_xlat2;
    let x_2875 : vec4<f32> = u_xlat9;
    u_xlat22.x = dot(vec3<f32>(x_2873.x, x_2873.y, x_2873.z), vec3<f32>(x_2875.x, x_2875.y, x_2875.z));
    let x_2880 : f32 = u_xlat22.x;
    u_xlat22.x = clamp(x_2880, 0.0f, 1.0f);
    let x_2883 : vec4<f32> = u_xlat10;
    let x_2885 : vec4<f32> = u_xlat9;
    u_xlat22.y = dot(vec3<f32>(x_2883.x, x_2883.y, x_2883.z), vec3<f32>(x_2885.x, x_2885.y, x_2885.z));
    let x_2890 : f32 = u_xlat22.y;
    u_xlat22.y = clamp(x_2890, 0.0f, 1.0f);
    let x_2893 : vec3<f32> = u_xlat22;
    let x_2895 : vec3<f32> = u_xlat22;
    let x_2897 : vec2<f32> = (vec2<f32>(x_2893.x, x_2893.y) * vec2<f32>(x_2895.x, x_2895.y));
    let x_2898 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_2897.x, x_2897.y, x_2898.z);
    let x_2901 : f32 = u_xlat22.x;
    u_xlat22.x = ((x_2901 * -0.99993896484375f) + 1.00001001358032226562f);
    let x_2906 : f32 = u_xlat22.x;
    let x_2908 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2906 * x_2908);
    let x_2912 : f32 = u_xlat22.y;
    u_xlat41.x = max(x_2912, 0.10000000149011611938f);
    let x_2916 : f32 = u_xlat41.x;
    let x_2918 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2916 * x_2918);
    let x_2922 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2922 * 2.03125f);
    let x_2926 : f32 = u_xlat22.x;
    u_xlat22.x = (0.00006103515625f / x_2926);
    let x_2930 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2930 * 0.03999999910593032837f);
    let x_2933 : vec3<f32> = u_xlat22;
    let x_2935 : vec4<f32> = u_xlat11;
    let x_2938 : vec4<f32> = u_xlat8;
    let x_2940 : vec3<f32> = ((vec3<f32>(x_2933.x, x_2933.x, x_2933.x) * vec3<f32>(x_2935.x, x_2935.y, x_2935.z)) + vec3<f32>(x_2938.x, x_2938.y, x_2938.z));
    let x_2941 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2940.x, x_2940.y, x_2940.z, x_2941.w);
    let x_2943 : f32 = u_xlat59;
    let x_2945 : i32 = u_xlati1;
    let x_2947 : vec4<f32> = x_2734.x_AdditionalLightsColor[x_2945];
    let x_2950 : vec4<f32> = u_xlat7;
    let x_2952 : vec3<f32> = ((vec3<f32>(x_2943, x_2943, x_2943) * vec3<f32>(x_2947.x, x_2947.y, x_2947.z)) + vec3<f32>(x_2950.x, x_2950.y, x_2950.z));
    let x_2953 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2953.w);

    continuing {
      let x_2955 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_2955 + bitcast<u32>(1i));
    }
  }
  let x_2957 : f32 = u_xlat58;
  let x_2958 : f32 = u_xlat38;
  u_xlat5.x = (x_2957 * x_2958);
  u_xlat5.y = 0.375f;
  u_xlat5.z = 0.0f;
  let x_2967 : vec4<f32> = u_xlat5;
  let x_2970 : f32 = x_40.x_GlobalMipBias.x;
  let x_2971 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2967.x, x_2967.y), x_2970);
  let x_2972 : vec3<f32> = vec3<f32>(x_2971.x, x_2971.y, x_2971.z);
  let x_2973 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2972.x, x_2973.y, x_2972.y, x_2972.z);
  let x_2975 : vec3<f32> = vs_TEXCOORD2;
  let x_2977 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(-(x_2975), vec3<f32>(x_2977.x, x_2977.y, x_2977.z));
  let x_2982 : f32 = u_xlat1.x;
  let x_2984 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2982 + x_2984);
  let x_2987 : vec4<f32> = u_xlat2;
  let x_2989 : vec3<f32> = u_xlat1;
  let x_2993 : vec3<f32> = vs_TEXCOORD2;
  let x_2995 : vec3<f32> = ((vec3<f32>(x_2987.x, x_2987.y, x_2987.z) * -(vec3<f32>(x_2989.x, x_2989.x, x_2989.x))) + -(x_2993));
  let x_2996 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2995.x, x_2995.y, x_2995.z, x_2996.w);
  let x_3006 : vec4<f32> = u_xlat2;
  let x_3009 : f32 = x_40.x_GlobalMipBias.x;
  let x_3010 : vec4<f32> = textureSampleBias(x_CubemapTexture, sampler_CubemapTexture, vec3<f32>(x_3006.x, x_3006.y, x_3006.z), x_3009);
  let x_3011 : vec3<f32> = vec3<f32>(x_3010.x, x_3010.y, x_3010.z);
  let x_3012 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3011.x, x_3011.y, x_3011.z, x_3012.w);
  let x_3019 : vec2<f32> = u_xlat20;
  let x_3021 : f32 = u_xlat41.y;
  let x_3022 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_3019, x_3021);
  u_xlat1 = vec3<f32>(x_3022.x, x_3022.y, x_3022.z);
  let x_3027 : vec4<f32> = u_xlat5;
  let x_3030 : f32 = x_40.x_GlobalMipBias.x;
  let x_3031 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_3027.x, x_3027.z), x_3030);
  u_xlat22 = vec3<f32>(x_3031.x, x_3031.y, x_3031.z);
  let x_3033 : vec3<f32> = u_xlat1;
  let x_3034 : vec3<f32> = u_xlat22;
  let x_3035 : vec3<f32> = (x_3033 * x_3034);
  let x_3036 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3036.w);
  let x_3038 : vec3<f32> = u_xlat1;
  let x_3040 : vec3<f32> = u_xlat22;
  let x_3042 : vec4<f32> = u_xlat2;
  u_xlat1 = ((-(x_3038) * x_3040) + vec3<f32>(x_3042.x, x_3042.y, x_3042.z));
  let x_3045 : f32 = u_xlat3;
  let x_3047 : vec3<f32> = u_xlat1;
  let x_3049 : vec4<f32> = u_xlat5;
  u_xlat1 = ((vec3<f32>(x_3045, x_3045, x_3045) * x_3047) + vec3<f32>(x_3049.x, x_3049.y, x_3049.z));
  let x_3052 : vec4<f32> = u_xlat7;
  let x_3054 : vec4<f32> = u_xlat0;
  let x_3057 : vec3<f32> = u_xlat1;
  let x_3058 : vec3<f32> = ((vec3<f32>(x_3052.x, x_3052.y, x_3052.z) * vec3<f32>(x_3054.x, x_3054.z, x_3054.w)) + x_3057);
  let x_3059 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3058.x, x_3059.y, x_3058.y, x_3058.z);
  let x_3061 : vec4<f32> = u_xlat8;
  let x_3063 : vec4<f32> = u_xlat0;
  let x_3065 : vec3<f32> = (vec3<f32>(x_3061.x, x_3061.y, x_3061.z) + vec3<f32>(x_3063.x, x_3063.z, x_3063.w));
  let x_3066 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3065.x, x_3066.y, x_3065.y, x_3065.z);
  let x_3068 : f32 = u_xlat19;
  let x_3070 : vec4<f32> = u_xlat4;
  let x_3073 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_3068, x_3068, x_3068) * vec3<f32>(x_3070.x, x_3070.y, x_3070.z)) + -(vec3<f32>(x_3073.x, x_3073.z, x_3073.w)));
  let x_3077 : f32 = u_xlat19;
  let x_3079 : vec3<f32> = u_xlat1;
  let x_3081 : vec4<f32> = u_xlat0;
  let x_3083 : vec3<f32> = ((vec3<f32>(x_3077, x_3077, x_3077) * x_3079) + vec3<f32>(x_3081.x, x_3081.z, x_3081.w));
  let x_3084 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3083.x, x_3083.y, x_3083.z, x_3084.w);
  let x_3089 : f32 = vs_TEXCOORD4.x;
  let x_3091 : f32 = vs_TEXCOORD4.x;
  u_xlat57 = (x_3089 * -(x_3091));
  let x_3094 : f32 = u_xlat57;
  u_xlat57 = exp2(x_3094);
  let x_3096 : vec4<f32> = u_xlat0;
  let x_3099 : vec4<f32> = x_40.unity_FogColor;
  let x_3102 : vec3<f32> = (vec3<f32>(x_3096.x, x_3096.y, x_3096.z) + -(vec3<f32>(x_3099.x, x_3099.y, x_3099.z)));
  let x_3103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3103.w);
  let x_3107 : f32 = u_xlat57;
  let x_3109 : vec4<f32> = u_xlat0;
  let x_3113 : vec4<f32> = x_40.unity_FogColor;
  let x_3115 : vec3<f32> = ((vec3<f32>(x_3107, x_3107, x_3107) * vec3<f32>(x_3109.x, x_3109.y, x_3109.z)) + vec3<f32>(x_3113.x, x_3113.y, x_3113.z));
  let x_3116 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3115.x, x_3115.y, x_3115.z, x_3116.w);
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


