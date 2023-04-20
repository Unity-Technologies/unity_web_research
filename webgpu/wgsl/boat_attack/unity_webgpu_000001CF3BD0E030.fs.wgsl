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
  var x_1834 : f32;
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
        u_xlat42.x = x_939;
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
        let x_963 : f32 = u_xlat42.x;
        let x_965 : f32 = u_xlat61;
        u_xlat42.x = ((x_961 * x_963) + x_965);
        let x_969 : vec4<f32> = u_xlat10;
        let x_970 : vec2<f32> = vec2<f32>(x_969.x, x_969.y);
        let x_972 : f32 = u_xlat22.z;
        txVec6 = vec3<f32>(x_970.x, x_970.y, x_972);
        let x_979 : vec3<f32> = txVec6;
        let x_981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_979.xy, x_979.z);
        u_xlat61 = x_981;
        let x_983 : f32 = u_xlat12.z;
        let x_984 : f32 = u_xlat61;
        let x_987 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_983 * x_984) + x_987);
        let x_991 : vec4<f32> = u_xlat8;
        let x_992 : vec2<f32> = vec2<f32>(x_991.x, x_991.y);
        let x_994 : f32 = u_xlat22.z;
        txVec7 = vec3<f32>(x_992.x, x_992.y, x_994);
        let x_1001 : vec3<f32> = txVec7;
        let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1001.xy, x_1001.z);
        u_xlat61 = x_1003;
        let x_1005 : f32 = u_xlat12.w;
        let x_1006 : f32 = u_xlat61;
        let x_1009 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1005 * x_1006) + x_1009);
        let x_1013 : vec4<f32> = u_xlat11;
        let x_1014 : vec2<f32> = vec2<f32>(x_1013.x, x_1013.y);
        let x_1016 : f32 = u_xlat22.z;
        txVec8 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
        let x_1023 : vec3<f32> = txVec8;
        let x_1025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1023.xy, x_1023.z);
        u_xlat61 = x_1025;
        let x_1027 : f32 = u_xlat13.x;
        let x_1028 : f32 = u_xlat61;
        let x_1031 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1027 * x_1028) + x_1031);
        let x_1035 : vec4<f32> = u_xlat11;
        let x_1036 : vec2<f32> = vec2<f32>(x_1035.z, x_1035.w);
        let x_1038 : f32 = u_xlat22.z;
        txVec9 = vec3<f32>(x_1036.x, x_1036.y, x_1038);
        let x_1045 : vec3<f32> = txVec9;
        let x_1047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1045.xy, x_1045.z);
        u_xlat61 = x_1047;
        let x_1049 : f32 = u_xlat13.y;
        let x_1050 : f32 = u_xlat61;
        let x_1053 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1049 * x_1050) + x_1053);
        let x_1057 : vec4<f32> = u_xlat8;
        let x_1058 : vec2<f32> = vec2<f32>(x_1057.z, x_1057.w);
        let x_1060 : f32 = u_xlat22.z;
        txVec10 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
        let x_1067 : vec3<f32> = txVec10;
        let x_1069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1067.xy, x_1067.z);
        u_xlat61 = x_1069;
        let x_1071 : f32 = u_xlat13.z;
        let x_1072 : f32 = u_xlat61;
        let x_1075 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1071 * x_1072) + x_1075);
        let x_1079 : vec4<f32> = u_xlat7;
        let x_1080 : vec2<f32> = vec2<f32>(x_1079.x, x_1079.y);
        let x_1082 : f32 = u_xlat22.z;
        txVec11 = vec3<f32>(x_1080.x, x_1080.y, x_1082);
        let x_1089 : vec3<f32> = txVec11;
        let x_1091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1089.xy, x_1089.z);
        u_xlat61 = x_1091;
        let x_1093 : f32 = u_xlat13.w;
        let x_1094 : f32 = u_xlat61;
        let x_1097 : f32 = u_xlat42.x;
        u_xlat42.x = ((x_1093 * x_1094) + x_1097);
        let x_1101 : vec4<f32> = u_xlat7;
        let x_1102 : vec2<f32> = vec2<f32>(x_1101.z, x_1101.w);
        let x_1104 : f32 = u_xlat22.z;
        txVec12 = vec3<f32>(x_1102.x, x_1102.y, x_1104);
        let x_1111 : vec3<f32> = txVec12;
        let x_1113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1111.xy, x_1111.z);
        u_xlat61 = x_1113;
        let x_1115 : f32 = u_xlat23.x;
        let x_1116 : f32 = u_xlat61;
        let x_1119 : f32 = u_xlat42.x;
        u_xlat4.x = ((x_1115 * x_1116) + x_1119);
      } else {
        let x_1123 : vec3<f32> = u_xlat22;
        let x_1126 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(x_1126.z, x_1126.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1130 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_1130);
        let x_1132 : vec3<f32> = u_xlat22;
        let x_1135 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1138 : vec2<f32> = u_xlat23;
        let x_1140 : vec2<f32> = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1135.z, x_1135.w)) + -(x_1138));
        let x_1141 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1143.x, x_1143.x, x_1143.y, x_1143.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1146 : vec4<f32> = u_xlat6;
        let x_1148 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1146.x, x_1146.x, x_1146.z, x_1146.z) * vec4<f32>(x_1148.x, x_1148.x, x_1148.z, x_1148.z));
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1155 : vec2<f32> = (vec2<f32>(x_1151.y, x_1151.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1156.x, x_1155.x, x_1156.z, x_1155.y);
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1161 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1158.x, x_1158.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1161.x, x_1161.y)));
        let x_1165 : vec4<f32> = u_xlat5;
        let x_1168 : vec2<f32> = (-(vec2<f32>(x_1165.x, x_1165.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1169 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1168.x, x_1169.y, x_1168.y, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat5;
        let x_1173 : vec2<f32> = min(vec2<f32>(x_1171.x, x_1171.y), vec2<f32>(0.0f, 0.0f));
        let x_1174 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat7;
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1182 : vec4<f32> = u_xlat6;
        let x_1184 : vec2<f32> = ((-(vec2<f32>(x_1176.x, x_1176.y)) * vec2<f32>(x_1179.x, x_1179.y)) + vec2<f32>(x_1182.x, x_1182.z));
        let x_1185 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1184.x, x_1185.y, x_1184.y, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat5;
        let x_1189 : vec2<f32> = max(vec2<f32>(x_1187.x, x_1187.y), vec2<f32>(0.0f, 0.0f));
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1195 : vec4<f32> = u_xlat7;
        let x_1198 : vec4<f32> = u_xlat6;
        let x_1200 : vec2<f32> = ((-(vec2<f32>(x_1192.x, x_1192.y)) * vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(x_1198.y, x_1198.w));
        let x_1201 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1201.x, x_1200.x, x_1201.z, x_1200.y);
        let x_1203 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1203 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1207 : f32 = u_xlat6.y;
        u_xlat7.z = (x_1207 * 0.08163200318813323975f);
        let x_1211 : vec2<f32> = u_xlat43;
        let x_1214 : vec2<f32> = (vec2<f32>(x_1211.y, x_1211.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1215 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_1217.x, x_1217.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1221 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1221 * 0.08163200318813323975f);
        let x_1225 : f32 = u_xlat9.y;
        u_xlat7.x = x_1225;
        let x_1227 : vec4<f32> = u_xlat5;
        let x_1234 : vec2<f32> = ((vec2<f32>(x_1227.x, x_1227.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1235 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1235.x, x_1234.x, x_1235.z, x_1234.y);
        let x_1237 : vec4<f32> = u_xlat5;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1237.x, x_1237.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1242 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1241.x, x_1242.y, x_1241.y, x_1242.w);
        let x_1245 : f32 = u_xlat43.x;
        u_xlat6.y = x_1245;
        let x_1248 : f32 = u_xlat8.y;
        u_xlat6.w = x_1248;
        let x_1250 : vec4<f32> = u_xlat6;
        let x_1251 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1250 + x_1251);
        let x_1253 : vec4<f32> = u_xlat5;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1253.y, x_1253.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1257 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1257.x, x_1256.x, x_1257.z, x_1256.y);
        let x_1259 : vec4<f32> = u_xlat5;
        let x_1262 : vec2<f32> = ((vec2<f32>(x_1259.y, x_1259.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1263 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1262.x, x_1263.y, x_1262.y, x_1263.w);
        let x_1266 : f32 = u_xlat43.y;
        u_xlat8.y = x_1266;
        let x_1268 : vec4<f32> = u_xlat8;
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1268 + x_1269);
        let x_1271 : vec4<f32> = u_xlat6;
        let x_1272 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1271 / x_1272);
        let x_1274 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1274 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1280 : vec4<f32> = u_xlat8;
        let x_1281 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1280 / x_1281);
        let x_1283 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1283 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1285 : vec4<f32> = u_xlat6;
        let x_1288 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1285.w, x_1285.x, x_1285.y, x_1285.z) * vec4<f32>(x_1288.x, x_1288.x, x_1288.x, x_1288.x));
        let x_1291 : vec4<f32> = u_xlat8;
        let x_1294 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1291.x, x_1291.w, x_1291.y, x_1291.z) * vec4<f32>(x_1294.y, x_1294.y, x_1294.y, x_1294.y));
        let x_1297 : vec4<f32> = u_xlat6;
        let x_1298 : vec3<f32> = vec3<f32>(x_1297.y, x_1297.z, x_1297.w);
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1298.x, x_1299.y, x_1298.y, x_1298.z);
        let x_1302 : f32 = u_xlat8.x;
        u_xlat9.y = x_1302;
        let x_1304 : vec2<f32> = u_xlat23;
        let x_1307 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y) * vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y)) + vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1310.y));
        let x_1313 : vec2<f32> = u_xlat23;
        let x_1315 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat9;
        let x_1320 : vec2<f32> = ((x_1313 * vec2<f32>(x_1315.x, x_1315.y)) + vec2<f32>(x_1318.w, x_1318.y));
        let x_1321 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1320.x, x_1320.y, x_1321.z, x_1321.w);
        let x_1324 : f32 = u_xlat9.y;
        u_xlat6.y = x_1324;
        let x_1327 : f32 = u_xlat8.z;
        u_xlat9.y = x_1327;
        let x_1329 : vec2<f32> = u_xlat23;
        let x_1332 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y) * vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y)) + vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1335.y));
        let x_1339 : vec2<f32> = u_xlat23;
        let x_1341 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1344 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1339 * vec2<f32>(x_1341.x, x_1341.y)) + vec2<f32>(x_1344.w, x_1344.y));
        let x_1348 : f32 = u_xlat9.y;
        u_xlat6.z = x_1348;
        let x_1350 : vec2<f32> = u_xlat23;
        let x_1353 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y) * vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y)) + vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.z));
        let x_1360 : f32 = u_xlat8.w;
        u_xlat9.y = x_1360;
        let x_1363 : vec2<f32> = u_xlat23;
        let x_1366 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1363.x, x_1363.y, x_1363.x, x_1363.y) * vec4<f32>(x_1366.x, x_1366.y, x_1366.x, x_1366.y)) + vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1369.y));
        let x_1373 : vec2<f32> = u_xlat23;
        let x_1375 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat9;
        u_xlat25 = ((x_1373 * vec2<f32>(x_1375.x, x_1375.y)) + vec2<f32>(x_1378.w, x_1378.y));
        let x_1382 : f32 = u_xlat9.y;
        u_xlat6.w = x_1382;
        let x_1385 : vec2<f32> = u_xlat23;
        let x_1387 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1385 * vec2<f32>(x_1387.x, x_1387.y)) + vec2<f32>(x_1390.x, x_1390.w));
        let x_1393 : vec4<f32> = u_xlat9;
        let x_1394 : vec3<f32> = vec3<f32>(x_1393.x, x_1393.z, x_1393.w);
        let x_1395 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1394.x, x_1395.y, x_1394.y, x_1394.z);
        let x_1397 : vec2<f32> = u_xlat23;
        let x_1400 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1403 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1397.x, x_1397.y, x_1397.x, x_1397.y) * vec4<f32>(x_1400.x, x_1400.y, x_1400.x, x_1400.y)) + vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1403.y));
        let x_1407 : vec2<f32> = u_xlat23;
        let x_1409 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1412 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1407 * vec2<f32>(x_1409.x, x_1409.y)) + vec2<f32>(x_1412.w, x_1412.y));
        let x_1416 : f32 = u_xlat6.x;
        u_xlat8.x = x_1416;
        let x_1418 : vec2<f32> = u_xlat23;
        let x_1420 : vec4<f32> = x_369.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat8;
        u_xlat23 = ((x_1418 * vec2<f32>(x_1420.x, x_1420.y)) + vec2<f32>(x_1423.x, x_1423.y));
        let x_1427 : vec4<f32> = u_xlat5;
        let x_1429 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1427.x, x_1427.x, x_1427.x, x_1427.x) * x_1429);
        let x_1432 : vec4<f32> = u_xlat5;
        let x_1434 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1432.y, x_1432.y, x_1432.y, x_1432.y) * x_1434);
        let x_1437 : vec4<f32> = u_xlat5;
        let x_1439 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1437.z, x_1437.z, x_1437.z, x_1437.z) * x_1439);
        let x_1441 : vec4<f32> = u_xlat5;
        let x_1443 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1441.w, x_1441.w, x_1441.w, x_1441.w) * x_1443);
        let x_1446 : vec4<f32> = u_xlat10;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = u_xlat22.z;
        txVec13 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec13;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
        u_xlat61 = x_1458;
        let x_1460 : vec4<f32> = u_xlat10;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.z, x_1460.w);
        let x_1463 : f32 = u_xlat22.z;
        txVec14 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec14;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1470.xy, x_1470.z);
        u_xlat6.x = x_1472;
        let x_1475 : f32 = u_xlat6.x;
        let x_1477 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1475 * x_1477);
        let x_1481 : f32 = u_xlat16.x;
        let x_1482 : f32 = u_xlat61;
        let x_1485 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1481 * x_1482) + x_1485);
        let x_1488 : vec4<f32> = u_xlat11;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.x, x_1488.y);
        let x_1491 : f32 = u_xlat22.z;
        txVec15 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec15;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1498.xy, x_1498.z);
        u_xlat6.x = x_1500;
        let x_1503 : f32 = u_xlat16.z;
        let x_1505 : f32 = u_xlat6.x;
        let x_1507 : f32 = u_xlat61;
        u_xlat61 = ((x_1503 * x_1505) + x_1507);
        let x_1510 : vec4<f32> = u_xlat13;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.x, x_1510.y);
        let x_1513 : f32 = u_xlat22.z;
        txVec16 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec16;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1520.xy, x_1520.z);
        u_xlat6.x = x_1522;
        let x_1525 : f32 = u_xlat16.w;
        let x_1527 : f32 = u_xlat6.x;
        let x_1529 : f32 = u_xlat61;
        u_xlat61 = ((x_1525 * x_1527) + x_1529);
        let x_1532 : vec4<f32> = u_xlat12;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.x, x_1532.y);
        let x_1535 : f32 = u_xlat22.z;
        txVec17 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec17;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat6.x = x_1544;
        let x_1547 : f32 = u_xlat17.x;
        let x_1549 : f32 = u_xlat6.x;
        let x_1551 : f32 = u_xlat61;
        u_xlat61 = ((x_1547 * x_1549) + x_1551);
        let x_1554 : vec4<f32> = u_xlat12;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.z, x_1554.w);
        let x_1557 : f32 = u_xlat22.z;
        txVec18 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec18;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1564.xy, x_1564.z);
        u_xlat6.x = x_1566;
        let x_1569 : f32 = u_xlat17.y;
        let x_1571 : f32 = u_xlat6.x;
        let x_1573 : f32 = u_xlat61;
        u_xlat61 = ((x_1569 * x_1571) + x_1573);
        let x_1576 : vec2<f32> = u_xlat49;
        let x_1578 : f32 = u_xlat22.z;
        txVec19 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec19;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1585.xy, x_1585.z);
        u_xlat6.x = x_1587;
        let x_1590 : f32 = u_xlat17.z;
        let x_1592 : f32 = u_xlat6.x;
        let x_1594 : f32 = u_xlat61;
        u_xlat61 = ((x_1590 * x_1592) + x_1594);
        let x_1597 : vec4<f32> = u_xlat13;
        let x_1598 : vec2<f32> = vec2<f32>(x_1597.z, x_1597.w);
        let x_1600 : f32 = u_xlat22.z;
        txVec20 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec20;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1607.xy, x_1607.z);
        u_xlat6.x = x_1609;
        let x_1612 : f32 = u_xlat17.w;
        let x_1614 : f32 = u_xlat6.x;
        let x_1616 : f32 = u_xlat61;
        u_xlat61 = ((x_1612 * x_1614) + x_1616);
        let x_1619 : vec4<f32> = u_xlat14;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.x, x_1619.y);
        let x_1622 : f32 = u_xlat22.z;
        txVec21 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec21;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
        u_xlat6.x = x_1631;
        let x_1634 : f32 = u_xlat18.x;
        let x_1636 : f32 = u_xlat6.x;
        let x_1638 : f32 = u_xlat61;
        u_xlat61 = ((x_1634 * x_1636) + x_1638);
        let x_1641 : vec4<f32> = u_xlat14;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.z, x_1641.w);
        let x_1644 : f32 = u_xlat22.z;
        txVec22 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec22;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1651.xy, x_1651.z);
        u_xlat6.x = x_1653;
        let x_1656 : f32 = u_xlat18.y;
        let x_1658 : f32 = u_xlat6.x;
        let x_1660 : f32 = u_xlat61;
        u_xlat61 = ((x_1656 * x_1658) + x_1660);
        let x_1663 : vec2<f32> = u_xlat25;
        let x_1665 : f32 = u_xlat22.z;
        txVec23 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec23;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat6.x = x_1674;
        let x_1677 : f32 = u_xlat18.z;
        let x_1679 : f32 = u_xlat6.x;
        let x_1681 : f32 = u_xlat61;
        u_xlat61 = ((x_1677 * x_1679) + x_1681);
        let x_1684 : vec2<f32> = u_xlat15;
        let x_1686 : f32 = u_xlat22.z;
        txVec24 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
        let x_1693 : vec3<f32> = txVec24;
        let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1693.xy, x_1693.z);
        u_xlat6.x = x_1695;
        let x_1698 : f32 = u_xlat18.w;
        let x_1700 : f32 = u_xlat6.x;
        let x_1702 : f32 = u_xlat61;
        u_xlat61 = ((x_1698 * x_1700) + x_1702);
        let x_1705 : vec4<f32> = u_xlat9;
        let x_1706 : vec2<f32> = vec2<f32>(x_1705.x, x_1705.y);
        let x_1708 : f32 = u_xlat22.z;
        txVec25 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec25;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1715.xy, x_1715.z);
        u_xlat6.x = x_1717;
        let x_1720 : f32 = u_xlat5.x;
        let x_1722 : f32 = u_xlat6.x;
        let x_1724 : f32 = u_xlat61;
        u_xlat61 = ((x_1720 * x_1722) + x_1724);
        let x_1727 : vec4<f32> = u_xlat9;
        let x_1728 : vec2<f32> = vec2<f32>(x_1727.z, x_1727.w);
        let x_1730 : f32 = u_xlat22.z;
        txVec26 = vec3<f32>(x_1728.x, x_1728.y, x_1730);
        let x_1737 : vec3<f32> = txVec26;
        let x_1739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1737.xy, x_1737.z);
        u_xlat5.x = x_1739;
        let x_1742 : f32 = u_xlat5.y;
        let x_1744 : f32 = u_xlat5.x;
        let x_1746 : f32 = u_xlat61;
        u_xlat61 = ((x_1742 * x_1744) + x_1746);
        let x_1749 : vec2<f32> = u_xlat46;
        let x_1751 : f32 = u_xlat22.z;
        txVec27 = vec3<f32>(x_1749.x, x_1749.y, x_1751);
        let x_1758 : vec3<f32> = txVec27;
        let x_1760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1758.xy, x_1758.z);
        u_xlat5.x = x_1760;
        let x_1763 : f32 = u_xlat5.z;
        let x_1765 : f32 = u_xlat5.x;
        let x_1767 : f32 = u_xlat61;
        u_xlat61 = ((x_1763 * x_1765) + x_1767);
        let x_1770 : vec2<f32> = u_xlat23;
        let x_1772 : f32 = u_xlat22.z;
        txVec28 = vec3<f32>(x_1770.x, x_1770.y, x_1772);
        let x_1779 : vec3<f32> = txVec28;
        let x_1781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1779.xy, x_1779.z);
        u_xlat23.x = x_1781;
        let x_1784 : f32 = u_xlat5.w;
        let x_1786 : f32 = u_xlat23.x;
        let x_1788 : f32 = u_xlat61;
        u_xlat4.x = ((x_1784 * x_1786) + x_1788);
      }
    }
  } else {
    let x_1793 : vec3<f32> = u_xlat22;
    let x_1794 : vec2<f32> = vec2<f32>(x_1793.x, x_1793.y);
    let x_1796 : f32 = u_xlat22.z;
    txVec29 = vec3<f32>(x_1794.x, x_1794.y, x_1796);
    let x_1803 : vec3<f32> = txVec29;
    let x_1805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1803.xy, x_1803.z);
    u_xlat4.x = x_1805;
  }
  let x_1808 : f32 = x_369.x_MainLightShadowParams.x;
  u_xlat22.x = (-(x_1808) + 1.0f);
  let x_1813 : f32 = u_xlat4.x;
  let x_1815 : f32 = x_369.x_MainLightShadowParams.x;
  let x_1818 : f32 = u_xlat22.x;
  u_xlat22.x = ((x_1813 * x_1815) + x_1818);
  let x_1823 : f32 = u_xlat22.z;
  u_xlatb41 = (0.0f >= x_1823);
  let x_1827 : f32 = u_xlat22.z;
  u_xlatb60 = (x_1827 >= 1.0f);
  let x_1829 : bool = u_xlatb60;
  let x_1830 : bool = u_xlatb41;
  u_xlatb41 = (x_1829 | x_1830);
  let x_1832 : bool = u_xlatb41;
  if (x_1832) {
    x_1834 = 1.0f;
  } else {
    let x_1839 : f32 = u_xlat22.x;
    x_1834 = x_1839;
  }
  let x_1840 : f32 = x_1834;
  u_xlat22.x = x_1840;
  let x_1843 : vec3<f32> = u_xlat0;
  let x_1846 : vec4<f32> = x_39.x_ScreenParams;
  u_xlat41 = (vec2<f32>(x_1843.x, x_1843.y) * vec2<f32>(x_1846.x, x_1846.y));
  let x_1849 : vec2<f32> = u_xlat41;
  let x_1851 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
  u_xlat41 = (x_1849 * vec2<f32>(x_1851.x, x_1851.y));
  let x_1854 : f32 = u_xlat38;
  let x_1858 : vec2<f32> = (vec2<f32>(x_1854, x_1854) * vec2<f32>(20.0f, 0.25f));
  let x_1859 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1858.x, x_1858.y, x_1859.z, x_1859.w);
  let x_1861 : vec4<f32> = u_xlat4;
  let x_1863 : vec3<f32> = vs_TEXCOORD2;
  let x_1865 : vec3<f32> = (vec3<f32>(x_1861.y, x_1861.y, x_1861.y) * -(x_1863));
  let x_1866 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
  let x_1869 : f32 = x_39.x_Time.x;
  u_xlat6.x = fract(x_1869);
  let x_1873 : f32 = x_39.x_Time.z;
  u_xlat6.y = fract(-(x_1873));
  let x_1877 : vec2<f32> = u_xlat41;
  u_xlat42 = x_1877;
  u_xlat62 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1886 : u32 = u_xlatu_loop_1;
    if ((x_1886 < 4u)) {
    } else {
      break;
    }
    let x_1889 : vec4<f32> = u_xlat6;
    let x_1891 : vec2<f32> = u_xlat42;
    u_xlat42 = (vec2<f32>(x_1889.x, x_1889.y) + x_1891);
    let x_1894 : u32 = u_xlatu_loop_1;
    u_xlat63 = f32(x_1894);
    let x_1896 : f32 = u_xlat63;
    let x_1899 : vec4<f32> = x_39.x_ScreenParams;
    let x_1902 : vec2<f32> = u_xlat42;
    let x_1903 : vec2<f32> = ((vec2<f32>(x_1896, x_1896) * vec2<f32>(x_1899.x, x_1899.y)) + x_1902);
    let x_1904 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1903.x, x_1903.y, x_1904.z, x_1904.w);
    let x_1911 : vec4<f32> = u_xlat7;
    let x_1914 : f32 = x_39.x_GlobalMipBias.x;
    let x_1915 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, vec2<f32>(x_1911.x, x_1911.y), x_1914);
    let x_1916 : vec3<f32> = vec3<f32>(x_1915.x, x_1915.y, x_1915.z);
    let x_1917 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);
    let x_1919 : vec4<f32> = u_xlat7;
    let x_1924 : vec3<f32> = ((vec3<f32>(x_1919.x, x_1919.z, x_1919.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_1925 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
    let x_1927 : vec4<f32> = u_xlat4;
    let x_1929 : vec4<f32> = u_xlat7;
    let x_1931 : vec3<f32> = (vec3<f32>(x_1927.y, x_1927.y, x_1927.y) * vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
    let x_1932 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1931.x, x_1931.y, x_1932.z, x_1931.z);
    let x_1934 : f32 = u_xlat63;
    let x_1936 : vec4<f32> = u_xlat7;
    let x_1938 : vec3<f32> = (vec3<f32>(x_1934, x_1934, x_1934) * vec3<f32>(x_1936.x, x_1936.y, x_1936.w));
    let x_1939 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1938.x, x_1938.y, x_1939.z, x_1938.z);
    let x_1941 : vec4<f32> = u_xlat7;
    let x_1946 : vec3<f32> = vs_TEXCOORD1;
    let x_1947 : vec3<f32> = ((vec3<f32>(x_1941.x, x_1941.y, x_1941.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_1946);
    let x_1948 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1947.x, x_1947.y, x_1948.z, x_1947.z);
    let x_1950 : f32 = u_xlat63;
    let x_1952 : f32 = u_xlat7.z;
    u_xlat63 = (x_1950 + x_1952);
    let x_1954 : vec4<f32> = u_xlat5;
    let x_1956 : f32 = u_xlat63;
    let x_1959 : vec4<f32> = u_xlat7;
    let x_1961 : vec3<f32> = ((vec3<f32>(x_1954.x, x_1954.y, x_1954.z) * vec3<f32>(x_1956, x_1956, x_1956)) + vec3<f32>(x_1959.x, x_1959.y, x_1959.w));
    let x_1962 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
    let x_1964 : vec4<f32> = u_xlat7;
    let x_1967 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
    let x_1970 : vec3<f32> = (vec3<f32>(x_1964.x, x_1964.y, x_1964.z) + -(vec3<f32>(x_1967.x, x_1967.y, x_1967.z)));
    let x_1971 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
    let x_1973 : vec4<f32> = u_xlat7;
    let x_1976 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
    let x_1979 : vec3<f32> = (vec3<f32>(x_1973.x, x_1973.y, x_1973.z) + -(vec3<f32>(x_1976.x, x_1976.y, x_1976.z)));
    let x_1980 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1980.w);
    let x_1982 : vec4<f32> = u_xlat7;
    let x_1985 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
    let x_1988 : vec3<f32> = (vec3<f32>(x_1982.x, x_1982.y, x_1982.z) + -(vec3<f32>(x_1985.x, x_1985.y, x_1985.z)));
    let x_1989 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
    let x_1991 : vec4<f32> = u_xlat7;
    let x_1994 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
    let x_1997 : vec3<f32> = (vec3<f32>(x_1991.x, x_1991.y, x_1991.z) + -(vec3<f32>(x_1994.x, x_1994.y, x_1994.z)));
    let x_1998 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1997.x, x_1997.y, x_1997.z, x_1998.w);
    let x_2000 : vec4<f32> = u_xlat8;
    let x_2002 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_2000.x, x_2000.y, x_2000.z), vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
    let x_2006 : vec4<f32> = u_xlat9;
    let x_2008 : vec4<f32> = u_xlat9;
    u_xlat8.y = dot(vec3<f32>(x_2006.x, x_2006.y, x_2006.z), vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
    let x_2012 : vec4<f32> = u_xlat10;
    let x_2014 : vec4<f32> = u_xlat10;
    u_xlat8.z = dot(vec3<f32>(x_2012.x, x_2012.y, x_2012.z), vec3<f32>(x_2014.x, x_2014.y, x_2014.z));
    let x_2018 : vec4<f32> = u_xlat11;
    let x_2020 : vec4<f32> = u_xlat11;
    u_xlat8.w = dot(vec3<f32>(x_2018.x, x_2018.y, x_2018.z), vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
    let x_2025 : vec4<f32> = u_xlat8;
    let x_2027 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
    u_xlatb8 = (x_2025 < x_2027);
    let x_2030 : bool = u_xlatb8.x;
    u_xlat9.x = select(0.0f, 1.0f, x_2030);
    let x_2034 : bool = u_xlatb8.y;
    u_xlat9.y = select(0.0f, 1.0f, x_2034);
    let x_2038 : bool = u_xlatb8.z;
    u_xlat9.z = select(0.0f, 1.0f, x_2038);
    let x_2042 : bool = u_xlatb8.w;
    u_xlat9.w = select(0.0f, 1.0f, x_2042);
    let x_2046 : bool = u_xlatb8.x;
    u_xlat8.x = select(-0.0f, -1.0f, x_2046);
    let x_2050 : bool = u_xlatb8.y;
    u_xlat8.y = select(-0.0f, -1.0f, x_2050);
    let x_2054 : bool = u_xlatb8.z;
    u_xlat8.z = select(-0.0f, -1.0f, x_2054);
    let x_2057 : vec4<f32> = u_xlat8;
    let x_2059 : vec4<f32> = u_xlat9;
    let x_2061 : vec3<f32> = (vec3<f32>(x_2057.x, x_2057.y, x_2057.z) + vec3<f32>(x_2059.y, x_2059.z, x_2059.w));
    let x_2062 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
    let x_2064 : vec4<f32> = u_xlat8;
    let x_2066 : vec3<f32> = max(vec3<f32>(x_2064.x, x_2064.y, x_2064.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_2067 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2067.x, x_2066.x, x_2066.y, x_2066.z);
    let x_2069 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_2069, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_2071 : f32 = u_xlat63;
    u_xlat63 = (-(x_2071) + 4.0f);
    let x_2075 : f32 = u_xlat63;
    u_xlatu63 = u32(x_2075);
    let x_2078 : u32 = u_xlatu63;
    u_xlati63 = (bitcast<i32>(x_2078) << bitcast<u32>(2i));
    let x_2081 : vec4<f32> = u_xlat7;
    let x_2083 : i32 = u_xlati63;
    let x_2086 : i32 = u_xlati63;
    let x_2090 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2083 + 1i) / 4i)][((x_2086 + 1i) % 4i)];
    let x_2092 : vec3<f32> = (vec3<f32>(x_2081.y, x_2081.y, x_2081.y) * vec3<f32>(x_2090.x, x_2090.y, x_2090.z));
    let x_2093 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
    let x_2095 : i32 = u_xlati63;
    let x_2097 : i32 = u_xlati63;
    let x_2100 : vec4<f32> = x_369.x_MainLightWorldToShadow[(x_2095 / 4i)][(x_2097 % 4i)];
    let x_2102 : vec4<f32> = u_xlat7;
    let x_2105 : vec4<f32> = u_xlat8;
    let x_2107 : vec3<f32> = ((vec3<f32>(x_2100.x, x_2100.y, x_2100.z) * vec3<f32>(x_2102.x, x_2102.x, x_2102.x)) + vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
    let x_2108 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2107.x, x_2107.y, x_2108.z, x_2107.z);
    let x_2110 : i32 = u_xlati63;
    let x_2113 : i32 = u_xlati63;
    let x_2117 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2110 + 2i) / 4i)][((x_2113 + 2i) % 4i)];
    let x_2119 : vec4<f32> = u_xlat7;
    let x_2122 : vec4<f32> = u_xlat7;
    let x_2124 : vec3<f32> = ((vec3<f32>(x_2117.x, x_2117.y, x_2117.z) * vec3<f32>(x_2119.z, x_2119.z, x_2119.z)) + vec3<f32>(x_2122.x, x_2122.y, x_2122.w));
    let x_2125 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
    let x_2127 : vec4<f32> = u_xlat7;
    let x_2129 : i32 = u_xlati63;
    let x_2132 : i32 = u_xlati63;
    let x_2136 : vec4<f32> = x_369.x_MainLightWorldToShadow[((x_2129 + 3i) / 4i)][((x_2132 + 3i) % 4i)];
    let x_2138 : vec3<f32> = (vec3<f32>(x_2127.x, x_2127.y, x_2127.z) + vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
    let x_2139 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);
    let x_2142 : vec4<f32> = u_xlat7;
    let x_2143 : vec2<f32> = vec2<f32>(x_2142.x, x_2142.y);
    let x_2145 : f32 = u_xlat7.z;
    txVec30 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
    let x_2152 : vec3<f32> = txVec30;
    let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2152.xy, x_2152.z);
    u_xlat63 = x_2154;
    let x_2155 : f32 = u_xlat62;
    let x_2156 : f32 = u_xlat63;
    u_xlat62 = (x_2155 + x_2156);

    continuing {
      let x_2158 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2158 + bitcast<u32>(1i));
    }
  }
  let x_2160 : vec3<f32> = vs_TEXCOORD1;
  let x_2163 : vec3<f32> = (x_2160 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_2164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2163.x, x_2163.y, x_2163.z, x_2164.w);
  let x_2166 : vec3<f32> = vs_TEXCOORD1;
  let x_2169 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres0;
  let x_2172 : vec3<f32> = ((x_2166 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2169.x, x_2169.y, x_2169.z)));
  let x_2173 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2172.x, x_2172.y, x_2172.z, x_2173.w);
  let x_2175 : vec3<f32> = vs_TEXCOORD1;
  let x_2178 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres1;
  let x_2181 : vec3<f32> = ((x_2175 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2178.x, x_2178.y, x_2178.z)));
  let x_2182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);
  let x_2184 : vec3<f32> = vs_TEXCOORD1;
  let x_2187 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres2;
  let x_2190 : vec3<f32> = ((x_2184 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2187.x, x_2187.y, x_2187.z)));
  let x_2191 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
  let x_2193 : vec3<f32> = vs_TEXCOORD1;
  let x_2196 : vec4<f32> = x_369.x_CascadeShadowSplitSpheres3;
  let x_2199 : vec3<f32> = ((x_2193 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_2196.x, x_2196.y, x_2196.z)));
  let x_2200 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
  let x_2202 : vec4<f32> = u_xlat6;
  let x_2204 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2202.x, x_2202.y, x_2202.z), vec3<f32>(x_2204.x, x_2204.y, x_2204.z));
  let x_2208 : vec4<f32> = u_xlat7;
  let x_2210 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_2208.x, x_2208.y, x_2208.z), vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
  let x_2214 : vec4<f32> = u_xlat8;
  let x_2216 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_2214.x, x_2214.y, x_2214.z), vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
  let x_2220 : vec4<f32> = u_xlat9;
  let x_2222 : vec4<f32> = u_xlat9;
  u_xlat6.w = dot(vec3<f32>(x_2220.x, x_2220.y, x_2220.z), vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
  let x_2227 : vec4<f32> = u_xlat6;
  let x_2229 : vec4<f32> = x_369.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_2227 < x_2229);
  let x_2232 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_2232);
  let x_2236 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_2236);
  let x_2240 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_2240);
  let x_2244 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_2244);
  let x_2248 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_2248);
  let x_2252 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_2252);
  let x_2256 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_2256);
  let x_2259 : vec4<f32> = u_xlat6;
  let x_2261 : vec4<f32> = u_xlat7;
  let x_2263 : vec3<f32> = (vec3<f32>(x_2259.x, x_2259.y, x_2259.z) + vec3<f32>(x_2261.y, x_2261.z, x_2261.w));
  let x_2264 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
  let x_2266 : vec4<f32> = u_xlat6;
  let x_2268 : vec3<f32> = max(vec3<f32>(x_2266.x, x_2266.y, x_2266.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2269 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2269.x, x_2268.x, x_2268.y, x_2268.z);
  let x_2271 : vec4<f32> = u_xlat7;
  u_xlat41.x = dot(x_2271, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_2275 : f32 = u_xlat41.x;
  u_xlat41.x = (-(x_2275) + 4.0f);
  let x_2281 : f32 = u_xlat41.x;
  u_xlatu41 = u32(x_2281);
  let x_2284 : u32 = u_xlatu41;
  u_xlati41 = (bitcast<i32>(x_2284) << bitcast<u32>(2i));
  let x_2289 : f32 = u_xlat5.y;
  let x_2290 : i32 = u_xlati41;
  let x_2293 : i32 = u_xlati41;
  let x_2297 : f32 = x_369.x_MainLightWorldToShadow[((x_2290 + 1i) / 4i)][((x_2293 + 1i) % 4i)].z;
  u_xlat60 = (x_2289 * x_2297);
  let x_2299 : i32 = u_xlati41;
  let x_2301 : i32 = u_xlati41;
  let x_2304 : f32 = x_369.x_MainLightWorldToShadow[(x_2299 / 4i)][(x_2301 % 4i)].z;
  let x_2306 : f32 = u_xlat5.x;
  let x_2308 : f32 = u_xlat60;
  u_xlat60 = ((x_2304 * x_2306) + x_2308);
  let x_2310 : i32 = u_xlati41;
  let x_2313 : i32 = u_xlati41;
  let x_2317 : f32 = x_369.x_MainLightWorldToShadow[((x_2310 + 2i) / 4i)][((x_2313 + 2i) % 4i)].z;
  let x_2319 : f32 = u_xlat5.z;
  let x_2321 : f32 = u_xlat60;
  u_xlat60 = ((x_2317 * x_2319) + x_2321);
  let x_2323 : f32 = u_xlat60;
  let x_2324 : i32 = u_xlati41;
  let x_2327 : i32 = u_xlati41;
  let x_2331 : f32 = x_369.x_MainLightWorldToShadow[((x_2324 + 3i) / 4i)][((x_2327 + 3i) % 4i)].z;
  u_xlat41.x = (x_2323 + x_2331);
  let x_2335 : f32 = u_xlat41.x;
  u_xlatb60 = (0.0f >= x_2335);
  let x_2338 : f32 = u_xlat41.x;
  u_xlatb41 = (x_2338 >= 1.0f);
  let x_2340 : bool = u_xlatb41;
  let x_2341 : bool = u_xlatb60;
  u_xlatb41 = (x_2340 | x_2341);
  let x_2343 : f32 = u_xlat62;
  u_xlat60 = (x_2343 * 0.25f);
  let x_2345 : bool = u_xlatb41;
  let x_2346 : f32 = u_xlat60;
  u_xlat41.x = select(x_2346, 1.0f, x_2345);
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
  let x_3047 : f32 = u_xlat57;
  let x_3049 : vec3<f32> = u_xlat1;
  let x_3051 : vec3<f32> = u_xlat0;
  let x_3052 : vec3<f32> = ((vec3<f32>(x_3047, x_3047, x_3047) * x_3049) + x_3051);
  let x_3053 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3052.x, x_3052.y, x_3052.z, x_3053.w);
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


