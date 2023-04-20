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

@group(1) @binding(2) var<uniform> x_2353 : UnityPerDraw;

var<private> u_xlat59 : f32;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(14) var sampler_AbsorptionScatteringRamp : sampler;

var<private> u_xlatu1 : u32;

var<private> u_xlatu62 : u32;

var<private> u_xlati62 : i32;

@group(1) @binding(1) var<uniform> x_2763 : AdditionalLights;

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
  var x_1835 : f32;
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
        u_xlat42.x = x_940;
        let x_943 : vec4<f32> = u_xlat9;
        let x_944 : vec2<f32> = vec2<f32>(x_943.z, x_943.w);
        let x_946 : f32 = u_xlat22.z;
        txVec5 = vec3<f32>(x_944.x, x_944.y, x_946);
        let x_954 : vec3<f32> = txVec5;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
        u_xlat61 = x_956;
        let x_957 : f32 = u_xlat61;
        let x_959 : f32 = u_xlat12.y;
        u_xlat61 = (x_957 * x_959);
        let x_962 : f32 = u_xlat12.x;
        let x_964 : f32 = u_xlat42.x;
        let x_966 : f32 = u_xlat61;
        u_xlat42.x = ((x_962 * x_964) + x_966);
        let x_970 : vec4<f32> = u_xlat10;
        let x_971 : vec2<f32> = vec2<f32>(x_970.x, x_970.y);
        let x_973 : f32 = u_xlat22.z;
        txVec6 = vec3<f32>(x_971.x, x_971.y, x_973);
        let x_980 : vec3<f32> = txVec6;
        let x_982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_980.xy, x_980.z);
        u_xlat61 = x_982;
        let x_984 : f32 = u_xlat12.z;
        let x_985 : f32 = u_xlat61;
        let x_988 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_984 * x_985) + x_988);
        let x_992 : vec4<f32> = u_xlat8;
        let x_993 : vec2<f32> = vec2<f32>(x_992.x, x_992.y);
        let x_995 : f32 = u_xlat22.z;
        txVec7 = vec3<f32>(x_993.x, x_993.y, x_995);
        let x_1002 : vec3<f32> = txVec7;
        let x_1004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1002.xy, x_1002.z);
        u_xlat61 = x_1004;
        let x_1006 : f32 = u_xlat12.w;
        let x_1007 : f32 = u_xlat61;
        let x_1010 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1006 * x_1007) + x_1010);
        let x_1014 : vec4<f32> = u_xlat11;
        let x_1015 : vec2<f32> = vec2<f32>(x_1014.x, x_1014.y);
        let x_1017 : f32 = u_xlat22.z;
        txVec8 = vec3<f32>(x_1015.x, x_1015.y, x_1017);
        let x_1024 : vec3<f32> = txVec8;
        let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1024.xy, x_1024.z);
        u_xlat61 = x_1026;
        let x_1028 : f32 = u_xlat13.x;
        let x_1029 : f32 = u_xlat61;
        let x_1032 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1028 * x_1029) + x_1032);
        let x_1036 : vec4<f32> = u_xlat11;
        let x_1037 : vec2<f32> = vec2<f32>(x_1036.z, x_1036.w);
        let x_1039 : f32 = u_xlat22.z;
        txVec9 = vec3<f32>(x_1037.x, x_1037.y, x_1039);
        let x_1046 : vec3<f32> = txVec9;
        let x_1048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1046.xy, x_1046.z);
        u_xlat61 = x_1048;
        let x_1050 : f32 = u_xlat13.y;
        let x_1051 : f32 = u_xlat61;
        let x_1054 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1050 * x_1051) + x_1054);
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1059 : vec2<f32> = vec2<f32>(x_1058.z, x_1058.w);
        let x_1061 : f32 = u_xlat22.z;
        txVec10 = vec3<f32>(x_1059.x, x_1059.y, x_1061);
        let x_1068 : vec3<f32> = txVec10;
        let x_1070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1068.xy, x_1068.z);
        u_xlat61 = x_1070;
        let x_1072 : f32 = u_xlat13.z;
        let x_1073 : f32 = u_xlat61;
        let x_1076 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1072 * x_1073) + x_1076);
        let x_1080 : vec4<f32> = u_xlat7;
        let x_1081 : vec2<f32> = vec2<f32>(x_1080.x, x_1080.y);
        let x_1083 : f32 = u_xlat22.z;
        txVec11 = vec3<f32>(x_1081.x, x_1081.y, x_1083);
        let x_1090 : vec3<f32> = txVec11;
        let x_1092 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1090.xy, x_1090.z);
        u_xlat61 = x_1092;
        let x_1094 : f32 = u_xlat13.w;
        let x_1095 : f32 = u_xlat61;
        let x_1098 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1094 * x_1095) + x_1098);
        let x_1102 : vec4<f32> = u_xlat7;
        let x_1103 : vec2<f32> = vec2<f32>(x_1102.z, x_1102.w);
        let x_1105 : f32 = u_xlat22.z;
        txVec12 = vec3<f32>(x_1103.x, x_1103.y, x_1105);
        let x_1112 : vec3<f32> = txVec12;
        let x_1114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1112.xy, x_1112.z);
        u_xlat61 = x_1114;
        let x_1116 : f32 = u_xlat23.x;
        let x_1117 : f32 = u_xlat61;
        let x_1120 : f32 = u_xlat42.x;
        u_xlat4.x = ((x_1116 * x_1117) + x_1120);
      } else {
        let x_1124 : vec3<f32> = u_xlat22;
        let x_1127 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(x_1127.z, x_1127.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1131 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_1131);
        let x_1133 : vec3<f32> = u_xlat22;
        let x_1136 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1139 : vec2<f32> = u_xlat23;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1136.z, x_1136.w)) + -(x_1139));
        let x_1142 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1144.x, x_1144.x, x_1144.y, x_1144.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1147 : vec4<f32> = u_xlat6;
        let x_1149 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1147.x, x_1147.x, x_1147.z, x_1147.z) * vec4<f32>(x_1149.x, x_1149.x, x_1149.z, x_1149.z));
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1156 : vec2<f32> = (vec2<f32>(x_1152.y, x_1152.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1157.x, x_1156.x, x_1157.z, x_1156.y);
        let x_1159 : vec4<f32> = u_xlat7;
        let x_1162 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1159.x, x_1159.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1162.x, x_1162.y)));
        let x_1166 : vec4<f32> = u_xlat5;
        let x_1169 : vec2<f32> = (-(vec2<f32>(x_1166.x, x_1166.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1170 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1169.x, x_1170.y, x_1169.y, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat5;
        let x_1174 : vec2<f32> = min(vec2<f32>(x_1172.x, x_1172.y), vec2<f32>(0.0f, 0.0f));
        let x_1175 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
        let x_1177 : vec4<f32> = u_xlat7;
        let x_1180 : vec4<f32> = u_xlat7;
        let x_1183 : vec4<f32> = u_xlat6;
        let x_1185 : vec2<f32> = ((-(vec2<f32>(x_1177.x, x_1177.y)) * vec2<f32>(x_1180.x, x_1180.y)) + vec2<f32>(x_1183.x, x_1183.z));
        let x_1186 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1185.x, x_1186.y, x_1185.y, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat5;
        let x_1190 : vec2<f32> = max(vec2<f32>(x_1188.x, x_1188.y), vec2<f32>(0.0f, 0.0f));
        let x_1191 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
        let x_1193 : vec4<f32> = u_xlat7;
        let x_1196 : vec4<f32> = u_xlat7;
        let x_1199 : vec4<f32> = u_xlat6;
        let x_1201 : vec2<f32> = ((-(vec2<f32>(x_1193.x, x_1193.y)) * vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(x_1199.y, x_1199.w));
        let x_1202 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1202.x, x_1201.x, x_1202.z, x_1201.y);
        let x_1204 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1204 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1208 : f32 = u_xlat6.y;
        u_xlat7.z = (x_1208 * 0.08163200318813323975f);
        let x_1212 : vec2<f32> = u_xlat43;
        let x_1215 : vec2<f32> = (vec2<f32>(x_1212.y, x_1212.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1216 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_1218.x, x_1218.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1222 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1222 * 0.08163200318813323975f);
        let x_1226 : f32 = u_xlat9.y;
        u_xlat7.x = x_1226;
        let x_1228 : vec4<f32> = u_xlat5;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1228.x, x_1228.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1236.x, x_1235.x, x_1236.z, x_1235.y);
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1242 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1243 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1242.x, x_1243.y, x_1242.y, x_1243.w);
        let x_1246 : f32 = u_xlat43.x;
        u_xlat6.y = x_1246;
        let x_1249 : f32 = u_xlat8.y;
        u_xlat6.w = x_1249;
        let x_1251 : vec4<f32> = u_xlat6;
        let x_1252 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1251 + x_1252);
        let x_1254 : vec4<f32> = u_xlat5;
        let x_1257 : vec2<f32> = ((vec2<f32>(x_1254.y, x_1254.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1258 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1258.x, x_1257.x, x_1258.z, x_1257.y);
        let x_1260 : vec4<f32> = u_xlat5;
        let x_1263 : vec2<f32> = ((vec2<f32>(x_1260.y, x_1260.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1264 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1263.x, x_1264.y, x_1263.y, x_1264.w);
        let x_1267 : f32 = u_xlat43.y;
        u_xlat8.y = x_1267;
        let x_1269 : vec4<f32> = u_xlat8;
        let x_1270 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1269 + x_1270);
        let x_1272 : vec4<f32> = u_xlat6;
        let x_1273 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1272 / x_1273);
        let x_1275 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1275 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1281 : vec4<f32> = u_xlat8;
        let x_1282 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1281 / x_1282);
        let x_1284 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1284 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1286 : vec4<f32> = u_xlat6;
        let x_1289 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1286.w, x_1286.x, x_1286.y, x_1286.z) * vec4<f32>(x_1289.x, x_1289.x, x_1289.x, x_1289.x));
        let x_1292 : vec4<f32> = u_xlat8;
        let x_1295 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1292.x, x_1292.w, x_1292.y, x_1292.z) * vec4<f32>(x_1295.y, x_1295.y, x_1295.y, x_1295.y));
        let x_1298 : vec4<f32> = u_xlat6;
        let x_1299 : vec3<f32> = vec3<f32>(x_1298.y, x_1298.z, x_1298.w);
        let x_1300 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1299.x, x_1300.y, x_1299.y, x_1299.z);
        let x_1303 : f32 = u_xlat8.x;
        u_xlat9.y = x_1303;
        let x_1305 : vec2<f32> = u_xlat23;
        let x_1308 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y) * vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y)) + vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1311.y));
        let x_1314 : vec2<f32> = u_xlat23;
        let x_1316 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat9;
        let x_1321 : vec2<f32> = ((x_1314 * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.w, x_1319.y));
        let x_1322 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1322.w);
        let x_1325 : f32 = u_xlat9.y;
        u_xlat6.y = x_1325;
        let x_1328 : f32 = u_xlat8.z;
        u_xlat9.y = x_1328;
        let x_1330 : vec2<f32> = u_xlat23;
        let x_1333 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.y) * vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y)) + vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1336.y));
        let x_1340 : vec2<f32> = u_xlat23;
        let x_1342 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1340 * vec2<f32>(x_1342.x, x_1342.y)) + vec2<f32>(x_1345.w, x_1345.y));
        let x_1349 : f32 = u_xlat9.y;
        u_xlat6.z = x_1349;
        let x_1351 : vec2<f32> = u_xlat23;
        let x_1354 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1357 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1351.x, x_1351.y, x_1351.x, x_1351.y) * vec4<f32>(x_1354.x, x_1354.y, x_1354.x, x_1354.y)) + vec4<f32>(x_1357.x, x_1357.y, x_1357.x, x_1357.z));
        let x_1361 : f32 = u_xlat8.w;
        u_xlat9.y = x_1361;
        let x_1364 : vec2<f32> = u_xlat23;
        let x_1367 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1364.x, x_1364.y, x_1364.x, x_1364.y) * vec4<f32>(x_1367.x, x_1367.y, x_1367.x, x_1367.y)) + vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1370.y));
        let x_1374 : vec2<f32> = u_xlat23;
        let x_1376 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1379 : vec4<f32> = u_xlat9;
        u_xlat25 = ((x_1374 * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.w, x_1379.y));
        let x_1383 : f32 = u_xlat9.y;
        u_xlat6.w = x_1383;
        let x_1386 : vec2<f32> = u_xlat23;
        let x_1388 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1391 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1386 * vec2<f32>(x_1388.x, x_1388.y)) + vec2<f32>(x_1391.x, x_1391.w));
        let x_1394 : vec4<f32> = u_xlat9;
        let x_1395 : vec3<f32> = vec3<f32>(x_1394.x, x_1394.z, x_1394.w);
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1395.x, x_1396.y, x_1395.y, x_1395.z);
        let x_1398 : vec2<f32> = u_xlat23;
        let x_1401 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1404 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y) * vec4<f32>(x_1401.x, x_1401.y, x_1401.x, x_1401.y)) + vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1404.y));
        let x_1408 : vec2<f32> = u_xlat23;
        let x_1410 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1413 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1408 * vec2<f32>(x_1410.x, x_1410.y)) + vec2<f32>(x_1413.w, x_1413.y));
        let x_1417 : f32 = u_xlat6.x;
        u_xlat8.x = x_1417;
        let x_1419 : vec2<f32> = u_xlat23;
        let x_1421 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1424 : vec4<f32> = u_xlat8;
        u_xlat23 = ((x_1419 * vec2<f32>(x_1421.x, x_1421.y)) + vec2<f32>(x_1424.x, x_1424.y));
        let x_1428 : vec4<f32> = u_xlat5;
        let x_1430 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1428.x, x_1428.x, x_1428.x, x_1428.x) * x_1430);
        let x_1433 : vec4<f32> = u_xlat5;
        let x_1435 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1433.y, x_1433.y, x_1433.y, x_1433.y) * x_1435);
        let x_1438 : vec4<f32> = u_xlat5;
        let x_1440 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1438.z, x_1438.z, x_1438.z, x_1438.z) * x_1440);
        let x_1442 : vec4<f32> = u_xlat5;
        let x_1444 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1442.w, x_1442.w, x_1442.w, x_1442.w) * x_1444);
        let x_1447 : vec4<f32> = u_xlat10;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.x, x_1447.y);
        let x_1450 : f32 = u_xlat22.z;
        txVec13 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec13;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1457.xy, x_1457.z);
        u_xlat61 = x_1459;
        let x_1461 : vec4<f32> = u_xlat10;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.z, x_1461.w);
        let x_1464 : f32 = u_xlat22.z;
        txVec14 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec14;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat6.x = x_1473;
        let x_1476 : f32 = u_xlat6.x;
        let x_1478 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1476 * x_1478);
        let x_1482 : f32 = u_xlat16.x;
        let x_1483 : f32 = u_xlat61;
        let x_1486 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1482 * x_1483) + x_1486);
        let x_1489 : vec4<f32> = u_xlat11;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = u_xlat22.z;
        txVec15 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec15;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1499.xy, x_1499.z);
        u_xlat6.x = x_1501;
        let x_1504 : f32 = u_xlat16.z;
        let x_1506 : f32 = u_xlat6.x;
        let x_1508 : f32 = u_xlat61;
        u_xlat61 = ((x_1504 * x_1506) + x_1508);
        let x_1511 : vec4<f32> = u_xlat13;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.x, x_1511.y);
        let x_1514 : f32 = u_xlat22.z;
        txVec16 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec16;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1521.xy, x_1521.z);
        u_xlat6.x = x_1523;
        let x_1526 : f32 = u_xlat16.w;
        let x_1528 : f32 = u_xlat6.x;
        let x_1530 : f32 = u_xlat61;
        u_xlat61 = ((x_1526 * x_1528) + x_1530);
        let x_1533 : vec4<f32> = u_xlat12;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.x, x_1533.y);
        let x_1536 : f32 = u_xlat22.z;
        txVec17 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec17;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1543.xy, x_1543.z);
        u_xlat6.x = x_1545;
        let x_1548 : f32 = u_xlat17.x;
        let x_1550 : f32 = u_xlat6.x;
        let x_1552 : f32 = u_xlat61;
        u_xlat61 = ((x_1548 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat12;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.z, x_1555.w);
        let x_1558 : f32 = u_xlat22.z;
        txVec18 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec18;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1565.xy, x_1565.z);
        u_xlat6.x = x_1567;
        let x_1570 : f32 = u_xlat17.y;
        let x_1572 : f32 = u_xlat6.x;
        let x_1574 : f32 = u_xlat61;
        u_xlat61 = ((x_1570 * x_1572) + x_1574);
        let x_1577 : vec2<f32> = u_xlat49;
        let x_1579 : f32 = u_xlat22.z;
        txVec19 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec19;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat6.x = x_1588;
        let x_1591 : f32 = u_xlat17.z;
        let x_1593 : f32 = u_xlat6.x;
        let x_1595 : f32 = u_xlat61;
        u_xlat61 = ((x_1591 * x_1593) + x_1595);
        let x_1598 : vec4<f32> = u_xlat13;
        let x_1599 : vec2<f32> = vec2<f32>(x_1598.z, x_1598.w);
        let x_1601 : f32 = u_xlat22.z;
        txVec20 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec20;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1608.xy, x_1608.z);
        u_xlat6.x = x_1610;
        let x_1613 : f32 = u_xlat17.w;
        let x_1615 : f32 = u_xlat6.x;
        let x_1617 : f32 = u_xlat61;
        u_xlat61 = ((x_1613 * x_1615) + x_1617);
        let x_1620 : vec4<f32> = u_xlat14;
        let x_1621 : vec2<f32> = vec2<f32>(x_1620.x, x_1620.y);
        let x_1623 : f32 = u_xlat22.z;
        txVec21 = vec3<f32>(x_1621.x, x_1621.y, x_1623);
        let x_1630 : vec3<f32> = txVec21;
        let x_1632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1630.xy, x_1630.z);
        u_xlat6.x = x_1632;
        let x_1635 : f32 = u_xlat18.x;
        let x_1637 : f32 = u_xlat6.x;
        let x_1639 : f32 = u_xlat61;
        u_xlat61 = ((x_1635 * x_1637) + x_1639);
        let x_1642 : vec4<f32> = u_xlat14;
        let x_1643 : vec2<f32> = vec2<f32>(x_1642.z, x_1642.w);
        let x_1645 : f32 = u_xlat22.z;
        txVec22 = vec3<f32>(x_1643.x, x_1643.y, x_1645);
        let x_1652 : vec3<f32> = txVec22;
        let x_1654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1652.xy, x_1652.z);
        u_xlat6.x = x_1654;
        let x_1657 : f32 = u_xlat18.y;
        let x_1659 : f32 = u_xlat6.x;
        let x_1661 : f32 = u_xlat61;
        u_xlat61 = ((x_1657 * x_1659) + x_1661);
        let x_1664 : vec2<f32> = u_xlat25;
        let x_1666 : f32 = u_xlat22.z;
        txVec23 = vec3<f32>(x_1664.x, x_1664.y, x_1666);
        let x_1673 : vec3<f32> = txVec23;
        let x_1675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1673.xy, x_1673.z);
        u_xlat6.x = x_1675;
        let x_1678 : f32 = u_xlat18.z;
        let x_1680 : f32 = u_xlat6.x;
        let x_1682 : f32 = u_xlat61;
        u_xlat61 = ((x_1678 * x_1680) + x_1682);
        let x_1685 : vec2<f32> = u_xlat15;
        let x_1687 : f32 = u_xlat22.z;
        txVec24 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec24;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1694.xy, x_1694.z);
        u_xlat6.x = x_1696;
        let x_1699 : f32 = u_xlat18.w;
        let x_1701 : f32 = u_xlat6.x;
        let x_1703 : f32 = u_xlat61;
        u_xlat61 = ((x_1699 * x_1701) + x_1703);
        let x_1706 : vec4<f32> = u_xlat9;
        let x_1707 : vec2<f32> = vec2<f32>(x_1706.x, x_1706.y);
        let x_1709 : f32 = u_xlat22.z;
        txVec25 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec25;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1716.xy, x_1716.z);
        u_xlat6.x = x_1718;
        let x_1721 : f32 = u_xlat5.x;
        let x_1723 : f32 = u_xlat6.x;
        let x_1725 : f32 = u_xlat61;
        u_xlat61 = ((x_1721 * x_1723) + x_1725);
        let x_1728 : vec4<f32> = u_xlat9;
        let x_1729 : vec2<f32> = vec2<f32>(x_1728.z, x_1728.w);
        let x_1731 : f32 = u_xlat22.z;
        txVec26 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec26;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1738.xy, x_1738.z);
        u_xlat5.x = x_1740;
        let x_1743 : f32 = u_xlat5.y;
        let x_1745 : f32 = u_xlat5.x;
        let x_1747 : f32 = u_xlat61;
        u_xlat61 = ((x_1743 * x_1745) + x_1747);
        let x_1750 : vec2<f32> = u_xlat46;
        let x_1752 : f32 = u_xlat22.z;
        txVec27 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec27;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1759.xy, x_1759.z);
        u_xlat5.x = x_1761;
        let x_1764 : f32 = u_xlat5.z;
        let x_1766 : f32 = u_xlat5.x;
        let x_1768 : f32 = u_xlat61;
        u_xlat61 = ((x_1764 * x_1766) + x_1768);
        let x_1771 : vec2<f32> = u_xlat23;
        let x_1773 : f32 = u_xlat22.z;
        txVec28 = vec3<f32>(x_1771.x, x_1771.y, x_1773);
        let x_1780 : vec3<f32> = txVec28;
        let x_1782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1780.xy, x_1780.z);
        u_xlat23.x = x_1782;
        let x_1785 : f32 = u_xlat5.w;
        let x_1787 : f32 = u_xlat23.x;
        let x_1789 : f32 = u_xlat61;
        u_xlat4.x = ((x_1785 * x_1787) + x_1789);
      }
    }
  } else {
    let x_1794 : vec3<f32> = u_xlat22;
    let x_1795 : vec2<f32> = vec2<f32>(x_1794.x, x_1794.y);
    let x_1797 : f32 = u_xlat22.z;
    txVec29 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
    let x_1804 : vec3<f32> = txVec29;
    let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1804.xy, x_1804.z);
    u_xlat4.x = x_1806;
  }
  let x_1809 : f32 = x_369.x_MainLightShadowParams.x;
  u_xlat22.x = (-(x_1809) + 1.0f);
  let x_1814 : f32 = u_xlat4.x;
  let x_1816 : f32 = x_369.x_MainLightShadowParams.x;
  let x_1819 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_1814 * x_1816) + x_1819);
  let x_1824 : f32 = u_xlat22.z;
  u_xlatb41 = (0.0f >= x_1824);
  let x_1828 : f32 = u_xlat22.z;
  u_xlatb60 = (x_1828 >= 1.0f);
  let x_1830 : bool = u_xlatb60;
  let x_1831 : bool = u_xlatb41;
  u_xlatb41 = (x_1830 | x_1831);
  let x_1833 : bool = u_xlatb41;
  if (x_1833) {
    x_1835 = 1.0f;
  } else {
    let x_1840 : f32 = u_xlat22.x;
    x_1835 = x_1840;
  }
  let x_1841 : f32 = x_1835;
  u_xlat22.x = x_1841;
  let x_1844 : vec3<f32> = u_xlat0;
  let x_1847 : vec4<f32> = x_39.x_ScreenParams;
  u_xlat41 = (vec2<f32>(x_1844.x, x_1844.y) * vec2<f32>(x_1847.x, x_1847.y));
  let x_1850 : vec2<f32> = u_xlat41;
  let x_1852 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
  u_xlat41 = (x_1850 * vec2<f32>(x_1852.x, x_1852.y));
  let x_1855 : f32 = u_xlat38;
  let x_1859 : vec2<f32> = (vec2<f32>(x_1855, x_1855) * vec2<f32>(20.0f, 0.25f));
  let x_1860 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1859.x, x_1859.y, x_1860.z, x_1860.w);
  let x_1862 : vec4<f32> = u_xlat4;
  let x_1864 : vec3<f32> = vs_TEXCOORD2;
  let x_1866 : vec3<f32> = (vec3<f32>(x_1862.y, x_1862.y, x_1862.y) * -(x_1864));
  let x_1867 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1866.x, x_1866.y, x_1866.z, x_1867.w);
  let x_1870 : f32 = x_39.x_Time.x;
  u_xlat6.x = fract(x_1870);
  let x_1874 : f32 = x_39.x_Time.z;
  u_xlat6.y = fract(-(x_1874));
  let x_1878 : vec2<f32> = u_xlat41;
  u_xlat42 = x_1878;
  u_xlat62 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1887 : u32 = u_xlatu_loop_1;
    if ((x_1887 < 4u)) {
    } else {
      break;
    }
    let x_1890 : vec4<f32> = u_xlat6;
    let x_1892 : vec2<f32> = u_xlat42;
    u_xlat42 = (vec2<f32>(x_1890.x, x_1890.y) + x_1892);
    let x_1895 : u32 = u_xlatu_loop_1;
    u_xlat63 = f32(x_1895);
    let x_1897 : f32 = u_xlat63;
    let x_1900 : vec4<f32> = x_39.x_ScreenParams;
    let x_1903 : vec2<f32> = u_xlat42;
    let x_1904 : vec2<f32> = ((vec2<f32>(x_1897, x_1897) * vec2<f32>(x_1900.x, x_1900.y)) + x_1903);
    let x_1905 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1904.x, x_1904.y, x_1905.z, x_1905.w);
    let x_1912 : vec4<f32> = u_xlat7;
    let x_1915 : f32 = x_39.x_GlobalMipBias.x;
    let x_1916 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, vec2<f32>(x_1912.x, x_1912.y), x_1915);
    let x_1917 : vec3<f32> = vec3<f32>(x_1916.x, x_1916.y, x_1916.z);
    let x_1918 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
    let x_1920 : vec4<f32> = u_xlat7;
    let x_1925 : vec3<f32> = ((vec3<f32>(x_1920.x, x_1920.z, x_1920.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_1926 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1926.w);
    let x_1928 : vec4<f32> = u_xlat4;
    let x_1930 : vec4<f32> = u_xlat7;
    let x_1932 : vec3<f32> = (vec3<f32>(x_1928.y, x_1928.y, x_1928.y) * vec3<f32>(x_1930.x, x_1930.y, x_1930.z));
    let x_1933 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1932.x, x_1932.y, x_1933.z, x_1932.z);
    let x_1935 : f32 = u_xlat63;
    let x_1937 : vec4<f32> = u_xlat7;
    let x_1939 : vec3<f32> = (vec3<f32>(x_1935, x_1935, x_1935) * vec3<f32>(x_1937.x, x_1937.y, x_1937.w));
    let x_1940 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1939.x, x_1939.y, x_1940.z, x_1939.z);
    let x_1942 : vec4<f32> = u_xlat7;
    let x_1947 : vec3<f32> = vs_TEXCOORD1;
    let x_1948 : vec3<f32> = ((vec3<f32>(x_1942.x, x_1942.y, x_1942.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_1947);
    let x_1949 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1948.x, x_1948.y, x_1949.z, x_1948.z);
    let x_1951 : f32 = u_xlat63;
    let x_1953 : f32 = u_xlat7.z;
    u_xlat63 = (x_1951 + x_1953);
    let x_1955 : vec4<f32> = u_xlat5;
    let x_1957 : f32 = u_xlat63;
    let x_1960 : vec4<f32> = u_xlat7;
    let x_1962 : vec3<f32> = ((vec3<f32>(x_1955.x, x_1955.y, x_1955.z) * vec3<f32>(x_1957, x_1957, x_1957)) + vec3<f32>(x_1960.x, x_1960.y, x_1960.w));
    let x_1963 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
    let x_1965 : vec4<f32> = u_xlat7;
    let x_1968 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
    let x_1971 : vec3<f32> = (vec3<f32>(x_1965.x, x_1965.y, x_1965.z) + -(vec3<f32>(x_1968.x, x_1968.y, x_1968.z)));
    let x_1972 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
    let x_1974 : vec4<f32> = u_xlat7;
    let x_1977 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
    let x_1980 : vec3<f32> = (vec3<f32>(x_1974.x, x_1974.y, x_1974.z) + -(vec3<f32>(x_1977.x, x_1977.y, x_1977.z)));
    let x_1981 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
    let x_1983 : vec4<f32> = u_xlat7;
    let x_1986 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
    let x_1989 : vec3<f32> = (vec3<f32>(x_1983.x, x_1983.y, x_1983.z) + -(vec3<f32>(x_1986.x, x_1986.y, x_1986.z)));
    let x_1990 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
    let x_1992 : vec4<f32> = u_xlat7;
    let x_1995 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
    let x_1998 : vec3<f32> = (vec3<f32>(x_1992.x, x_1992.y, x_1992.z) + -(vec3<f32>(x_1995.x, x_1995.y, x_1995.z)));
    let x_1999 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
    let x_2001 : vec4<f32> = u_xlat8;
    let x_2003 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_2001.x, x_2001.y, x_2001.z), vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
    let x_2007 : vec4<f32> = u_xlat9;
    let x_2009 : vec4<f32> = u_xlat9;
    u_xlat8.y = dot(vec3<f32>(x_2007.x, x_2007.y, x_2007.z), vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
    let x_2013 : vec4<f32> = u_xlat10;
    let x_2015 : vec4<f32> = u_xlat10;
    u_xlat8.z = dot(vec3<f32>(x_2013.x, x_2013.y, x_2013.z), vec3<f32>(x_2015.x, x_2015.y, x_2015.z));
    let x_2019 : vec4<f32> = u_xlat11;
    let x_2021 : vec4<f32> = u_xlat11;
    u_xlat8.w = dot(vec3<f32>(x_2019.x, x_2019.y, x_2019.z), vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
    let x_2026 : vec4<f32> = u_xlat8;
    let x_2028 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
    u_xlatb8 = (x_2026 < x_2028);
    let x_2031 : bool = u_xlatb8.x;
    u_xlat9.x = select(0.0f, 1.0f, x_2031);
    let x_2035 : bool = u_xlatb8.y;
    u_xlat9.y = select(0.0f, 1.0f, x_2035);
    let x_2039 : bool = u_xlatb8.z;
    u_xlat9.z = select(0.0f, 1.0f, x_2039);
    let x_2043 : bool = u_xlatb8.w;
    u_xlat9.w = select(0.0f, 1.0f, x_2043);
    let x_2047 : bool = u_xlatb8.x;
    u_xlat8.x = select(-0.0f, -1.0f, x_2047);
    let x_2051 : bool = u_xlatb8.y;
    u_xlat8.y = select(-0.0f, -1.0f, x_2051);
    let x_2055 : bool = u_xlatb8.z;
    u_xlat8.z = select(-0.0f, -1.0f, x_2055);
    let x_2058 : vec4<f32> = u_xlat8;
    let x_2060 : vec4<f32> = u_xlat9;
    let x_2062 : vec3<f32> = (vec3<f32>(x_2058.x, x_2058.y, x_2058.z) + vec3<f32>(x_2060.y, x_2060.z, x_2060.w));
    let x_2063 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
    let x_2065 : vec4<f32> = u_xlat8;
    let x_2067 : vec3<f32> = max(vec3<f32>(x_2065.x, x_2065.y, x_2065.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_2068 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2068.x, x_2067.x, x_2067.y, x_2067.z);
    let x_2070 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_2070, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_2072 : f32 = u_xlat63;
    u_xlat63 = (-(x_2072) + 4.0f);
    let x_2076 : f32 = u_xlat63;
    u_xlatu63 = u32(x_2076);
    let x_2079 : u32 = u_xlatu63;
    u_xlati63 = (bitcast<i32>(x_2079) << bitcast<u32>(2i));
    let x_2082 : vec4<f32> = u_xlat7;
    let x_2084 : i32 = u_xlati63;
    let x_2087 : i32 = u_xlati63;
    let x_2091 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2084 + 1i) / 4i)][((x_2087 + 1i) % 4i)];
    let x_2093 : vec3<f32> = (vec3<f32>(x_2082.y, x_2082.y, x_2082.y) * vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
    let x_2094 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2093.x, x_2093.y, x_2093.z, x_2094.w);
    let x_2096 : i32 = u_xlati63;
    let x_2098 : i32 = u_xlati63;
    let x_2101 : vec4<f32> = x_369.x_MainLightWorldToShadow[(x_2096 / 4i)][(x_2098 % 4i)];
    let x_2103 : vec4<f32> = u_xlat7;
    let x_2106 : vec4<f32> = u_xlat8;
    let x_2108 : vec3<f32> = ((vec3<f32>(x_2101.x, x_2101.y, x_2101.z) * vec3<f32>(x_2103.x, x_2103.x, x_2103.x)) + vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
    let x_2109 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2108.x, x_2108.y, x_2109.z, x_2108.z);
    let x_2111 : i32 = u_xlati63;
    let x_2114 : i32 = u_xlati63;
    let x_2118 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2111 + 2i) / 4i)][((x_2114 + 2i) % 4i)];
    let x_2120 : vec4<f32> = u_xlat7;
    let x_2123 : vec4<f32> = u_xlat7;
    let x_2125 : vec3<f32> = ((vec3<f32>(x_2118.x, x_2118.y, x_2118.z) * vec3<f32>(x_2120.z, x_2120.z, x_2120.z)) + vec3<f32>(x_2123.x, x_2123.y, x_2123.w));
    let x_2126 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
    let x_2128 : vec4<f32> = u_xlat7;
    let x_2130 : i32 = u_xlati63;
    let x_2133 : i32 = u_xlati63;
    let x_2137 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2130 + 3i) / 4i)][((x_2133 + 3i) % 4i)];
    let x_2139 : vec3<f32> = (vec3<f32>(x_2128.x, x_2128.y, x_2128.z) + vec3<f32>(x_2137.x, x_2137.y, x_2137.z));
    let x_2140 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2139.x, x_2139.y, x_2139.z, x_2140.w);
    let x_2143 : vec4<f32> = u_xlat7;
    let x_2144 : vec2<f32> = vec2<f32>(x_2143.x, x_2143.y);
    let x_2146 : f32 = u_xlat7.z;
    txVec30 = vec3<f32>(x_2144.x, x_2144.y, x_2146);
    let x_2153 : vec3<f32> = txVec30;
    let x_2155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2153.xy, x_2153.z);
    u_xlat63 = x_2155;
    let x_2156 : f32 = u_xlat62;
    let x_2157 : f32 = u_xlat63;
    u_xlat62 = (x_2156 + x_2157);

    continuing {
      let x_2159 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2159 + bitcast<u32>(1i));
    }
  }
  let x_2161 : vec3<f32> = vs_TEXCOORD1;
  let x_2164 : vec3<f32> = (x_2161 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_2165 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2164.x, x_2164.y, x_2164.z, x_2165.w);
  let x_2167 : vec3<f32> = vs_TEXCOORD1;
  let x_2170 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
  let x_2173 : vec3<f32> = ((x_2167 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2170.x, x_2170.y, x_2170.z)));
  let x_2174 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2174.w);
  let x_2176 : vec3<f32> = vs_TEXCOORD1;
  let x_2179 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
  let x_2182 : vec3<f32> = ((x_2176 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2179.x, x_2179.y, x_2179.z)));
  let x_2183 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2182.x, x_2182.y, x_2182.z, x_2183.w);
  let x_2185 : vec3<f32> = vs_TEXCOORD1;
  let x_2188 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
  let x_2191 : vec3<f32> = ((x_2185 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2188.x, x_2188.y, x_2188.z)));
  let x_2192 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2191.x, x_2191.y, x_2191.z, x_2192.w);
  let x_2194 : vec3<f32> = vs_TEXCOORD1;
  let x_2197 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
  let x_2200 : vec3<f32> = ((x_2194 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2197.x, x_2197.y, x_2197.z)));
  let x_2201 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
  let x_2203 : vec4<f32> = u_xlat6;
  let x_2205 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2203.x, x_2203.y, x_2203.z), vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2209 : vec4<f32> = u_xlat7;
  let x_2211 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_2209.x, x_2209.y, x_2209.z), vec3<f32>(x_2211.x, x_2211.y, x_2211.z));
  let x_2215 : vec4<f32> = u_xlat8;
  let x_2217 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_2215.x, x_2215.y, x_2215.z), vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
  let x_2221 : vec4<f32> = u_xlat9;
  let x_2223 : vec4<f32> = u_xlat9;
  u_xlat6.w = dot(vec3<f32>(x_2221.x, x_2221.y, x_2221.z), vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
  let x_2228 : vec4<f32> = u_xlat6;
  let x_2230 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_2228 < x_2230);
  let x_2233 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_2233);
  let x_2237 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_2237);
  let x_2241 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_2241);
  let x_2245 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_2245);
  let x_2249 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_2249);
  let x_2253 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_2253);
  let x_2257 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_2257);
  let x_2260 : vec4<f32> = u_xlat6;
  let x_2262 : vec4<f32> = u_xlat7;
  let x_2264 : vec3<f32> = (vec3<f32>(x_2260.x, x_2260.y, x_2260.z) + vec3<f32>(x_2262.y, x_2262.z, x_2262.w));
  let x_2265 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
  let x_2267 : vec4<f32> = u_xlat6;
  let x_2269 : vec3<f32> = max(vec3<f32>(x_2267.x, x_2267.y, x_2267.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2270 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2270.x, x_2269.x, x_2269.y, x_2269.z);
  let x_2272 : vec4<f32> = u_xlat7;
  u_xlat41.x = dot(x_2272, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_2276 : f32 = u_xlat41.x;
  u_xlat41.x = (-(x_2276) + 4.0f);
  let x_2282 : f32 = u_xlat41.x;
  u_xlatu41 = u32(x_2282);
  let x_2285 : u32 = u_xlatu41;
  u_xlati41 = (bitcast<i32>(x_2285) << bitcast<u32>(2i));
  let x_2290 : f32 = u_xlat5.y;
  let x_2291 : i32 = u_xlati41;
  let x_2294 : i32 = u_xlati41;
  let x_2298 : f32 = x_369.x_MainLightWorldToShadow[((x_2291 + 1i) / 4i)][((x_2294 + 1i) % 4i)].z;
  u_xlat60 = (x_2290 * x_2298);
  let x_2300 : i32 = u_xlati41;
  let x_2302 : i32 = u_xlati41;
  let x_2305 : f32 = x_369.x_MainLightWorldToShadow[(x_2300 / 4i)][(x_2302 % 4i)].z;
  let x_2307 : f32 = u_xlat5.x;
  let x_2309 : f32 = u_xlat60;
  u_xlat60 = ((x_2305 * x_2307) + x_2309);
  let x_2311 : i32 = u_xlati41;
  let x_2314 : i32 = u_xlati41;
  let x_2318 : f32 = x_369.x_MainLightWorldToShadow[((x_2311 + 2i) / 4i)][((x_2314 + 2i) % 4i)].z;
  let x_2320 : f32 = u_xlat5.z;
  let x_2322 : f32 = u_xlat60;
  u_xlat60 = ((x_2318 * x_2320) + x_2322);
  let x_2324 : f32 = u_xlat60;
  let x_2325 : i32 = u_xlati41;
  let x_2328 : i32 = u_xlati41;
  let x_2332 : f32 = x_369.x_MainLightWorldToShadow[((x_2325 + 3i) / 4i)][((x_2328 + 3i) % 4i)].z;
  u_xlat41.x = (x_2324 + x_2332);
  let x_2336 : f32 = u_xlat41.x;
  u_xlatb60 = (0.0f >= x_2336);
  let x_2339 : f32 = u_xlat41.x;
  u_xlatb41 = (x_2339 >= 1.0f);
  let x_2341 : bool = u_xlatb41;
  let x_2342 : bool = u_xlatb60;
  u_xlatb41 = (x_2341 | x_2342);
  let x_2344 : f32 = u_xlat62;
  u_xlat60 = (x_2344 * 0.25f);
  let x_2346 : bool = u_xlatb41;
  let x_2347 : f32 = u_xlat60;
  u_xlat41.x = select(x_2347, 1.0f, x_2346);
  let x_2356 : vec4<f32> = x_2353.unity_SHAr;
  let x_2357 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_2356, x_2357);
  let x_2362 : vec4<f32> = x_2353.unity_SHAg;
  let x_2363 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_2362, x_2363);
  let x_2368 : vec4<f32> = x_2353.unity_SHAb;
  let x_2369 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_2368, x_2369);
  let x_2372 : vec4<f32> = u_xlat2;
  let x_2374 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_2372.y, x_2372.z, x_2372.z, x_2372.x) * vec4<f32>(x_2374.x, x_2374.y, x_2374.z, x_2374.z));
  let x_2379 : vec4<f32> = x_2353.unity_SHBr;
  let x_2380 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_2379, x_2380);
  let x_2385 : vec4<f32> = x_2353.unity_SHBg;
  let x_2386 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_2385, x_2386);
  let x_2391 : vec4<f32> = x_2353.unity_SHBb;
  let x_2392 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_2391, x_2392);
  let x_2397 : f32 = u_xlat2.y;
  let x_2399 : f32 = u_xlat2.y;
  u_xlat59 = (x_2397 * x_2399);
  let x_2402 : f32 = u_xlat2.x;
  let x_2404 : f32 = u_xlat2.x;
  let x_2406 : f32 = u_xlat59;
  u_xlat59 = ((x_2402 * x_2404) + -(x_2406));
  let x_2411 : vec4<f32> = x_2353.unity_SHC;
  let x_2413 : f32 = u_xlat59;
  let x_2416 : vec4<f32> = u_xlat7;
  let x_2418 : vec3<f32> = ((vec3<f32>(x_2411.x, x_2411.y, x_2411.z) * vec3<f32>(x_2413, x_2413, x_2413)) + vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
  let x_2421 : vec4<f32> = u_xlat5;
  let x_2423 : vec4<f32> = u_xlat6;
  let x_2425 : vec3<f32> = (vec3<f32>(x_2421.x, x_2421.y, x_2421.z) + vec3<f32>(x_2423.x, x_2423.y, x_2423.z));
  let x_2426 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
  let x_2428 : vec4<f32> = u_xlat5;
  let x_2430 : vec3<f32> = max(vec3<f32>(x_2428.x, x_2428.y, x_2428.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2431 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
  let x_2433 : vec3<f32> = vs_TEXCOORD2;
  let x_2435 : vec4<f32> = x_39.x_MainLightPosition;
  u_xlat59 = dot(x_2433, -(vec3<f32>(x_2435.x, x_2435.y, x_2435.z)));
  let x_2439 : f32 = u_xlat59;
  let x_2441 : f32 = vs_TEXCOORD5.z;
  u_xlat59 = (x_2439 * x_2441);
  let x_2443 : f32 = u_xlat59;
  let x_2444 : f32 = u_xlat59;
  u_xlat60 = (x_2443 * x_2444);
  let x_2446 : f32 = u_xlat59;
  let x_2447 : f32 = u_xlat60;
  u_xlat59 = (x_2446 * x_2447);
  let x_2449 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2449, 0.0f, 1.0f);
  let x_2451 : f32 = u_xlat59;
  u_xlat59 = (x_2451 * 5.0f);
  let x_2454 : f32 = u_xlat59;
  let x_2457 : vec4<f32> = x_39.x_MainLightColor;
  let x_2459 : vec3<f32> = (vec3<f32>(x_2454, x_2454, x_2454) * vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
  let x_2460 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
  let x_2463 : vec4<f32> = x_39.x_MainLightPosition;
  let x_2466 : vec4<f32> = x_39.x_MainLightColor;
  let x_2469 : vec4<f32> = u_xlat6;
  let x_2471 : vec3<f32> = ((vec3<f32>(x_2463.y, x_2463.y, x_2463.y) * vec3<f32>(x_2466.x, x_2466.y, x_2466.z)) + vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
  let x_2472 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
  let x_2474 : vec4<f32> = u_xlat6;
  let x_2476 : vec2<f32> = u_xlat41;
  let x_2479 : vec4<f32> = u_xlat5;
  let x_2481 : vec3<f32> = ((vec3<f32>(x_2474.x, x_2474.y, x_2474.z) * vec3<f32>(x_2476.x, x_2476.x, x_2476.x)) + vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
  let x_2482 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2481.x, x_2481.y, x_2481.z, x_2482.w);
  let x_2489 : vec4<f32> = vs_TEXCOORD0;
  let x_2492 : f32 = x_39.x_GlobalMipBias.x;
  let x_2493 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_2489.z, x_2489.w), x_2492);
  let x_2494 : vec3<f32> = vec3<f32>(x_2493.x, x_2493.y, x_2493.z);
  let x_2495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
  let x_2498 : f32 = u_xlat4.x;
  u_xlat4.x = x_2498;
  let x_2501 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_2501, 0.0f, 1.0f);
  let x_2505 : f32 = vs_TEXCOORD5.z;
  u_xlat59 = (x_2505 + -0.375f);
  let x_2508 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2508, 0.0f, 1.0f);
  let x_2510 : f32 = u_xlat38;
  u_xlat60 = ((-(x_2510) * 4.0f) + 1.0f);
  let x_2514 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2514, 0.0f, 1.0f);
  let x_2516 : f32 = u_xlat57;
  let x_2517 : f32 = u_xlat38;
  u_xlat57 = min(x_2516, x_2517);
  let x_2519 : f32 = u_xlat57;
  u_xlat57 = ((-(x_2519) * 0.5f) + 0.75f);
  let x_2524 : f32 = u_xlat60;
  let x_2526 : f32 = u_xlat57;
  u_xlat57 = ((x_2524 * 0.5f) + x_2526);
  let x_2528 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2528, 0.0f, 1.0f);
  let x_2531 : f32 = u_xlat4.x;
  let x_2532 : f32 = u_xlat57;
  u_xlat57 = (x_2531 * x_2532);
  let x_2534 : f32 = u_xlat57;
  let x_2535 : f32 = u_xlat59;
  u_xlat57 = max(x_2534, x_2535);
  let x_2538 : f32 = u_xlat1.x;
  let x_2540 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2538 + x_2540);
  let x_2543 : f32 = u_xlat57;
  let x_2545 : f32 = u_xlat1.x;
  u_xlat8.x = max(x_2543, x_2545);
  u_xlat8.y = 0.66000002622604370117f;
  let x_2555 : vec4<f32> = u_xlat8;
  let x_2558 : f32 = x_39.x_GlobalMipBias.x;
  let x_2559 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2555.x, x_2555.y), x_2558);
  let x_2560 : vec3<f32> = vec3<f32>(x_2559.x, x_2559.y, x_2559.z);
  let x_2561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2560.x, x_2561.y, x_2560.y, x_2560.z);
  let x_2563 : vec4<f32> = u_xlat4;
  let x_2565 : vec4<f32> = u_xlat7;
  let x_2567 : vec3<f32> = (vec3<f32>(x_2563.x, x_2563.z, x_2563.w) * vec3<f32>(x_2565.x, x_2565.y, x_2565.z));
  let x_2568 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2567.x, x_2568.y, x_2567.y, x_2567.z);
  let x_2570 : vec4<f32> = u_xlat4;
  let x_2572 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(vec3<f32>(x_2570.x, x_2570.z, x_2570.w), vec3<f32>(x_2572.x, x_2572.z, x_2572.w));
  let x_2575 : f32 = u_xlat57;
  u_xlat57 = sqrt(x_2575);
  let x_2577 : f32 = u_xlat57;
  u_xlat57 = ((x_2577 * 1.5f) + -0.10000000149011611938f);
  let x_2581 : f32 = u_xlat57;
  u_xlat57 = clamp(x_2581, 0.0f, 1.0f);
  let x_2583 : vec3<f32> = u_xlat22;
  let x_2586 : vec4<f32> = x_39.x_MainLightColor;
  let x_2589 : vec4<f32> = u_xlat5;
  let x_2591 : vec3<f32> = ((vec3<f32>(x_2583.x, x_2583.x, x_2583.x) * vec3<f32>(x_2586.x, x_2586.y, x_2586.z)) + vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
  let x_2592 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2591.x, x_2592.y, x_2591.y, x_2591.z);
  let x_2594 : vec3<f32> = vs_TEXCOORD2;
  let x_2596 : vec4<f32> = x_39.x_MainLightPosition;
  let x_2598 : vec3<f32> = (x_2594 + vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
  let x_2599 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
  let x_2601 : vec4<f32> = u_xlat5;
  let x_2603 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_2601.x, x_2601.y, x_2601.z), vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
  let x_2608 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2608, 1.17549435e-38f);
  let x_2613 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_2613);
  let x_2616 : vec3<f32> = u_xlat1;
  let x_2618 : vec4<f32> = u_xlat5;
  let x_2620 : vec3<f32> = (vec3<f32>(x_2616.x, x_2616.x, x_2616.x) * vec3<f32>(x_2618.x, x_2618.y, x_2618.z));
  let x_2621 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2620.x, x_2620.y, x_2620.z, x_2621.w);
  let x_2623 : vec4<f32> = u_xlat2;
  let x_2625 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_2623.x, x_2623.y, x_2623.z), vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
  let x_2630 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2630, 0.0f, 1.0f);
  let x_2634 : vec4<f32> = x_39.x_MainLightPosition;
  let x_2636 : vec4<f32> = u_xlat5;
  u_xlat59 = dot(vec3<f32>(x_2634.x, x_2634.y, x_2634.z), vec3<f32>(x_2636.x, x_2636.y, x_2636.z));
  let x_2639 : f32 = u_xlat59;
  u_xlat59 = clamp(x_2639, 0.0f, 1.0f);
  let x_2642 : f32 = u_xlat1.x;
  let x_2644 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2642 * x_2644);
  let x_2648 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2648 * -0.99993896484375f) + 1.00001001358032226562f);
  let x_2654 : f32 = u_xlat59;
  let x_2655 : f32 = u_xlat59;
  u_xlat59 = (x_2654 * x_2655);
  let x_2658 : f32 = u_xlat1.x;
  let x_2660 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2658 * x_2660);
  let x_2663 : f32 = u_xlat59;
  u_xlat59 = max(x_2663, 0.10000000149011611938f);
  let x_2666 : f32 = u_xlat1.x;
  let x_2667 : f32 = u_xlat59;
  u_xlat1.x = (x_2666 * x_2667);
  let x_2671 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2671 * 2.03125f);
  let x_2677 : f32 = u_xlat1.x;
  u_xlat1.x = (0.00006103515625f / x_2677);
  let x_2681 : f32 = u_xlat41.x;
  let x_2683 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2681 * x_2683);
  let x_2687 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2687 * 0.03999999910593032837f);
  let x_2691 : vec3<f32> = u_xlat1;
  let x_2694 : vec4<f32> = x_39.x_MainLightColor;
  u_xlat22 = (vec3<f32>(x_2691.x, x_2691.x, x_2691.x) * vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
  let x_2698 : f32 = x_39.x_AdditionalLightsCount.x;
  let x_2700 : f32 = x_2353.unity_LightData.y;
  u_xlat1.x = min(x_2698, x_2700);
  let x_2705 : f32 = u_xlat1.x;
  u_xlatu1 = bitcast<u32>(i32(x_2705));
  let x_2708 : vec4<f32> = u_xlat6;
  let x_2709 : vec3<f32> = vec3<f32>(x_2708.x, x_2708.y, x_2708.z);
  let x_2710 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2709.x, x_2709.y, x_2709.z, x_2710.w);
  let x_2712 : vec3<f32> = u_xlat22;
  let x_2713 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2712.x, x_2712.y, x_2712.z, x_2713.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_2721 : u32 = u_xlatu_loop_2;
    let x_2722 : u32 = u_xlatu1;
    if ((x_2721 < x_2722)) {
    } else {
      break;
    }
    let x_2725 : u32 = u_xlatu_loop_2;
    u_xlatu62 = (x_2725 >> 2u);
    let x_2727 : u32 = u_xlatu_loop_2;
    u_xlati63 = bitcast<i32>((x_2727 & 3u));
    let x_2730 : u32 = u_xlatu62;
    let x_2733 : vec4<f32> = x_2353.unity_LightIndices[bitcast<i32>(x_2730)];
    let x_2742 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2747 : vec4<u32> = indexable[x_2742];
    u_xlat62 = dot(x_2733, bitcast<vec4<f32>>(x_2747));
    let x_2751 : f32 = u_xlat62;
    u_xlati62 = i32(x_2751);
    let x_2753 : vec3<f32> = vs_TEXCOORD1;
    let x_2764 : i32 = u_xlati62;
    let x_2766 : vec4<f32> = x_2763.x_AdditionalLightsPosition[x_2764];
    let x_2769 : i32 = u_xlati62;
    let x_2771 : vec4<f32> = x_2763.x_AdditionalLightsPosition[x_2769];
    let x_2773 : vec3<f32> = ((-(x_2753) * vec3<f32>(x_2766.w, x_2766.w, x_2766.w)) + vec3<f32>(x_2771.x, x_2771.y, x_2771.z));
    let x_2774 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
    let x_2776 : vec4<f32> = u_xlat8;
    let x_2778 : vec4<f32> = u_xlat8;
    u_xlat63 = dot(vec3<f32>(x_2776.x, x_2776.y, x_2776.z), vec3<f32>(x_2778.x, x_2778.y, x_2778.z));
    let x_2781 : f32 = u_xlat63;
    u_xlat63 = max(x_2781, 0.00006103515625f);
    let x_2784 : f32 = u_xlat63;
    u_xlat64 = inverseSqrt(x_2784);
    let x_2786 : f32 = u_xlat64;
    let x_2788 : vec4<f32> = u_xlat8;
    let x_2790 : vec3<f32> = (vec3<f32>(x_2786, x_2786, x_2786) * vec3<f32>(x_2788.x, x_2788.y, x_2788.z));
    let x_2791 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2790.x, x_2790.y, x_2790.z, x_2791.w);
    let x_2794 : f32 = u_xlat63;
    u_xlat65 = (1.0f / x_2794);
    let x_2796 : f32 = u_xlat63;
    let x_2797 : i32 = u_xlati62;
    let x_2799 : f32 = x_2763.x_AdditionalLightsAttenuation[x_2797].x;
    u_xlat63 = (x_2796 * x_2799);
    let x_2801 : f32 = u_xlat63;
    let x_2803 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2801) * x_2803) + 1.0f);
    let x_2806 : f32 = u_xlat63;
    u_xlat63 = max(x_2806, 0.0f);
    let x_2808 : f32 = u_xlat63;
    let x_2809 : f32 = u_xlat63;
    u_xlat63 = (x_2808 * x_2809);
    let x_2811 : f32 = u_xlat63;
    let x_2812 : f32 = u_xlat65;
    u_xlat63 = (x_2811 * x_2812);
    let x_2814 : i32 = u_xlati62;
    let x_2816 : vec4<f32> = x_2763.x_AdditionalLightsSpotDir[x_2814];
    let x_2818 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2816.x, x_2816.y, x_2816.z), vec3<f32>(x_2818.x, x_2818.y, x_2818.z));
    let x_2821 : f32 = u_xlat65;
    let x_2822 : i32 = u_xlati62;
    let x_2824 : f32 = x_2763.x_AdditionalLightsAttenuation[x_2822].z;
    let x_2826 : i32 = u_xlati62;
    let x_2828 : f32 = x_2763.x_AdditionalLightsAttenuation[x_2826].w;
    u_xlat65 = ((x_2821 * x_2824) + x_2828);
    let x_2830 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2830, 0.0f, 1.0f);
    let x_2832 : f32 = u_xlat65;
    let x_2833 : f32 = u_xlat65;
    u_xlat65 = (x_2832 * x_2833);
    let x_2835 : f32 = u_xlat63;
    let x_2836 : f32 = u_xlat65;
    u_xlat63 = (x_2835 * x_2836);
    let x_2838 : vec4<f32> = u_xlat2;
    let x_2840 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2838.x, x_2838.y, x_2838.z), vec3<f32>(x_2840.x, x_2840.y, x_2840.z));
    let x_2843 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2843, 0.0f, 1.0f);
    let x_2845 : f32 = u_xlat63;
    let x_2846 : f32 = u_xlat65;
    u_xlat65 = (x_2845 * x_2846);
    let x_2848 : f32 = u_xlat65;
    let x_2850 : i32 = u_xlati62;
    let x_2852 : vec4<f32> = x_2763.x_AdditionalLightsColor[x_2850];
    let x_2854 : vec3<f32> = (vec3<f32>(x_2848, x_2848, x_2848) * vec3<f32>(x_2852.x, x_2852.y, x_2852.z));
    let x_2855 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2855.w);
    let x_2857 : vec4<f32> = u_xlat8;
    let x_2859 : f32 = u_xlat64;
    let x_2862 : vec3<f32> = vs_TEXCOORD2;
    let x_2863 : vec3<f32> = ((vec3<f32>(x_2857.x, x_2857.y, x_2857.z) * vec3<f32>(x_2859, x_2859, x_2859)) + x_2862);
    let x_2864 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2863.x, x_2863.y, x_2863.z, x_2864.w);
    let x_2866 : vec4<f32> = u_xlat8;
    let x_2868 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2866.x, x_2866.y, x_2866.z), vec3<f32>(x_2868.x, x_2868.y, x_2868.z));
    let x_2871 : f32 = u_xlat64;
    u_xlat64 = max(x_2871, 1.17549435e-38f);
    let x_2873 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_2873);
    let x_2875 : f32 = u_xlat64;
    let x_2877 : vec4<f32> = u_xlat8;
    let x_2879 : vec3<f32> = (vec3<f32>(x_2875, x_2875, x_2875) * vec3<f32>(x_2877.x, x_2877.y, x_2877.z));
    let x_2880 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
    let x_2882 : vec4<f32> = u_xlat2;
    let x_2884 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2882.x, x_2882.y, x_2882.z), vec3<f32>(x_2884.x, x_2884.y, x_2884.z));
    let x_2887 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2887, 0.0f, 1.0f);
    let x_2889 : vec4<f32> = u_xlat9;
    let x_2891 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_2889.x, x_2889.y, x_2889.z), vec3<f32>(x_2891.x, x_2891.y, x_2891.z));
    let x_2896 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2896, 0.0f, 1.0f);
    let x_2899 : f32 = u_xlat64;
    let x_2900 : f32 = u_xlat64;
    u_xlat64 = (x_2899 * x_2900);
    let x_2902 : f32 = u_xlat64;
    u_xlat64 = ((x_2902 * -0.99993896484375f) + 1.00001001358032226562f);
    let x_2906 : f32 = u_xlat8.x;
    let x_2908 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2906 * x_2908);
    let x_2911 : f32 = u_xlat64;
    let x_2912 : f32 = u_xlat64;
    u_xlat64 = (x_2911 * x_2912);
    let x_2915 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2915, 0.10000000149011611938f);
    let x_2918 : f32 = u_xlat64;
    let x_2920 : f32 = u_xlat8.x;
    u_xlat64 = (x_2918 * x_2920);
    let x_2922 : f32 = u_xlat64;
    u_xlat64 = (x_2922 * 2.03125f);
    let x_2924 : f32 = u_xlat64;
    u_xlat64 = (0.00006103515625f / x_2924);
    let x_2926 : f32 = u_xlat64;
    u_xlat64 = (x_2926 * 0.03999999910593032837f);
    let x_2928 : f32 = u_xlat64;
    let x_2930 : vec4<f32> = u_xlat10;
    let x_2933 : vec4<f32> = u_xlat7;
    let x_2935 : vec3<f32> = ((vec3<f32>(x_2928, x_2928, x_2928) * vec3<f32>(x_2930.x, x_2930.y, x_2930.z)) + vec3<f32>(x_2933.x, x_2933.y, x_2933.z));
    let x_2936 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2935.x, x_2935.y, x_2935.z, x_2936.w);
    let x_2938 : f32 = u_xlat63;
    let x_2940 : i32 = u_xlati62;
    let x_2942 : vec4<f32> = x_2763.x_AdditionalLightsColor[x_2940];
    let x_2945 : vec4<f32> = u_xlat5;
    let x_2947 : vec3<f32> = ((vec3<f32>(x_2938, x_2938, x_2938) * vec3<f32>(x_2942.x, x_2942.y, x_2942.z)) + vec3<f32>(x_2945.x, x_2945.y, x_2945.z));
    let x_2948 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2947.x, x_2947.y, x_2947.z, x_2948.w);

    continuing {
      let x_2950 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_2950 + bitcast<u32>(1i));
    }
  }
  let x_2952 : f32 = u_xlat58;
  let x_2953 : f32 = u_xlat38;
  u_xlat6.x = (x_2952 * x_2953);
  u_xlat6.y = 0.375f;
  u_xlat6.z = 0.0f;
  let x_2962 : vec4<f32> = u_xlat6;
  let x_2965 : f32 = x_39.x_GlobalMipBias.x;
  let x_2966 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_2962.x, x_2962.y), x_2965);
  u_xlat22 = vec3<f32>(x_2966.x, x_2966.y, x_2966.z);
  let x_2968 : vec4<f32> = u_xlat2;
  let x_2974 : vec3<f32> = u_xlat0;
  let x_2976 : vec2<f32> = ((vec2<f32>(x_2968.z, x_2968.x) * vec2<f32>(0.01999999955296516418f, 0.15000000596046447754f)) + vec2<f32>(x_2974.x, x_2974.y));
  let x_2977 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2976.x, x_2976.y, x_2977.z);
  let x_2983 : vec3<f32> = u_xlat0;
  let x_2985 : vec4<f32> = textureSampleLevel(x_PlanarReflectionTexture, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_2983.x, x_2983.y), 0.0f);
  u_xlat0 = vec3<f32>(x_2985.x, x_2985.y, x_2985.z);
  let x_2992 : vec2<f32> = u_xlat20;
  let x_2994 : f32 = u_xlat4.y;
  let x_2995 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_2992, x_2994);
  u_xlat1 = vec3<f32>(x_2995.x, x_2995.y, x_2995.z);
  let x_3000 : vec4<f32> = u_xlat6;
  let x_3003 : f32 = x_39.x_GlobalMipBias.x;
  let x_3004 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_3000.x, x_3000.z), x_3003);
  let x_3005 : vec3<f32> = vec3<f32>(x_3004.x, x_3004.y, x_3004.z);
  let x_3006 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_3005.x, x_3005.y, x_3005.z, x_3006.w);
  let x_3008 : vec3<f32> = u_xlat1;
  let x_3009 : vec4<f32> = u_xlat2;
  let x_3011 : vec3<f32> = (x_3008 * vec3<f32>(x_3009.x, x_3009.y, x_3009.z));
  let x_3012 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3011.x, x_3011.y, x_3011.z, x_3012.w);
  let x_3014 : vec3<f32> = u_xlat1;
  let x_3016 : vec4<f32> = u_xlat2;
  let x_3019 : vec3<f32> = u_xlat0;
  u_xlat0 = ((-(x_3014) * vec3<f32>(x_3016.x, x_3016.y, x_3016.z)) + x_3019);
  let x_3021 : f32 = u_xlat3;
  let x_3023 : vec3<f32> = u_xlat0;
  let x_3025 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3021, x_3021, x_3021) * x_3023) + vec3<f32>(x_3025.x, x_3025.y, x_3025.z));
  let x_3028 : vec4<f32> = u_xlat5;
  let x_3030 : vec3<f32> = u_xlat22;
  let x_3032 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3028.x, x_3028.y, x_3028.z) * x_3030) + x_3032);
  let x_3034 : vec4<f32> = u_xlat7;
  let x_3036 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3034.x, x_3034.y, x_3034.z) + x_3036);
  let x_3038 : f32 = u_xlat57;
  let x_3040 : vec4<f32> = u_xlat4;
  let x_3043 : vec3<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_3038, x_3038, x_3038) * vec3<f32>(x_3040.x, x_3040.z, x_3040.w)) + -(x_3043));
  let x_3046 : f32 = u_xlat57;
  let x_3048 : vec3<f32> = u_xlat1;
  let x_3050 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3046, x_3046, x_3046) * x_3048) + x_3050);
  let x_3055 : f32 = vs_TEXCOORD4.x;
  let x_3057 : f32 = vs_TEXCOORD4.x;
  u_xlat57 = (x_3055 * -(x_3057));
  let x_3060 : f32 = u_xlat57;
  u_xlat57 = exp2(x_3060);
  let x_3062 : vec3<f32> = u_xlat0;
  let x_3064 : vec4<f32> = x_39.unity_FogColor;
  u_xlat0 = (x_3062 + -(vec3<f32>(x_3064.x, x_3064.y, x_3064.z)));
  let x_3070 : f32 = u_xlat57;
  let x_3072 : vec3<f32> = u_xlat0;
  let x_3075 : vec4<f32> = x_39.unity_FogColor;
  let x_3077 : vec3<f32> = ((vec3<f32>(x_3070, x_3070, x_3070) * x_3072) + vec3<f32>(x_3075.x, x_3075.y, x_3075.z));
  let x_3078 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3077.x, x_3077.y, x_3077.z, x_3078.w);
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


