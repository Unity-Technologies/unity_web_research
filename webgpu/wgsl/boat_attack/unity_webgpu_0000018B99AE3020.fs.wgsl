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
  x_ScreenParams : vec4<f32>,
  /* @offset(80) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(96) */
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(4) var<uniform> x_369 : LightShadows;

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

var<private> u_xlat42 : f32;

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

@group(0) @binding(8) var x_DitherPattern : texture_2d<f32>;

@group(0) @binding(17) var sampler_DitherPattern : sampler;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlatu62 : u32;

var<private> u_xlati62 : i32;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu41 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlat60 : f32;

@group(1) @binding(2) var<uniform> x_2324 : UnityPerDraw;

var<private> u_xlat59 : f32;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(14) var sampler_AbsorptionScatteringRamp : sampler;

var<private> u_xlatu1 : u32;

var<private> u_xlati63 : i32;

@group(1) @binding(1) var<uniform> x_2733 : AdditionalLights;

var<private> u_xlat63 : f32;

var<private> u_xlat64 : f32;

var<private> u_xlat65 : f32;

@group(0) @binding(0) var x_PlanarReflectionTexture : texture_2d<f32>;

@group(0) @binding(3) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture_linear_clamp : sampler;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu59 : u32;

var<private> u_xlatu61 : u32;

var<private> u_xlatb62 : bool;

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
  var x_1818 : f32;
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
  let x_260 : vec4<f32> = x_39.unity_MatrixVP[1i];
  u_xlat20 = (-(vec2<f32>(x_253.y, x_253.y)) * vec2<f32>(x_260.x, x_260.z));
  let x_264 : vec4<f32> = x_39.unity_MatrixVP[0i];
  let x_266 : vec4<f32> = u_xlat2;
  let x_270 : vec2<f32> = u_xlat20;
  u_xlat20 = ((vec2<f32>(x_264.x, x_264.z) * -(vec2<f32>(x_266.x, x_266.x))) + x_270);
  let x_274 : vec4<f32> = x_39.unity_MatrixVP[2i];
  let x_276 : vec4<f32> = u_xlat2;
  let x_280 : vec2<f32> = u_xlat20;
  u_xlat20 = ((vec2<f32>(x_274.x, x_274.z) * -(vec2<f32>(x_276.z, x_276.z))) + x_280);
  let x_282 : f32 = u_xlat3;
  u_xlat3 = x_282;
  let x_283 : f32 = u_xlat3;
  u_xlat3 = clamp(x_283, 0.0f, 1.0f);
  let x_285 : vec2<f32> = u_xlat20;
  let x_286 : f32 = u_xlat3;
  let x_289 : vec3<f32> = u_xlat0;
  u_xlat20 = ((x_285 * vec2<f32>(x_286, x_286)) + vec2<f32>(x_289.x, x_289.y));
  let x_295 : vec2<f32> = u_xlat20;
  let x_297 : f32 = x_39.x_GlobalMipBias.x;
  let x_298 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_295, x_297);
  u_xlat3 = x_298.x;
  let x_301 : f32 = x_39.x_ZBufferParams.z;
  let x_302 : f32 = u_xlat3;
  let x_305 : f32 = x_39.x_ZBufferParams.w;
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
    let x_327 : vec3<f32> = u_xlat0;
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
  let x_431 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_429 < x_431);
  let x_434 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_434);
  let x_438 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_438);
  let x_442 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_442);
  let x_446 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_446);
  let x_450 : bool = u_xlatb4.x;
  u_xlat22.x = select(-0.0f, -1.0f, x_450);
  let x_455 : bool = u_xlatb4.y;
  u_xlat22.y = select(-0.0f, -1.0f, x_455);
  let x_459 : bool = u_xlatb4.z;
  u_xlat22.z = select(-0.0f, -1.0f, x_459);
  let x_462 : vec3<f32> = u_xlat22;
  let x_463 : vec4<f32> = u_xlat5;
  u_xlat22 = (x_462 + vec3<f32>(x_463.y, x_463.z, x_463.w));
  let x_466 : vec3<f32> = u_xlat22;
  let x_468 : vec3<f32> = max(x_466, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_469 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_469.x, x_468.x, x_468.y, x_468.z);
  let x_471 : vec4<f32> = u_xlat5;
  u_xlat22.x = dot(x_471, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_478 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_478) + 4.0f);
  let x_485 : f32 = u_xlat22.x;
  u_xlatu22 = u32(x_485);
  let x_489 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_489) << bitcast<u32>(2i));
  let x_492 : vec3<f32> = vs_TEXCOORD1;
  let x_494 : i32 = u_xlati22;
  let x_497 : i32 = u_xlati22;
  let x_501 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_494 + 1i) / 4i)][((x_497 + 1i) % 4i)];
  let x_503 : vec3<f32> = (vec3<f32>(x_492.y, x_492.y, x_492.y) * vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : i32 = u_xlati22;
  let x_508 : i32 = u_xlati22;
  let x_511 : vec4<f32> = x_369.x_MainLightWorldToShadow[(x_506 / 4i)][(x_508 % 4i)];
  let x_513 : vec3<f32> = vs_TEXCOORD1;
  let x_516 : vec4<f32> = u_xlat4;
  let x_518 : vec3<f32> = ((vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(x_513.x, x_513.x, x_513.x)) + vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_519 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : i32 = u_xlati22;
  let x_524 : i32 = u_xlati22;
  let x_528 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_521 + 2i) / 4i)][((x_524 + 2i) % 4i)];
  let x_530 : vec3<f32> = vs_TEXCOORD1;
  let x_533 : vec4<f32> = u_xlat4;
  let x_535 : vec3<f32> = ((vec3<f32>(x_528.x, x_528.y, x_528.z) * vec3<f32>(x_530.z, x_530.z, x_530.z)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : i32 = u_xlati22;
  let x_543 : i32 = u_xlati22;
  let x_547 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_540 + 3i) / 4i)][((x_543 + 3i) % 4i)];
  u_xlat22 = (vec3<f32>(x_538.x, x_538.y, x_538.z) + vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_551 : f32 = x_369.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_551);
  let x_555 : bool = u_xlatb4.x;
  if (x_555) {
    let x_559 : f32 = x_369.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_559 == 1.0f);
    let x_563 : bool = u_xlatb4.x;
    if (x_563) {
      let x_566 : vec3<f32> = u_xlat22;
      let x_570 : vec4<f32> = x_369.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_566.x, x_566.y, x_566.x, x_566.y) + x_570);
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
        u_xlat25 = ((x_1357 * vec2<f32>(x_1359.x, x_1359.y)) + vec2<f32>(x_1362.w, x_1362.y));
        let x_1366 : f32 = u_xlat9.y;
        u_xlat6.w = x_1366;
        let x_1369 : vec2<f32> = u_xlat23;
        let x_1371 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1374 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1369 * vec2<f32>(x_1371.x, x_1371.y)) + vec2<f32>(x_1374.x, x_1374.w));
        let x_1377 : vec4<f32> = u_xlat9;
        let x_1378 : vec3<f32> = vec3<f32>(x_1377.x, x_1377.z, x_1377.w);
        let x_1379 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1378.x, x_1379.y, x_1378.y, x_1378.z);
        let x_1381 : vec2<f32> = u_xlat23;
        let x_1384 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1381.x, x_1381.y, x_1381.x, x_1381.y) * vec4<f32>(x_1384.x, x_1384.y, x_1384.x, x_1384.y)) + vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1387.y));
        let x_1391 : vec2<f32> = u_xlat23;
        let x_1393 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1391 * vec2<f32>(x_1393.x, x_1393.y)) + vec2<f32>(x_1396.w, x_1396.y));
        let x_1400 : f32 = u_xlat6.x;
        u_xlat8.x = x_1400;
        let x_1402 : vec2<f32> = u_xlat23;
        let x_1404 : vec4<f32> = x_369.x_MainLightShadowmapSize;
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
        let x_1647 : vec2<f32> = u_xlat25;
        let x_1649 : f32 = u_xlat22.z;
        txVec23 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec23;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1656.xy, x_1656.z);
        u_xlat6.x = x_1658;
        let x_1661 : f32 = u_xlat18.z;
        let x_1663 : f32 = u_xlat6.x;
        let x_1665 : f32 = u_xlat61;
        u_xlat61 = ((x_1661 * x_1663) + x_1665);
        let x_1668 : vec2<f32> = u_xlat15;
        let x_1670 : f32 = u_xlat22.z;
        txVec24 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1677 : vec3<f32> = txVec24;
        let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1677.xy, x_1677.z);
        u_xlat6.x = x_1679;
        let x_1682 : f32 = u_xlat18.w;
        let x_1684 : f32 = u_xlat6.x;
        let x_1686 : f32 = u_xlat61;
        u_xlat61 = ((x_1682 * x_1684) + x_1686);
        let x_1689 : vec4<f32> = u_xlat9;
        let x_1690 : vec2<f32> = vec2<f32>(x_1689.x, x_1689.y);
        let x_1692 : f32 = u_xlat22.z;
        txVec25 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec25;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1699.xy, x_1699.z);
        u_xlat6.x = x_1701;
        let x_1704 : f32 = u_xlat5.x;
        let x_1706 : f32 = u_xlat6.x;
        let x_1708 : f32 = u_xlat61;
        u_xlat61 = ((x_1704 * x_1706) + x_1708);
        let x_1711 : vec4<f32> = u_xlat9;
        let x_1712 : vec2<f32> = vec2<f32>(x_1711.z, x_1711.w);
        let x_1714 : f32 = u_xlat22.z;
        txVec26 = vec3<f32>(x_1712.x, x_1712.y, x_1714);
        let x_1721 : vec3<f32> = txVec26;
        let x_1723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1721.xy, x_1721.z);
        u_xlat5.x = x_1723;
        let x_1726 : f32 = u_xlat5.y;
        let x_1728 : f32 = u_xlat5.x;
        let x_1730 : f32 = u_xlat61;
        u_xlat61 = ((x_1726 * x_1728) + x_1730);
        let x_1733 : vec2<f32> = u_xlat46;
        let x_1735 : f32 = u_xlat22.z;
        txVec27 = vec3<f32>(x_1733.x, x_1733.y, x_1735);
        let x_1742 : vec3<f32> = txVec27;
        let x_1744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1742.xy, x_1742.z);
        u_xlat5.x = x_1744;
        let x_1747 : f32 = u_xlat5.z;
        let x_1749 : f32 = u_xlat5.x;
        let x_1751 : f32 = u_xlat61;
        u_xlat61 = ((x_1747 * x_1749) + x_1751);
        let x_1754 : vec2<f32> = u_xlat23;
        let x_1756 : f32 = u_xlat22.z;
        txVec28 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec28;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1763.xy, x_1763.z);
        u_xlat23.x = x_1765;
        let x_1768 : f32 = u_xlat5.w;
        let x_1770 : f32 = u_xlat23.x;
        let x_1772 : f32 = u_xlat61;
        u_xlat4.x = ((x_1768 * x_1770) + x_1772);
      }
    }
  } else {
    let x_1777 : vec3<f32> = u_xlat22;
    let x_1778 : vec2<f32> = vec2<f32>(x_1777.x, x_1777.y);
    let x_1780 : f32 = u_xlat22.z;
    txVec29 = vec3<f32>(x_1778.x, x_1778.y, x_1780);
    let x_1787 : vec3<f32> = txVec29;
    let x_1789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1787.xy, x_1787.z);
    u_xlat4.x = x_1789;
  }
  let x_1792 : f32 = x_369.x_MainLightShadowParams.x;
  u_xlat22.x = (-(x_1792) + 1.0f);
  let x_1797 : f32 = u_xlat4.x;
  let x_1799 : f32 = x_369.x_MainLightShadowParams.x;
  let x_1802 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_1797 * x_1799) + x_1802);
  let x_1807 : f32 = u_xlat22.z;
  u_xlatb41 = (0.0f >= x_1807);
  let x_1811 : f32 = u_xlat22.z;
  u_xlatb60 = (x_1811 >= 1.0f);
  let x_1813 : bool = u_xlatb60;
  let x_1814 : bool = u_xlatb41;
  u_xlatb41 = (x_1813 | x_1814);
  let x_1816 : bool = u_xlatb41;
  if (x_1816) {
    x_1818 = 1.0f;
  } else {
    let x_1823 : f32 = u_xlat22.x;
    x_1818 = x_1823;
  }
  let x_1824 : f32 = x_1818;
  u_xlat22.x = x_1824;
  let x_1827 : vec3<f32> = u_xlat0;
  let x_1830 : vec4<f32> = x_39.x_ScreenParams;
  u_xlat41 = (vec2<f32>(x_1827.x, x_1827.y) * vec2<f32>(x_1830.x, x_1830.y));
  let x_1833 : f32 = u_xlat38;
  let x_1837 : vec2<f32> = (vec2<f32>(x_1833, x_1833) * vec2<f32>(20.0f, 0.25f));
  let x_1838 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1837.x, x_1837.y, x_1838.z, x_1838.w);
  let x_1840 : vec4<f32> = u_xlat4;
  let x_1842 : vec3<f32> = vs_TEXCOORD2;
  let x_1844 : vec3<f32> = (vec3<f32>(x_1840.y, x_1840.y, x_1840.y) * -(x_1842));
  let x_1845 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1845.w);
  u_xlat42 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1854 : u32 = u_xlatu_loop_1;
    if ((x_1854 < 4u)) {
    } else {
      break;
    }
    let x_1858 : u32 = u_xlatu_loop_1;
    u_xlat62 = f32(x_1858);
    let x_1860 : f32 = u_xlat62;
    let x_1863 : vec4<f32> = x_39.x_ScreenParams;
    let x_1865 : vec2<f32> = (vec2<f32>(x_1860, x_1860) * vec2<f32>(x_1863.x, x_1863.y));
    let x_1866 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1865.x, x_1865.y, x_1866.z, x_1866.w);
    let x_1868 : vec2<f32> = u_xlat41;
    let x_1870 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
    let x_1873 : vec4<f32> = u_xlat6;
    let x_1875 : vec2<f32> = ((x_1868 * vec2<f32>(x_1870.x, x_1870.y)) + vec2<f32>(x_1873.x, x_1873.y));
    let x_1876 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1875.x, x_1875.y, x_1876.z, x_1876.w);
    let x_1883 : vec4<f32> = u_xlat6;
    let x_1886 : f32 = x_39.x_GlobalMipBias.x;
    let x_1887 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, vec2<f32>(x_1883.x, x_1883.y), x_1886);
    let x_1888 : vec3<f32> = vec3<f32>(x_1887.x, x_1887.y, x_1887.z);
    let x_1889 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
    let x_1891 : vec4<f32> = u_xlat6;
    let x_1896 : vec3<f32> = ((vec3<f32>(x_1891.x, x_1891.z, x_1891.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_1897 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1897.w);
    let x_1899 : vec4<f32> = u_xlat4;
    let x_1901 : vec4<f32> = u_xlat6;
    let x_1903 : vec3<f32> = (vec3<f32>(x_1899.y, x_1899.y, x_1899.y) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
    let x_1904 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1903.x, x_1903.y, x_1904.z, x_1903.z);
    let x_1906 : f32 = u_xlat62;
    let x_1908 : vec4<f32> = u_xlat6;
    let x_1910 : vec3<f32> = (vec3<f32>(x_1906, x_1906, x_1906) * vec3<f32>(x_1908.x, x_1908.y, x_1908.w));
    let x_1911 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1910.x, x_1910.y, x_1911.z, x_1910.z);
    let x_1913 : vec4<f32> = u_xlat6;
    let x_1918 : vec3<f32> = vs_TEXCOORD1;
    let x_1919 : vec3<f32> = ((vec3<f32>(x_1913.x, x_1913.y, x_1913.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_1918);
    let x_1920 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1919.x, x_1919.y, x_1920.z, x_1919.z);
    let x_1922 : f32 = u_xlat62;
    let x_1924 : f32 = u_xlat6.z;
    u_xlat62 = (x_1922 + x_1924);
    let x_1926 : vec4<f32> = u_xlat5;
    let x_1928 : f32 = u_xlat62;
    let x_1931 : vec4<f32> = u_xlat6;
    let x_1933 : vec3<f32> = ((vec3<f32>(x_1926.x, x_1926.y, x_1926.z) * vec3<f32>(x_1928, x_1928, x_1928)) + vec3<f32>(x_1931.x, x_1931.y, x_1931.w));
    let x_1934 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
    let x_1936 : vec4<f32> = u_xlat6;
    let x_1939 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
    let x_1942 : vec3<f32> = (vec3<f32>(x_1936.x, x_1936.y, x_1936.z) + -(vec3<f32>(x_1939.x, x_1939.y, x_1939.z)));
    let x_1943 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1943.w);
    let x_1945 : vec4<f32> = u_xlat6;
    let x_1948 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
    let x_1951 : vec3<f32> = (vec3<f32>(x_1945.x, x_1945.y, x_1945.z) + -(vec3<f32>(x_1948.x, x_1948.y, x_1948.z)));
    let x_1952 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1951.x, x_1951.y, x_1951.z, x_1952.w);
    let x_1954 : vec4<f32> = u_xlat6;
    let x_1957 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
    let x_1960 : vec3<f32> = (vec3<f32>(x_1954.x, x_1954.y, x_1954.z) + -(vec3<f32>(x_1957.x, x_1957.y, x_1957.z)));
    let x_1961 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
    let x_1963 : vec4<f32> = u_xlat6;
    let x_1966 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
    let x_1969 : vec3<f32> = (vec3<f32>(x_1963.x, x_1963.y, x_1963.z) + -(vec3<f32>(x_1966.x, x_1966.y, x_1966.z)));
    let x_1970 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
    let x_1972 : vec4<f32> = u_xlat7;
    let x_1974 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_1972.x, x_1972.y, x_1972.z), vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
    let x_1978 : vec4<f32> = u_xlat8;
    let x_1980 : vec4<f32> = u_xlat8;
    u_xlat7.y = dot(vec3<f32>(x_1978.x, x_1978.y, x_1978.z), vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
    let x_1984 : vec4<f32> = u_xlat9;
    let x_1986 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(vec3<f32>(x_1984.x, x_1984.y, x_1984.z), vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
    let x_1990 : vec4<f32> = u_xlat10;
    let x_1992 : vec4<f32> = u_xlat10;
    u_xlat7.w = dot(vec3<f32>(x_1990.x, x_1990.y, x_1990.z), vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
    let x_1997 : vec4<f32> = u_xlat7;
    let x_1999 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
    u_xlatb7 = (x_1997 < x_1999);
    let x_2002 : bool = u_xlatb7.x;
    u_xlat8.x = select(0.0f, 1.0f, x_2002);
    let x_2006 : bool = u_xlatb7.y;
    u_xlat8.y = select(0.0f, 1.0f, x_2006);
    let x_2010 : bool = u_xlatb7.z;
    u_xlat8.z = select(0.0f, 1.0f, x_2010);
    let x_2014 : bool = u_xlatb7.w;
    u_xlat8.w = select(0.0f, 1.0f, x_2014);
    let x_2018 : bool = u_xlatb7.x;
    u_xlat7.x = select(-0.0f, -1.0f, x_2018);
    let x_2022 : bool = u_xlatb7.y;
    u_xlat7.y = select(-0.0f, -1.0f, x_2022);
    let x_2026 : bool = u_xlatb7.z;
    u_xlat7.z = select(-0.0f, -1.0f, x_2026);
    let x_2029 : vec4<f32> = u_xlat7;
    let x_2031 : vec4<f32> = u_xlat8;
    let x_2033 : vec3<f32> = (vec3<f32>(x_2029.x, x_2029.y, x_2029.z) + vec3<f32>(x_2031.y, x_2031.z, x_2031.w));
    let x_2034 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2033.x, x_2033.y, x_2033.z, x_2034.w);
    let x_2036 : vec4<f32> = u_xlat7;
    let x_2038 : vec3<f32> = max(vec3<f32>(x_2036.x, x_2036.y, x_2036.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_2039 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2039.x, x_2038.x, x_2038.y, x_2038.z);
    let x_2041 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(x_2041, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_2043 : f32 = u_xlat62;
    u_xlat62 = (-(x_2043) + 4.0f);
    let x_2047 : f32 = u_xlat62;
    u_xlatu62 = u32(x_2047);
    let x_2050 : u32 = u_xlatu62;
    u_xlati62 = (bitcast<i32>(x_2050) << bitcast<u32>(2i));
    let x_2053 : vec4<f32> = u_xlat6;
    let x_2055 : i32 = u_xlati62;
    let x_2058 : i32 = u_xlati62;
    let x_2062 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2055 + 1i) / 4i)][((x_2058 + 1i) % 4i)];
    let x_2064 : vec3<f32> = (vec3<f32>(x_2053.y, x_2053.y, x_2053.y) * vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
    let x_2065 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2064.x, x_2064.y, x_2064.z, x_2065.w);
    let x_2067 : i32 = u_xlati62;
    let x_2069 : i32 = u_xlati62;
    let x_2072 : vec4<f32> = x_369.x_MainLightWorldToShadow[(x_2067 / 4i)][(x_2069 % 4i)];
    let x_2074 : vec4<f32> = u_xlat6;
    let x_2077 : vec4<f32> = u_xlat7;
    let x_2079 : vec3<f32> = ((vec3<f32>(x_2072.x, x_2072.y, x_2072.z) * vec3<f32>(x_2074.x, x_2074.x, x_2074.x)) + vec3<f32>(x_2077.x, x_2077.y, x_2077.z));
    let x_2080 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2079.x, x_2079.y, x_2080.z, x_2079.z);
    let x_2082 : i32 = u_xlati62;
    let x_2085 : i32 = u_xlati62;
    let x_2089 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2082 + 2i) / 4i)][((x_2085 + 2i) % 4i)];
    let x_2091 : vec4<f32> = u_xlat6;
    let x_2094 : vec4<f32> = u_xlat6;
    let x_2096 : vec3<f32> = ((vec3<f32>(x_2089.x, x_2089.y, x_2089.z) * vec3<f32>(x_2091.z, x_2091.z, x_2091.z)) + vec3<f32>(x_2094.x, x_2094.y, x_2094.w));
    let x_2097 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2097.w);
    let x_2099 : vec4<f32> = u_xlat6;
    let x_2101 : i32 = u_xlati62;
    let x_2104 : i32 = u_xlati62;
    let x_2108 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2101 + 3i) / 4i)][((x_2104 + 3i) % 4i)];
    let x_2110 : vec3<f32> = (vec3<f32>(x_2099.x, x_2099.y, x_2099.z) + vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
    let x_2111 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
    let x_2114 : vec4<f32> = u_xlat6;
    let x_2115 : vec2<f32> = vec2<f32>(x_2114.x, x_2114.y);
    let x_2117 : f32 = u_xlat6.z;
    txVec30 = vec3<f32>(x_2115.x, x_2115.y, x_2117);
    let x_2124 : vec3<f32> = txVec30;
    let x_2126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2124.xy, x_2124.z);
    u_xlat62 = x_2126;
    let x_2127 : f32 = u_xlat42;
    let x_2128 : f32 = u_xlat62;
    u_xlat42 = (x_2127 + x_2128);

    continuing {
      let x_2130 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2130 + bitcast<u32>(1i));
    }
  }
  let x_2132 : vec3<f32> = vs_TEXCOORD1;
  let x_2135 : vec3<f32> = (x_2132 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_2136 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
  let x_2138 : vec3<f32> = vs_TEXCOORD1;
  let x_2141 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
  let x_2144 : vec3<f32> = ((x_2138 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2141.x, x_2141.y, x_2141.z)));
  let x_2145 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
  let x_2147 : vec3<f32> = vs_TEXCOORD1;
  let x_2150 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
  let x_2153 : vec3<f32> = ((x_2147 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2150.x, x_2150.y, x_2150.z)));
  let x_2154 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
  let x_2156 : vec3<f32> = vs_TEXCOORD1;
  let x_2159 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
  let x_2162 : vec3<f32> = ((x_2156 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2159.x, x_2159.y, x_2159.z)));
  let x_2163 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
  let x_2165 : vec3<f32> = vs_TEXCOORD1;
  let x_2168 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
  let x_2171 : vec3<f32> = ((x_2165 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2168.x, x_2168.y, x_2168.z)));
  let x_2172 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2174 : vec4<f32> = u_xlat6;
  let x_2176 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2174.x, x_2174.y, x_2174.z), vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
  let x_2180 : vec4<f32> = u_xlat7;
  let x_2182 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_2180.x, x_2180.y, x_2180.z), vec3<f32>(x_2182.x, x_2182.y, x_2182.z));
  let x_2186 : vec4<f32> = u_xlat8;
  let x_2188 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_2186.x, x_2186.y, x_2186.z), vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
  let x_2192 : vec4<f32> = u_xlat9;
  let x_2194 : vec4<f32> = u_xlat9;
  u_xlat6.w = dot(vec3<f32>(x_2192.x, x_2192.y, x_2192.z), vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
  let x_2199 : vec4<f32> = u_xlat6;
  let x_2201 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_2199 < x_2201);
  let x_2204 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_2204);
  let x_2208 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_2208);
  let x_2212 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_2212);
  let x_2216 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_2216);
  let x_2220 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_2220);
  let x_2224 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_2224);
  let x_2228 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_2228);
  let x_2231 : vec4<f32> = u_xlat6;
  let x_2233 : vec4<f32> = u_xlat7;
  let x_2235 : vec3<f32> = (vec3<f32>(x_2231.x, x_2231.y, x_2231.z) + vec3<f32>(x_2233.y, x_2233.z, x_2233.w));
  let x_2236 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
  let x_2238 : vec4<f32> = u_xlat6;
  let x_2240 : vec3<f32> = max(vec3<f32>(x_2238.x, x_2238.y, x_2238.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2241 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2241.x, x_2240.x, x_2240.y, x_2240.z);
  let x_2243 : vec4<f32> = u_xlat7;
  u_xlat41.x = dot(x_2243, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_2247 : f32 = u_xlat41.x;
  u_xlat41.x = (-(x_2247) + 4.0f);
  let x_2253 : f32 = u_xlat41.x;
  u_xlatu41 = u32(x_2253);
  let x_2256 : u32 = u_xlatu41;
  u_xlati41 = (bitcast<i32>(x_2256) << bitcast<u32>(2i));
  let x_2261 : f32 = u_xlat5.y;
  let x_2262 : i32 = u_xlati41;
  let x_2265 : i32 = u_xlati41;
  let x_2269 : f32 = x_369.x_MainLightWorldToShadow[((x_2262 + 1i) / 4i)][((x_2265 + 1i) % 4i)].z;
  u_xlat60 = (x_2261 * x_2269);
  let x_2271 : i32 = u_xlati41;
  let x_2273 : i32 = u_xlati41;
  let x_2276 : f32 = x_369.x_MainLightWorldToShadow[(x_2271 / 4i)][(x_2273 % 4i)].z;
  let x_2278 : f32 = u_xlat5.x;
  let x_2280 : f32 = u_xlat60;
  u_xlat60 = ((x_2276 * x_2278) + x_2280);
  let x_2282 : i32 = u_xlati41;
  let x_2285 : i32 = u_xlati41;
  let x_2289 : f32 = x_369.x_MainLightWorldToShadow[((x_2282 + 2i) / 4i)][((x_2285 + 2i) % 4i)].z;
  let x_2291 : f32 = u_xlat5.z;
  let x_2293 : f32 = u_xlat60;
  u_xlat60 = ((x_2289 * x_2291) + x_2293);
  let x_2295 : f32 = u_xlat60;
  let x_2296 : i32 = u_xlati41;
  let x_2299 : i32 = u_xlati41;
  let x_2303 : f32 = x_369.x_MainLightWorldToShadow[((x_2296 + 3i) / 4i)][((x_2299 + 3i) % 4i)].z;
  u_xlat41.x = (x_2295 + x_2303);
  let x_2307 : f32 = u_xlat41.x;
  u_xlatb60 = (0.0f >= x_2307);
  let x_2310 : f32 = u_xlat41.x;
  u_xlatb41 = (x_2310 >= 1.0f);
  let x_2312 : bool = u_xlatb41;
  let x_2313 : bool = u_xlatb60;
  u_xlatb41 = (x_2312 | x_2313);
  let x_2315 : f32 = u_xlat42;
  u_xlat60 = (x_2315 * 0.25f);
  let x_2317 : bool = u_xlatb41;
  let x_2318 : f32 = u_xlat60;
  u_xlat41.x = select(x_2318, 1.0f, x_2317);
  let x_2327 : vec4<f32> = x_2324.unity_SHAr;
  let x_2328 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_2327, x_2328);
  let x_2333 : vec4<f32> = x_2324.unity_SHAg;
  let x_2334 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_2333, x_2334);
  let x_2339 : vec4<f32> = x_2324.unity_SHAb;
  let x_2340 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_2339, x_2340);
  let x_2343 : vec4<f32> = u_xlat2;
  let x_2345 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_2343.y, x_2343.z, x_2343.z, x_2343.x) * vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2345.z));
  let x_2350 : vec4<f32> = x_2324.unity_SHBr;
  let x_2351 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_2350, x_2351);
  let x_2356 : vec4<f32> = x_2324.unity_SHBg;
  let x_2357 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_2356, x_2357);
  let x_2362 : vec4<f32> = x_2324.unity_SHBb;
  let x_2363 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_2362, x_2363);
  let x_2368 : f32 = u_xlat2.y;
  let x_2370 : f32 = u_xlat2.y;
  u_xlat59 = (x_2368 * x_2370);
  let x_2373 : f32 = u_xlat2.x;
  let x_2375 : f32 = u_xlat2.x;
  let x_2377 : f32 = u_xlat59;
  u_xlat59 = ((x_2373 * x_2375) + -(x_2377));
  let x_2382 : vec4<f32> = x_2324.unity_SHC;
  let x_2384 : f32 = u_xlat59;
  let x_2387 : vec4<f32> = u_xlat7;
  let x_2389 : vec3<f32> = ((vec3<f32>(x_2382.x, x_2382.y, x_2382.z) * vec3<f32>(x_2384, x_2384, x_2384)) + vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
  let x_2390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2389.x, x_2389.y, x_2389.z, x_2390.w);
  let x_2392 : vec4<f32> = u_xlat5;
  let x_2394 : vec4<f32> = u_xlat6;
  let x_2396 : vec3<f32> = (vec3<f32>(x_2392.x, x_2392.y, x_2392.z) + vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2397 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2397.w);
  let x_2399 : vec4<f32> = u_xlat5;
  let x_2401 : vec3<f32> = max(vec3<f32>(x_2399.x, x_2399.y, x_2399.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2402 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
  let x_2404 : vec3<f32> = vs_TEXCOORD2;
  let x_2406 : vec4<f32> = x_39.x_MainLightPosition;
  u_xlat59 = dot(x_2404, -(vec3<f32>(x_2406.x, x_2406.y, x_2406.z)));
  let x_2410 : f32 = u_xlat59;
  let x_2412 : f32 = vs_TEXCOORD5.z;
  u_xlat59 = (x_2410 * x_2412);
  let x_2414 : f32 = u_xlat59;
  let x_2415 : f32 = u_xlat59;
  u_xlat60 = (x_2414 * x_2415);
  let x_2417 : f32 = u_xlat59;
  let x_2418 : f32 = u_xlat60;
  u_xlat59 = (x_2417 * x_2418);
  let x_2420 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2420, 0.0f, 1.0f);
  let x_2422 : f32 = u_xlat59;
  u_xlat59 = (x_2422 * 5.0f);
  let x_2425 : f32 = u_xlat59;
  let x_2428 : vec4<f32> = x_39.x_MainLightColor;
  let x_2430 : vec3<f32> = (vec3<f32>(x_2425, x_2425, x_2425) * vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
  let x_2431 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
  let x_2434 : vec4<f32> = x_39.x_MainLightPosition;
  let x_2437 : vec4<f32> = x_39.x_MainLightColor;
  let x_2440 : vec4<f32> = u_xlat6;
  let x_2442 : vec3<f32> = ((vec3<f32>(x_2434.y, x_2434.y, x_2434.y) * vec3<f32>(x_2437.x, x_2437.y, x_2437.z)) + vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
  let x_2443 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
  let x_2445 : vec4<f32> = u_xlat6;
  let x_2447 : vec2<f32> = u_xlat41;
  let x_2450 : vec4<f32> = u_xlat5;
  let x_2452 : vec3<f32> = ((vec3<f32>(x_2445.x, x_2445.y, x_2445.z) * vec3<f32>(x_2447.x, x_2447.x, x_2447.x)) + vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2453 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
  let x_2460 : vec4<f32> = vs_TEXCOORD0;
  let x_2463 : f32 = x_39.x_GlobalMipBias.x;
  let x_2464 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_2460.z, x_2460.w), x_2463);
  let x_2465 : vec3<f32> = vec3<f32>(x_2464.x, x_2464.y, x_2464.z);
  let x_2466 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
  let x_2469 : f32 = u_xlat4.x;
  u_xlat4.x = x_2469;
  let x_2472 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_2472, 0.0f, 1.0f);
  let x_2476 : f32 = vs_TEXCOORD5.z;
  u_xlat59 = (x_2476 + -0.375f);
  let x_2479 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2479, 0.0f, 1.0f);
  let x_2481 : f32 = u_xlat38;
  u_xlat60 = ((-(x_2481) * 4.0f) + 1.0f);
  let x_2485 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2485, 0.0f, 1.0f);
  let x_2487 : f32 = u_xlat57;
  let x_2488 : f32 = u_xlat38;
  u_xlat57 = min(x_2487, x_2488);
  let x_2490 : f32 = u_xlat57;
  u_xlat57 = ((-(x_2490) * 0.5f) + 0.75f);
  let x_2495 : f32 = u_xlat60;
  let x_2497 : f32 = u_xlat57;
  u_xlat57 = ((x_2495 * 0.5f) + x_2497);
  let x_2499 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2499, 0.0f, 1.0f);
  let x_2502 : f32 = u_xlat4.x;
  let x_2503 : f32 = u_xlat57;
  u_xlat57 = (x_2502 * x_2503);
  let x_2505 : f32 = u_xlat57;
  let x_2506 : f32 = u_xlat59;
  u_xlat57 = max(x_2505, x_2506);
  let x_2509 : f32 = u_xlat1.x;
  let x_2511 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2509 + x_2511);
  let x_2514 : f32 = u_xlat57;
  let x_2516 : f32 = u_xlat1.x;
  u_xlat8.x = max(x_2514, x_2516);
  u_xlat8.y = 0.66000002622604370117f;
  let x_2526 : vec4<f32> = u_xlat8;
  let x_2529 : f32 = x_39.x_GlobalMipBias.x;
  let x_2530 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2526.x, x_2526.y), x_2529);
  let x_2531 : vec3<f32> = vec3<f32>(x_2530.x, x_2530.y, x_2530.z);
  let x_2532 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2531.x, x_2532.y, x_2531.y, x_2531.z);
  let x_2534 : vec4<f32> = u_xlat4;
  let x_2536 : vec4<f32> = u_xlat7;
  let x_2538 : vec3<f32> = (vec3<f32>(x_2534.x, x_2534.z, x_2534.w) * vec3<f32>(x_2536.x, x_2536.y, x_2536.z));
  let x_2539 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2538.x, x_2539.y, x_2538.y, x_2538.z);
  let x_2541 : vec4<f32> = u_xlat4;
  let x_2543 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(vec3<f32>(x_2541.x, x_2541.z, x_2541.w), vec3<f32>(x_2543.x, x_2543.z, x_2543.w));
  let x_2546 : f32 = u_xlat57;
  u_xlat57 = sqrt(x_2546);
  let x_2548 : f32 = u_xlat57;
  u_xlat57 = ((x_2548 * 1.5f) + -0.10000000149011611938f);
  let x_2552 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2552, 0.0f, 1.0f);
  let x_2554 : vec3<f32> = u_xlat22;
  let x_2557 : vec4<f32> = x_39.x_MainLightColor;
  let x_2560 : vec4<f32> = u_xlat5;
  let x_2562 : vec3<f32> = ((vec3<f32>(x_2554.x, x_2554.x, x_2554.x) * vec3<f32>(x_2557.x, x_2557.y, x_2557.z)) + vec3<f32>(x_2560.x, x_2560.y, x_2560.z));
  let x_2563 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2562.x, x_2563.y, x_2562.y, x_2562.z);
  let x_2565 : vec3<f32> = vs_TEXCOORD2;
  let x_2567 : vec4<f32> = x_39.x_MainLightPosition;
  let x_2569 : vec3<f32> = (x_2565 + vec3<f32>(x_2567.x, x_2567.y, x_2567.z));
  let x_2570 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
  let x_2572 : vec4<f32> = u_xlat5;
  let x_2574 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_2572.x, x_2572.y, x_2572.z), vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
  let x_2579 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2579, 1.17549435e-38f);
  let x_2584 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_2584);
  let x_2587 : vec3<f32> = u_xlat1;
  let x_2589 : vec4<f32> = u_xlat5;
  let x_2591 : vec3<f32> = (vec3<f32>(x_2587.x, x_2587.x, x_2587.x) * vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
  let x_2592 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
  let x_2594 : vec4<f32> = u_xlat2;
  let x_2596 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_2594.x, x_2594.y, x_2594.z), vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
  let x_2601 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2601, 0.0f, 1.0f);
  let x_2605 : vec4<f32> = x_39.x_MainLightPosition;
  let x_2607 : vec4<f32> = u_xlat5;
  u_xlat59 = dot(vec3<f32>(x_2605.x, x_2605.y, x_2605.z), vec3<f32>(x_2607.x, x_2607.y, x_2607.z));
  let x_2610 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2610, 0.0f, 1.0f);
  let x_2613 : f32 = u_xlat1.x;
  let x_2615 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2613 * x_2615);
  let x_2619 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2619 * -0.99993896484375f) + 1.00001001358032226562f);
  let x_2625 : f32 = u_xlat59;
  let x_2626 : f32 = u_xlat59;
  u_xlat59 = (x_2625 * x_2626);
  let x_2629 : f32 = u_xlat1.x;
  let x_2631 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2629 * x_2631);
  let x_2634 : f32 = u_xlat59;
  u_xlat59 = max(x_2634, 0.10000000149011611938f);
  let x_2637 : f32 = u_xlat1.x;
  let x_2638 : f32 = u_xlat59;
  u_xlat1.x = (x_2637 * x_2638);
  let x_2642 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2642 * 2.03125f);
  let x_2648 : f32 = u_xlat1.x;
  u_xlat1.x = (0.00006103515625f / x_2648);
  let x_2652 : f32 = u_xlat41.x;
  let x_2654 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2652 * x_2654);
  let x_2658 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2658 * 0.03999999910593032837f);
  let x_2662 : vec3<f32> = u_xlat1;
  let x_2665 : vec4<f32> = x_39.x_MainLightColor;
  u_xlat22 = (vec3<f32>(x_2662.x, x_2662.x, x_2662.x) * vec3<f32>(x_2665.x, x_2665.y, x_2665.z));
  let x_2669 : f32 = x_39.x_AdditionalLightsCount.x;
  let x_2671 : f32 = x_2324.unity_LightData.y;
  u_xlat1.x = min(x_2669, x_2671);
  let x_2676 : f32 = u_xlat1.x;
  u_xlatu1 = bitcast<u32>(i32(x_2676));
  let x_2679 : vec4<f32> = u_xlat6;
  let x_2680 : vec3<f32> = vec3<f32>(x_2679.x, x_2679.y, x_2679.z);
  let x_2681 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
  let x_2683 : vec3<f32> = u_xlat22;
  let x_2684 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_2692 : u32 = u_xlatu_loop_2;
    let x_2693 : u32 = u_xlatu1;
    if ((x_2692 < x_2693)) {
    } else {
      break;
    }
    let x_2695 : u32 = u_xlatu_loop_2;
    u_xlatu62 = (x_2695 >> 2u);
    let x_2698 : u32 = u_xlatu_loop_2;
    u_xlati63 = bitcast<i32>((x_2698 & 3u));
    let x_2701 : u32 = u_xlatu62;
    let x_2704 : vec4<f32> = x_2324.unity_LightIndices[bitcast<i32>(x_2701)];
    let x_2713 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2718 : vec4<u32> = indexable[x_2713];
    u_xlat62 = dot(x_2704, bitcast<vec4<f32>>(x_2718));
    let x_2721 : f32 = u_xlat62;
    u_xlati62 = i32(x_2721);
    let x_2723 : vec3<f32> = vs_TEXCOORD1;
    let x_2734 : i32 = u_xlati62;
    let x_2736 : vec4<f32> = x_2733.x_AdditionalLightsPosition[x_2734];
    let x_2739 : i32 = u_xlati62;
    let x_2741 : vec4<f32> = x_2733.x_AdditionalLightsPosition[x_2739];
    let x_2743 : vec3<f32> = ((-(x_2723) * vec3<f32>(x_2736.w, x_2736.w, x_2736.w)) + vec3<f32>(x_2741.x, x_2741.y, x_2741.z));
    let x_2744 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
    let x_2747 : vec4<f32> = u_xlat8;
    let x_2749 : vec4<f32> = u_xlat8;
    u_xlat63 = dot(vec3<f32>(x_2747.x, x_2747.y, x_2747.z), vec3<f32>(x_2749.x, x_2749.y, x_2749.z));
    let x_2752 : f32 = u_xlat63;
    u_xlat63 = max(x_2752, 0.00006103515625f);
    let x_2755 : f32 = u_xlat63;
    u_xlat64 = inverseSqrt(x_2755);
    let x_2757 : f32 = u_xlat64;
    let x_2759 : vec4<f32> = u_xlat8;
    let x_2761 : vec3<f32> = (vec3<f32>(x_2757, x_2757, x_2757) * vec3<f32>(x_2759.x, x_2759.y, x_2759.z));
    let x_2762 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2761.x, x_2761.y, x_2761.z, x_2762.w);
    let x_2765 : f32 = u_xlat63;
    u_xlat65 = (1.0f / x_2765);
    let x_2767 : f32 = u_xlat63;
    let x_2768 : i32 = u_xlati62;
    let x_2770 : f32 = x_2733.x_AdditionalLightsAttenuation[x_2768].x;
    u_xlat63 = (x_2767 * x_2770);
    let x_2772 : f32 = u_xlat63;
    let x_2774 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2772) * x_2774) + 1.0f);
    let x_2777 : f32 = u_xlat63;
    u_xlat63 = max(x_2777, 0.0f);
    let x_2779 : f32 = u_xlat63;
    let x_2780 : f32 = u_xlat63;
    u_xlat63 = (x_2779 * x_2780);
    let x_2782 : f32 = u_xlat63;
    let x_2783 : f32 = u_xlat65;
    u_xlat63 = (x_2782 * x_2783);
    let x_2785 : i32 = u_xlati62;
    let x_2787 : vec4<f32> = x_2733.x_AdditionalLightsSpotDir[x_2785];
    let x_2789 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2787.x, x_2787.y, x_2787.z), vec3<f32>(x_2789.x, x_2789.y, x_2789.z));
    let x_2792 : f32 = u_xlat65;
    let x_2793 : i32 = u_xlati62;
    let x_2795 : f32 = x_2733.x_AdditionalLightsAttenuation[x_2793].z;
    let x_2797 : i32 = u_xlati62;
    let x_2799 : f32 = x_2733.x_AdditionalLightsAttenuation[x_2797].w;
    u_xlat65 = ((x_2792 * x_2795) + x_2799);
    let x_2801 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2801, 0.0f, 1.0f);
    let x_2803 : f32 = u_xlat65;
    let x_2804 : f32 = u_xlat65;
    u_xlat65 = (x_2803 * x_2804);
    let x_2806 : f32 = u_xlat63;
    let x_2807 : f32 = u_xlat65;
    u_xlat63 = (x_2806 * x_2807);
    let x_2809 : vec4<f32> = u_xlat2;
    let x_2811 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2809.x, x_2809.y, x_2809.z), vec3<f32>(x_2811.x, x_2811.y, x_2811.z));
    let x_2814 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2814, 0.0f, 1.0f);
    let x_2816 : f32 = u_xlat63;
    let x_2817 : f32 = u_xlat65;
    u_xlat65 = (x_2816 * x_2817);
    let x_2819 : f32 = u_xlat65;
    let x_2821 : i32 = u_xlati62;
    let x_2823 : vec4<f32> = x_2733.x_AdditionalLightsColor[x_2821];
    let x_2825 : vec3<f32> = (vec3<f32>(x_2819, x_2819, x_2819) * vec3<f32>(x_2823.x, x_2823.y, x_2823.z));
    let x_2826 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2825.x, x_2825.y, x_2825.z, x_2826.w);
    let x_2828 : vec4<f32> = u_xlat8;
    let x_2830 : f32 = u_xlat64;
    let x_2833 : vec3<f32> = vs_TEXCOORD2;
    let x_2834 : vec3<f32> = ((vec3<f32>(x_2828.x, x_2828.y, x_2828.z) * vec3<f32>(x_2830, x_2830, x_2830)) + x_2833);
    let x_2835 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2834.x, x_2834.y, x_2834.z, x_2835.w);
    let x_2837 : vec4<f32> = u_xlat8;
    let x_2839 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2837.x, x_2837.y, x_2837.z), vec3<f32>(x_2839.x, x_2839.y, x_2839.z));
    let x_2842 : f32 = u_xlat64;
    u_xlat64 = max(x_2842, 1.17549435e-38f);
    let x_2844 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_2844);
    let x_2846 : f32 = u_xlat64;
    let x_2848 : vec4<f32> = u_xlat8;
    let x_2850 : vec3<f32> = (vec3<f32>(x_2846, x_2846, x_2846) * vec3<f32>(x_2848.x, x_2848.y, x_2848.z));
    let x_2851 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2850.x, x_2850.y, x_2850.z, x_2851.w);
    let x_2853 : vec4<f32> = u_xlat2;
    let x_2855 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2853.x, x_2853.y, x_2853.z), vec3<f32>(x_2855.x, x_2855.y, x_2855.z));
    let x_2858 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2858, 0.0f, 1.0f);
    let x_2860 : vec4<f32> = u_xlat9;
    let x_2862 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_2860.x, x_2860.y, x_2860.z), vec3<f32>(x_2862.x, x_2862.y, x_2862.z));
    let x_2867 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2867, 0.0f, 1.0f);
    let x_2870 : f32 = u_xlat64;
    let x_2871 : f32 = u_xlat64;
    u_xlat64 = (x_2870 * x_2871);
    let x_2873 : f32 = u_xlat64;
    u_xlat64 = ((x_2873 * -0.99993896484375f) + 1.00001001358032226562f);
    let x_2877 : f32 = u_xlat8.x;
    let x_2879 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2877 * x_2879);
    let x_2882 : f32 = u_xlat64;
    let x_2883 : f32 = u_xlat64;
    u_xlat64 = (x_2882 * x_2883);
    let x_2886 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2886, 0.10000000149011611938f);
    let x_2889 : f32 = u_xlat64;
    let x_2891 : f32 = u_xlat8.x;
    u_xlat64 = (x_2889 * x_2891);
    let x_2893 : f32 = u_xlat64;
    u_xlat64 = (x_2893 * 2.03125f);
    let x_2895 : f32 = u_xlat64;
    u_xlat64 = (0.00006103515625f / x_2895);
    let x_2897 : f32 = u_xlat64;
    u_xlat64 = (x_2897 * 0.03999999910593032837f);
    let x_2899 : f32 = u_xlat64;
    let x_2901 : vec4<f32> = u_xlat10;
    let x_2904 : vec4<f32> = u_xlat7;
    let x_2906 : vec3<f32> = ((vec3<f32>(x_2899, x_2899, x_2899) * vec3<f32>(x_2901.x, x_2901.y, x_2901.z)) + vec3<f32>(x_2904.x, x_2904.y, x_2904.z));
    let x_2907 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2906.x, x_2906.y, x_2906.z, x_2907.w);
    let x_2909 : f32 = u_xlat63;
    let x_2911 : i32 = u_xlati62;
    let x_2913 : vec4<f32> = x_2733.x_AdditionalLightsColor[x_2911];
    let x_2916 : vec4<f32> = u_xlat5;
    let x_2918 : vec3<f32> = ((vec3<f32>(x_2909, x_2909, x_2909) * vec3<f32>(x_2913.x, x_2913.y, x_2913.z)) + vec3<f32>(x_2916.x, x_2916.y, x_2916.z));
    let x_2919 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2918.x, x_2918.y, x_2918.z, x_2919.w);

    continuing {
      let x_2921 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_2921 + bitcast<u32>(1i));
    }
  }
  let x_2923 : f32 = u_xlat58;
  let x_2924 : f32 = u_xlat38;
  u_xlat6.x = (x_2923 * x_2924);
  u_xlat6.y = 0.375f;
  u_xlat6.z = 0.0f;
  let x_2933 : vec4<f32> = u_xlat6;
  let x_2936 : f32 = x_39.x_GlobalMipBias.x;
  let x_2937 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2933.x, x_2933.y), x_2936);
  u_xlat22 = vec3<f32>(x_2937.x, x_2937.y, x_2937.z);
  let x_2939 : vec4<f32> = u_xlat2;
  let x_2945 : vec3<f32> = u_xlat0;
  let x_2947 : vec2<f32> = ((vec2<f32>(x_2939.z, x_2939.x) * vec2<f32>(0.01999999955296516418f, 0.15000000596046447754f)) + vec2<f32>(x_2945.x, x_2945.y));
  let x_2948 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2947.x, x_2947.y, x_2948.z);
  let x_2954 : vec3<f32> = u_xlat0;
  let x_2956 : vec4<f32> = textureSampleLevel(x_PlanarReflectionTexture, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_2954.x, x_2954.y), 0.0f);
  u_xlat0 = vec3<f32>(x_2956.x, x_2956.y, x_2956.z);
  let x_2963 : vec2<f32> = u_xlat20;
  let x_2965 : f32 = u_xlat4.y;
  let x_2966 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_2963, x_2965);
  u_xlat1 = vec3<f32>(x_2966.x, x_2966.y, x_2966.z);
  let x_2971 : vec4<f32> = u_xlat6;
  let x_2974 : f32 = x_39.x_GlobalMipBias.x;
  let x_2975 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2971.x, x_2971.z), x_2974);
  let x_2976 : vec3<f32> = vec3<f32>(x_2975.x, x_2975.y, x_2975.z);
  let x_2977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2977.w);
  let x_2979 : vec3<f32> = u_xlat1;
  let x_2980 : vec4<f32> = u_xlat2;
  let x_2982 : vec3<f32> = (x_2979 * vec3<f32>(x_2980.x, x_2980.y, x_2980.z));
  let x_2983 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2982.x, x_2982.y, x_2982.z, x_2983.w);
  let x_2985 : vec3<f32> = u_xlat1;
  let x_2987 : vec4<f32> = u_xlat2;
  let x_2990 : vec3<f32> = u_xlat0;
  u_xlat0 = ((-(x_2985) * vec3<f32>(x_2987.x, x_2987.y, x_2987.z)) + x_2990);
  let x_2992 : f32 = u_xlat3;
  let x_2994 : vec3<f32> = u_xlat0;
  let x_2996 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2992, x_2992, x_2992) * x_2994) + vec3<f32>(x_2996.x, x_2996.y, x_2996.z));
  let x_2999 : vec4<f32> = u_xlat5;
  let x_3001 : vec3<f32> = u_xlat22;
  let x_3003 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2999.x, x_2999.y, x_2999.z) * x_3001) + x_3003);
  let x_3005 : vec4<f32> = u_xlat7;
  let x_3007 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3005.x, x_3005.y, x_3005.z) + x_3007);
  let x_3009 : f32 = u_xlat57;
  let x_3011 : vec4<f32> = u_xlat4;
  let x_3014 : vec3<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_3009, x_3009, x_3009) * vec3<f32>(x_3011.x, x_3011.z, x_3011.w)) + -(x_3014));
  let x_3017 : f32 = u_xlat57;
  let x_3019 : vec3<f32> = u_xlat1;
  let x_3021 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3017, x_3017, x_3017) * x_3019) + x_3021);
  let x_3026 : f32 = vs_TEXCOORD4.x;
  let x_3028 : f32 = vs_TEXCOORD4.x;
  u_xlat57 = (x_3026 * -(x_3028));
  let x_3031 : f32 = u_xlat57;
  u_xlat57 = exp2(x_3031);
  let x_3033 : vec3<f32> = u_xlat0;
  let x_3035 : vec4<f32> = x_39.unity_FogColor;
  u_xlat0 = (x_3033 + -(vec3<f32>(x_3035.x, x_3035.y, x_3035.z)));
  let x_3041 : f32 = u_xlat57;
  let x_3043 : vec3<f32> = u_xlat0;
  let x_3046 : vec4<f32> = x_39.unity_FogColor;
  let x_3048 : vec3<f32> = ((vec3<f32>(x_3041, x_3041, x_3041) * x_3043) + vec3<f32>(x_3046.x, x_3046.y, x_3046.z));
  let x_3049 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3048.x, x_3048.y, x_3048.z, x_3049.w);
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


