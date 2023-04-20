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

var<private> u_xlat22 : f32;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat33 : f32;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_WaterDepthMap_linear_clamp : sampler;

var<private> u_xlat34 : f32;

@group(0) @binding(6) var x_SurfaceMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_SurfaceMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat24 : vec2<f32>;

var<private> u_xlat3 : f32;

@group(1) @binding(3) var<uniform> x_204 : UnityPerMaterial;

var<private> vs_NORMAL0 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlatb14 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_367 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu14 : u32;

var<private> u_xlati14 : i32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlatb25 : bool;

var<private> u_xlatb36 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat38 : f32;

@group(0) @binding(8) var x_DitherPattern : texture_2d<f32>;

@group(0) @binding(17) var sampler_DitherPattern : sampler;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlatu38 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu25 : u32;

var<private> u_xlati25 : i32;

var<private> u_xlat36 : f32;

@group(1) @binding(2) var<uniform> x_1095 : UnityPerDraw;

var<private> u_xlat35 : f32;

@group(0) @binding(7) var x_FoamMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_FoamMap : sampler;

@group(0) @binding(5) var x_AbsorptionScatteringRamp : texture_2d<f32>;

@group(0) @binding(14) var sampler_AbsorptionScatteringRamp : sampler;

var<private> u_xlatu1 : u32;

var<private> u_xlati39 : i32;

@group(1) @binding(1) var<uniform> x_1506 : AdditionalLights;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var x_PlanarReflectionTexture : texture_2d<f32>;

@group(0) @binding(3) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture_linear_clamp : sampler;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatu37 : u32;

var<private> u_xlatb38 : bool;

fn main_1() {
  var x_322 : vec2<f32>;
  var txVec0 : vec3<f32>;
  var x_597 : f32;
  var u_xlatu_loop_1 : u32;
  var txVec1 : vec3<f32>;
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
  u_xlat22 = x_60.x;
  let x_65 : f32 = x_39.x_ZBufferParams.z;
  let x_66 : f32 = u_xlat22;
  let x_70 : f32 = x_39.x_ZBufferParams.w;
  u_xlat22 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_73);
  let x_75 : f32 = u_xlat22;
  let x_79 : f32 = vs_TEXCOORD5.x;
  let x_83 : f32 = vs_TEXCOORD5.y;
  u_xlat22 = ((x_75 * x_79) + -(x_83));
  let x_89 : vec3<f32> = vs_TEXCOORD1;
  let x_96 : vec2<f32> = ((vec2<f32>(x_89.x, x_89.z) * vec2<f32>(0.00200000009499490261f, 0.00200000009499490261f)) + vec2<f32>(0.5f, 0.5f));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_105 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_105.x, x_105.y), 1.0f);
  u_xlat33 = x_107.x;
  let x_109 : f32 = u_xlat33;
  u_xlat33 = (-(x_109) + 1.0f);
  let x_115 : f32 = x_39.x_MaxDepth;
  let x_118 : f32 = x_39.x_VeraslWater_DepthCamParams.x;
  u_xlat34 = (x_115 + x_118);
  let x_120 : f32 = u_xlat33;
  let x_121 : f32 = u_xlat34;
  let x_124 : f32 = x_39.x_VeraslWater_DepthCamParams.x;
  u_xlat33 = ((x_120 * x_121) + -(x_124));
  let x_127 : f32 = u_xlat33;
  let x_129 : f32 = vs_TEXCOORD1.y;
  u_xlat33 = (x_127 + x_129);
  let x_132 : f32 = x_39.x_MaxDepth;
  u_xlat34 = (1.0f / x_132);
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
  u_xlat24 = vec2<f32>(x_167.x, x_167.y);
  let x_169 : vec2<f32> = u_xlat24;
  u_xlat24 = ((x_169 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_172 : vec2<f32> = u_xlat24;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec2<f32> = ((x_172 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_174.x, x_174.y));
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_180 : f32 = u_xlat22;
  u_xlat3 = (x_180 * 0.00499999988824129105f);
  let x_183 : f32 = u_xlat22;
  u_xlat24.x = ((x_183 * 0.25f) + 0.25f);
  let x_189 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_189, 0.0f, 1.0f);
  let x_193 : vec2<f32> = u_xlat24;
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
  u_xlat12.x = dot(vec3<f32>(x_234.x, x_234.y, x_234.z), vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_241 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_241);
  let x_244 : vec2<f32> = u_xlat12;
  let x_246 : vec4<f32> = u_xlat2;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.x, x_244.x) * vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = x_39.unity_MatrixVP[1i];
  u_xlat12 = (-(vec2<f32>(x_251.y, x_251.y)) * vec2<f32>(x_258.x, x_258.z));
  let x_262 : vec4<f32> = x_39.unity_MatrixVP[0i];
  let x_264 : vec4<f32> = u_xlat2;
  let x_268 : vec2<f32> = u_xlat12;
  u_xlat12 = ((vec2<f32>(x_262.x, x_262.z) * -(vec2<f32>(x_264.x, x_264.x))) + x_268);
  let x_272 : vec4<f32> = x_39.unity_MatrixVP[2i];
  let x_274 : vec4<f32> = u_xlat2;
  let x_278 : vec2<f32> = u_xlat12;
  u_xlat12 = ((vec2<f32>(x_272.x, x_272.z) * -(vec2<f32>(x_274.z, x_274.z))) + x_278);
  let x_280 : f32 = u_xlat3;
  u_xlat3 = x_280;
  let x_281 : f32 = u_xlat3;
  u_xlat3 = clamp(x_281, 0.0f, 1.0f);
  let x_283 : vec2<f32> = u_xlat12;
  let x_284 : f32 = u_xlat3;
  let x_287 : vec3<f32> = u_xlat0;
  u_xlat12 = ((x_283 * vec2<f32>(x_284, x_284)) + vec2<f32>(x_287.x, x_287.y));
  let x_293 : vec2<f32> = u_xlat12;
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
  u_xlatb14 = (x_318 < 0.0f);
  let x_320 : bool = u_xlatb14;
  if (x_320) {
    let x_325 : vec3<f32> = u_xlat0;
    x_322 = vec2<f32>(x_325.x, x_325.y);
  } else {
    let x_328 : vec2<f32> = u_xlat12;
    x_322 = x_328;
  }
  let x_329 : vec2<f32> = x_322;
  u_xlat12 = x_329;
  let x_330 : bool = u_xlatb14;
  let x_331 : f32 = u_xlat22;
  let x_332 : f32 = u_xlat3;
  u_xlat22 = select(x_332, x_331, x_330);
  let x_334 : vec4<f32> = u_xlat2;
  let x_337 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), x_337);
  let x_339 : f32 = u_xlat3;
  u_xlat3 = (-(x_339) + 1.0f);
  let x_343 : f32 = u_xlat3;
  let x_344 : f32 = u_xlat3;
  u_xlat14.x = (x_343 * x_344);
  let x_348 : f32 = u_xlat14.x;
  let x_350 : f32 = u_xlat14.x;
  u_xlat14.x = (x_348 * x_350);
  let x_354 : f32 = u_xlat14.x;
  let x_355 : f32 = u_xlat3;
  u_xlat3 = (x_354 * x_355);
  let x_357 : f32 = u_xlat3;
  u_xlat3 = clamp(x_357, 0.0f, 1.0f);
  let x_359 : vec3<f32> = vs_TEXCOORD1;
  let x_369 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
  u_xlat14 = (x_359 + -(vec3<f32>(x_369.x, x_369.y, x_369.z)));
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
  let x_402 : vec3<f32> = u_xlat14;
  let x_403 : vec3<f32> = u_xlat14;
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
  let x_429 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_427 < x_429);
  let x_432 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_432);
  let x_436 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_436);
  let x_440 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_440);
  let x_444 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_444);
  let x_448 : bool = u_xlatb4.x;
  u_xlat14.x = select(-0.0f, -1.0f, x_448);
  let x_453 : bool = u_xlatb4.y;
  u_xlat14.y = select(-0.0f, -1.0f, x_453);
  let x_457 : bool = u_xlatb4.z;
  u_xlat14.z = select(-0.0f, -1.0f, x_457);
  let x_460 : vec3<f32> = u_xlat14;
  let x_461 : vec4<f32> = u_xlat5;
  u_xlat14 = (x_460 + vec3<f32>(x_461.y, x_461.z, x_461.w));
  let x_464 : vec3<f32> = u_xlat14;
  let x_466 : vec3<f32> = max(x_464, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_467 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_467.x, x_466.x, x_466.y, x_466.z);
  let x_469 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(x_469, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_476 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_476) + 4.0f);
  let x_483 : f32 = u_xlat14.x;
  u_xlatu14 = u32(x_483);
  let x_487 : u32 = u_xlatu14;
  u_xlati14 = (bitcast<i32>(x_487) << bitcast<u32>(2i));
  let x_490 : vec3<f32> = vs_TEXCOORD1;
  let x_492 : i32 = u_xlati14;
  let x_495 : i32 = u_xlati14;
  let x_499 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_492 + 1i) / 4i)][((x_495 + 1i) % 4i)];
  let x_501 : vec3<f32> = (vec3<f32>(x_490.y, x_490.y, x_490.y) * vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : i32 = u_xlati14;
  let x_506 : i32 = u_xlati14;
  let x_509 : vec4<f32> = x_367.x_MainLightWorldToShadow[(x_504 / 4i)][(x_506 % 4i)];
  let x_511 : vec3<f32> = vs_TEXCOORD1;
  let x_514 : vec4<f32> = u_xlat4;
  let x_516 : vec3<f32> = ((vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_511.x, x_511.x, x_511.x)) + vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : i32 = u_xlati14;
  let x_522 : i32 = u_xlati14;
  let x_526 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_519 + 2i) / 4i)][((x_522 + 2i) % 4i)];
  let x_528 : vec3<f32> = vs_TEXCOORD1;
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : vec3<f32> = ((vec3<f32>(x_526.x, x_526.y, x_526.z) * vec3<f32>(x_528.z, x_528.z, x_528.z)) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec4<f32> = u_xlat4;
  let x_538 : i32 = u_xlati14;
  let x_541 : i32 = u_xlati14;
  let x_545 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_538 + 3i) / 4i)][((x_541 + 3i) % 4i)];
  u_xlat14 = (vec3<f32>(x_536.x, x_536.y, x_536.z) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_550 : vec3<f32> = u_xlat14;
  let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
  let x_553 : f32 = u_xlat14.z;
  txVec0 = vec3<f32>(x_551.x, x_551.y, x_553);
  let x_565 : vec3<f32> = txVec0;
  let x_567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_565.xy, x_565.z);
  u_xlat14.x = x_567;
  let x_571 : f32 = x_367.x_MainLightShadowParams.x;
  u_xlat25.x = (-(x_571) + 1.0f);
  let x_576 : f32 = u_xlat14.x;
  let x_578 : f32 = x_367.x_MainLightShadowParams.x;
  let x_581 : f32 = u_xlat25.x;
  u_xlat14.x = ((x_576 * x_578) + x_581);
  let x_586 : f32 = u_xlat14.z;
  u_xlatb25 = (0.0f >= x_586);
  let x_590 : f32 = u_xlat14.z;
  u_xlatb36 = (x_590 >= 1.0f);
  let x_592 : bool = u_xlatb36;
  let x_593 : bool = u_xlatb25;
  u_xlatb25 = (x_592 | x_593);
  let x_595 : bool = u_xlatb25;
  if (x_595) {
    x_597 = 1.0f;
  } else {
    let x_602 : f32 = u_xlat14.x;
    x_597 = x_602;
  }
  let x_603 : f32 = x_597;
  u_xlat14.x = x_603;
  let x_605 : vec3<f32> = u_xlat0;
  let x_608 : vec4<f32> = x_39.x_ScreenParams;
  u_xlat25 = (vec2<f32>(x_605.x, x_605.y) * vec2<f32>(x_608.x, x_608.y));
  let x_611 : f32 = u_xlat22;
  let x_615 : vec2<f32> = (vec2<f32>(x_611, x_611) * vec2<f32>(20.0f, 0.25f));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat4;
  let x_620 : vec3<f32> = vs_TEXCOORD2;
  let x_622 : vec3<f32> = (vec3<f32>(x_618.y, x_618.y, x_618.y) * -(x_620));
  let x_623 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  u_xlat26 = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_633 : u32 = u_xlatu_loop_1;
    if ((x_633 < 4u)) {
    } else {
      break;
    }
    let x_637 : u32 = u_xlatu_loop_1;
    u_xlat38 = f32(x_637);
    let x_639 : f32 = u_xlat38;
    let x_642 : vec4<f32> = x_39.x_ScreenParams;
    let x_644 : vec2<f32> = (vec2<f32>(x_639, x_639) * vec2<f32>(x_642.x, x_642.y));
    let x_645 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
    let x_647 : vec2<f32> = u_xlat25;
    let x_649 : vec4<f32> = x_204.x_DitherPattern_TexelSize;
    let x_652 : vec4<f32> = u_xlat6;
    let x_654 : vec2<f32> = ((x_647 * vec2<f32>(x_649.x, x_649.y)) + vec2<f32>(x_652.x, x_652.y));
    let x_655 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
    let x_662 : vec4<f32> = u_xlat6;
    let x_665 : f32 = x_39.x_GlobalMipBias.x;
    let x_666 : vec4<f32> = textureSampleBias(x_DitherPattern, sampler_DitherPattern, vec2<f32>(x_662.x, x_662.y), x_665);
    let x_667 : vec3<f32> = vec3<f32>(x_666.x, x_666.y, x_666.z);
    let x_668 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
    let x_670 : vec4<f32> = u_xlat6;
    let x_675 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.z, x_670.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
    let x_676 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
    let x_678 : vec4<f32> = u_xlat4;
    let x_680 : vec4<f32> = u_xlat6;
    let x_682 : vec3<f32> = (vec3<f32>(x_678.y, x_678.y, x_678.y) * vec3<f32>(x_680.x, x_680.y, x_680.z));
    let x_683 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_682.z);
    let x_685 : f32 = u_xlat38;
    let x_687 : vec4<f32> = u_xlat6;
    let x_689 : vec3<f32> = (vec3<f32>(x_685, x_685, x_685) * vec3<f32>(x_687.x, x_687.y, x_687.w));
    let x_690 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_689.z);
    let x_692 : vec4<f32> = u_xlat6;
    let x_697 : vec3<f32> = vs_TEXCOORD1;
    let x_698 : vec3<f32> = ((vec3<f32>(x_692.x, x_692.y, x_692.w) * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + x_697);
    let x_699 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_698.z);
    let x_701 : f32 = u_xlat38;
    let x_703 : f32 = u_xlat6.z;
    u_xlat38 = (x_701 + x_703);
    let x_705 : vec4<f32> = u_xlat5;
    let x_707 : f32 = u_xlat38;
    let x_710 : vec4<f32> = u_xlat6;
    let x_712 : vec3<f32> = ((vec3<f32>(x_705.x, x_705.y, x_705.z) * vec3<f32>(x_707, x_707, x_707)) + vec3<f32>(x_710.x, x_710.y, x_710.w));
    let x_713 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
    let x_715 : vec4<f32> = u_xlat6;
    let x_718 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
    let x_721 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) + -(vec3<f32>(x_718.x, x_718.y, x_718.z)));
    let x_722 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
    let x_725 : vec4<f32> = u_xlat6;
    let x_728 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
    let x_731 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) + -(vec3<f32>(x_728.x, x_728.y, x_728.z)));
    let x_732 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
    let x_735 : vec4<f32> = u_xlat6;
    let x_738 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
    u_xlat9 = (vec3<f32>(x_735.x, x_735.y, x_735.z) + -(vec3<f32>(x_738.x, x_738.y, x_738.z)));
    let x_743 : vec4<f32> = u_xlat6;
    let x_746 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
    u_xlat10 = (vec3<f32>(x_743.x, x_743.y, x_743.z) + -(vec3<f32>(x_746.x, x_746.y, x_746.z)));
    let x_750 : vec4<f32> = u_xlat7;
    let x_752 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_750.x, x_750.y, x_750.z), vec3<f32>(x_752.x, x_752.y, x_752.z));
    let x_756 : vec4<f32> = u_xlat8;
    let x_758 : vec4<f32> = u_xlat8;
    u_xlat7.y = dot(vec3<f32>(x_756.x, x_756.y, x_756.z), vec3<f32>(x_758.x, x_758.y, x_758.z));
    let x_762 : vec3<f32> = u_xlat9;
    let x_763 : vec3<f32> = u_xlat9;
    u_xlat7.z = dot(x_762, x_763);
    let x_766 : vec3<f32> = u_xlat10;
    let x_767 : vec3<f32> = u_xlat10;
    u_xlat7.w = dot(x_766, x_767);
    let x_771 : vec4<f32> = u_xlat7;
    let x_773 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
    u_xlatb7 = (x_771 < x_773);
    let x_776 : bool = u_xlatb7.x;
    u_xlat8.x = select(0.0f, 1.0f, x_776);
    let x_780 : bool = u_xlatb7.y;
    u_xlat8.y = select(0.0f, 1.0f, x_780);
    let x_784 : bool = u_xlatb7.z;
    u_xlat8.z = select(0.0f, 1.0f, x_784);
    let x_788 : bool = u_xlatb7.w;
    u_xlat8.w = select(0.0f, 1.0f, x_788);
    let x_792 : bool = u_xlatb7.x;
    u_xlat7.x = select(-0.0f, -1.0f, x_792);
    let x_796 : bool = u_xlatb7.y;
    u_xlat7.y = select(-0.0f, -1.0f, x_796);
    let x_800 : bool = u_xlatb7.z;
    u_xlat7.z = select(-0.0f, -1.0f, x_800);
    let x_803 : vec4<f32> = u_xlat7;
    let x_805 : vec4<f32> = u_xlat8;
    let x_807 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) + vec3<f32>(x_805.y, x_805.z, x_805.w));
    let x_808 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
    let x_810 : vec4<f32> = u_xlat7;
    let x_812 : vec3<f32> = max(vec3<f32>(x_810.x, x_810.y, x_810.z), vec3<f32>(0.0f, 0.0f, 0.0f));
    let x_813 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_813.x, x_812.x, x_812.y, x_812.z);
    let x_815 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_815, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
    let x_817 : f32 = u_xlat38;
    u_xlat38 = (-(x_817) + 4.0f);
    let x_821 : f32 = u_xlat38;
    u_xlatu38 = u32(x_821);
    let x_824 : u32 = u_xlatu38;
    u_xlati38 = (bitcast<i32>(x_824) << bitcast<u32>(2i));
    let x_827 : vec4<f32> = u_xlat6;
    let x_829 : i32 = u_xlati38;
    let x_832 : i32 = u_xlati38;
    let x_836 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_829 + 1i) / 4i)][((x_832 + 1i) % 4i)];
    let x_838 : vec3<f32> = (vec3<f32>(x_827.y, x_827.y, x_827.y) * vec3<f32>(x_836.x, x_836.y, x_836.z));
    let x_839 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
    let x_841 : i32 = u_xlati38;
    let x_843 : i32 = u_xlati38;
    let x_846 : vec4<f32> = x_367.x_MainLightWorldToShadow[(x_841 / 4i)][(x_843 % 4i)];
    let x_848 : vec4<f32> = u_xlat6;
    let x_851 : vec4<f32> = u_xlat7;
    let x_853 : vec3<f32> = ((vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(x_848.x, x_848.x, x_848.x)) + vec3<f32>(x_851.x, x_851.y, x_851.z));
    let x_854 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_853.x, x_853.y, x_854.z, x_853.z);
    let x_856 : i32 = u_xlati38;
    let x_859 : i32 = u_xlati38;
    let x_863 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_856 + 2i) / 4i)][((x_859 + 2i) % 4i)];
    let x_865 : vec4<f32> = u_xlat6;
    let x_868 : vec4<f32> = u_xlat6;
    let x_870 : vec3<f32> = ((vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(x_865.z, x_865.z, x_865.z)) + vec3<f32>(x_868.x, x_868.y, x_868.w));
    let x_871 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
    let x_873 : vec4<f32> = u_xlat6;
    let x_875 : i32 = u_xlati38;
    let x_878 : i32 = u_xlati38;
    let x_882 : vec4<f32> = x_367.x_MainLightWorldToShadow[((x_875 + 3i) / 4i)][((x_878 + 3i) % 4i)];
    let x_884 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) + vec3<f32>(x_882.x, x_882.y, x_882.z));
    let x_885 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
    let x_888 : vec4<f32> = u_xlat6;
    let x_889 : vec2<f32> = vec2<f32>(x_888.x, x_888.y);
    let x_891 : f32 = u_xlat6.z;
    txVec1 = vec3<f32>(x_889.x, x_889.y, x_891);
    let x_898 : vec3<f32> = txVec1;
    let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
    u_xlat38 = x_900;
    let x_901 : f32 = u_xlat26;
    let x_902 : f32 = u_xlat38;
    u_xlat26 = (x_901 + x_902);

    continuing {
      let x_904 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_904 + bitcast<u32>(1i));
    }
  }
  let x_906 : vec3<f32> = vs_TEXCOORD1;
  let x_909 : vec3<f32> = (x_906 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f));
  let x_910 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec3<f32> = vs_TEXCOORD1;
  let x_915 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres0;
  let x_918 : vec3<f32> = ((x_912 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_915.x, x_915.y, x_915.z)));
  let x_919 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec3<f32> = vs_TEXCOORD1;
  let x_924 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres1;
  let x_927 : vec3<f32> = ((x_921 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_924.x, x_924.y, x_924.z)));
  let x_928 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : vec3<f32> = vs_TEXCOORD1;
  let x_933 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres2;
  let x_936 : vec3<f32> = ((x_930 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_933.x, x_933.y, x_933.z)));
  let x_937 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec3<f32> = vs_TEXCOORD1;
  let x_942 : vec4<f32> = x_367.x_CascadeShadowSplitSpheres3;
  u_xlat9 = ((x_939 * vec3<f32>(1.10000002384185791016f, 1.10000002384185791016f, 1.10000002384185791016f)) + -(vec3<f32>(x_942.x, x_942.y, x_942.z)));
  let x_946 : vec4<f32> = u_xlat6;
  let x_948 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_946.x, x_946.y, x_946.z), vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_952 : vec4<f32> = u_xlat7;
  let x_954 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_952.x, x_952.y, x_952.z), vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_958 : vec4<f32> = u_xlat8;
  let x_960 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_958.x, x_958.y, x_958.z), vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_964 : vec3<f32> = u_xlat9;
  let x_965 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_964, x_965);
  let x_969 : vec4<f32> = u_xlat6;
  let x_971 : vec4<f32> = x_367.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_969 < x_971);
  let x_974 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_974);
  let x_978 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_978);
  let x_982 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_982);
  let x_986 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_986);
  let x_990 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_990);
  let x_994 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_994);
  let x_998 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_998);
  let x_1001 : vec4<f32> = u_xlat6;
  let x_1003 : vec4<f32> = u_xlat7;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(x_1003.y, x_1003.z, x_1003.w));
  let x_1006 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat6;
  let x_1010 : vec3<f32> = max(vec3<f32>(x_1008.x, x_1008.y, x_1008.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1011.x, x_1010.x, x_1010.y, x_1010.z);
  let x_1013 : vec4<f32> = u_xlat7;
  u_xlat25.x = dot(x_1013, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_1017 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_1017) + 4.0f);
  let x_1023 : f32 = u_xlat25.x;
  u_xlatu25 = u32(x_1023);
  let x_1026 : u32 = u_xlatu25;
  u_xlati25 = (bitcast<i32>(x_1026) << bitcast<u32>(2i));
  let x_1031 : f32 = u_xlat5.y;
  let x_1032 : i32 = u_xlati25;
  let x_1035 : i32 = u_xlati25;
  let x_1039 : f32 = x_367.x_MainLightWorldToShadow[((x_1032 + 1i) / 4i)][((x_1035 + 1i) % 4i)].z;
  u_xlat36 = (x_1031 * x_1039);
  let x_1041 : i32 = u_xlati25;
  let x_1043 : i32 = u_xlati25;
  let x_1046 : f32 = x_367.x_MainLightWorldToShadow[(x_1041 / 4i)][(x_1043 % 4i)].z;
  let x_1048 : f32 = u_xlat5.x;
  let x_1050 : f32 = u_xlat36;
  u_xlat36 = ((x_1046 * x_1048) + x_1050);
  let x_1052 : i32 = u_xlati25;
  let x_1055 : i32 = u_xlati25;
  let x_1059 : f32 = x_367.x_MainLightWorldToShadow[((x_1052 + 2i) / 4i)][((x_1055 + 2i) % 4i)].z;
  let x_1061 : f32 = u_xlat5.z;
  let x_1063 : f32 = u_xlat36;
  u_xlat36 = ((x_1059 * x_1061) + x_1063);
  let x_1065 : f32 = u_xlat36;
  let x_1066 : i32 = u_xlati25;
  let x_1069 : i32 = u_xlati25;
  let x_1073 : f32 = x_367.x_MainLightWorldToShadow[((x_1066 + 3i) / 4i)][((x_1069 + 3i) % 4i)].z;
  u_xlat25.x = (x_1065 + x_1073);
  let x_1077 : f32 = u_xlat25.x;
  u_xlatb36 = (0.0f >= x_1077);
  let x_1080 : f32 = u_xlat25.x;
  u_xlatb25 = (x_1080 >= 1.0f);
  let x_1082 : bool = u_xlatb25;
  let x_1083 : bool = u_xlatb36;
  u_xlatb25 = (x_1082 | x_1083);
  let x_1085 : f32 = u_xlat26;
  u_xlat36 = (x_1085 * 0.25f);
  let x_1087 : bool = u_xlatb25;
  let x_1088 : f32 = u_xlat36;
  u_xlat25.x = select(x_1088, 1.0f, x_1087);
  u_xlat2.w = 1.0f;
  let x_1098 : vec4<f32> = x_1095.unity_SHAr;
  let x_1099 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_1098, x_1099);
  let x_1104 : vec4<f32> = x_1095.unity_SHAg;
  let x_1105 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_1104, x_1105);
  let x_1110 : vec4<f32> = x_1095.unity_SHAb;
  let x_1111 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_1110, x_1111);
  let x_1114 : vec4<f32> = u_xlat2;
  let x_1116 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_1114.y, x_1114.z, x_1114.z, x_1114.x) * vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1116.z));
  let x_1121 : vec4<f32> = x_1095.unity_SHBr;
  let x_1122 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_1121, x_1122);
  let x_1127 : vec4<f32> = x_1095.unity_SHBg;
  let x_1128 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_1127, x_1128);
  let x_1133 : vec4<f32> = x_1095.unity_SHBb;
  let x_1134 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_1133, x_1134);
  let x_1139 : f32 = u_xlat2.y;
  let x_1141 : f32 = u_xlat2.y;
  u_xlat35 = (x_1139 * x_1141);
  let x_1144 : f32 = u_xlat2.x;
  let x_1146 : f32 = u_xlat2.x;
  let x_1148 : f32 = u_xlat35;
  u_xlat35 = ((x_1144 * x_1146) + -(x_1148));
  let x_1153 : vec4<f32> = x_1095.unity_SHC;
  let x_1155 : f32 = u_xlat35;
  let x_1158 : vec4<f32> = u_xlat7;
  let x_1160 : vec3<f32> = ((vec3<f32>(x_1153.x, x_1153.y, x_1153.z) * vec3<f32>(x_1155, x_1155, x_1155)) + vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
  let x_1161 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
  let x_1163 : vec4<f32> = u_xlat5;
  let x_1165 : vec4<f32> = u_xlat6;
  let x_1167 : vec3<f32> = (vec3<f32>(x_1163.x, x_1163.y, x_1163.z) + vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : vec4<f32> = u_xlat5;
  let x_1172 : vec3<f32> = max(vec3<f32>(x_1170.x, x_1170.y, x_1170.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1173 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
  let x_1175 : vec3<f32> = vs_TEXCOORD2;
  let x_1177 : vec4<f32> = x_39.x_MainLightPosition;
  u_xlat35 = dot(x_1175, -(vec3<f32>(x_1177.x, x_1177.y, x_1177.z)));
  let x_1181 : f32 = u_xlat35;
  let x_1183 : f32 = vs_TEXCOORD5.z;
  u_xlat35 = (x_1181 * x_1183);
  let x_1185 : f32 = u_xlat35;
  let x_1186 : f32 = u_xlat35;
  u_xlat36 = (x_1185 * x_1186);
  let x_1188 : f32 = u_xlat35;
  let x_1189 : f32 = u_xlat36;
  u_xlat35 = (x_1188 * x_1189);
  let x_1191 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1191, 0.0f, 1.0f);
  let x_1193 : f32 = u_xlat35;
  u_xlat35 = (x_1193 * 5.0f);
  let x_1196 : f32 = u_xlat35;
  let x_1199 : vec4<f32> = x_39.x_MainLightColor;
  let x_1201 : vec3<f32> = (vec3<f32>(x_1196, x_1196, x_1196) * vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
  let x_1202 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1205 : vec4<f32> = x_39.x_MainLightPosition;
  let x_1208 : vec4<f32> = x_39.x_MainLightColor;
  let x_1211 : vec4<f32> = u_xlat6;
  let x_1213 : vec3<f32> = ((vec3<f32>(x_1205.y, x_1205.y, x_1205.y) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z)) + vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1216 : vec4<f32> = u_xlat6;
  let x_1218 : vec2<f32> = u_xlat25;
  let x_1221 : vec4<f32> = u_xlat5;
  let x_1223 : vec3<f32> = ((vec3<f32>(x_1216.x, x_1216.y, x_1216.z) * vec3<f32>(x_1218.x, x_1218.x, x_1218.x)) + vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  let x_1231 : vec4<f32> = vs_TEXCOORD0;
  let x_1234 : f32 = x_39.x_GlobalMipBias.x;
  let x_1235 : vec4<f32> = textureSampleBias(x_FoamMap, sampler_FoamMap, vec2<f32>(x_1231.z, x_1231.w), x_1234);
  let x_1236 : vec3<f32> = vec3<f32>(x_1235.x, x_1235.y, x_1235.z);
  let x_1237 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
  let x_1240 : f32 = u_xlat4.x;
  u_xlat4.x = x_1240;
  let x_1243 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1243, 0.0f, 1.0f);
  let x_1247 : f32 = vs_TEXCOORD5.z;
  u_xlat35 = (x_1247 + -0.375f);
  let x_1250 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1250, 0.0f, 1.0f);
  let x_1252 : f32 = u_xlat22;
  u_xlat36 = ((-(x_1252) * 4.0f) + 1.0f);
  let x_1256 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1256, 0.0f, 1.0f);
  let x_1258 : f32 = u_xlat33;
  let x_1259 : f32 = u_xlat22;
  u_xlat33 = min(x_1258, x_1259);
  let x_1261 : f32 = u_xlat33;
  u_xlat33 = ((-(x_1261) * 0.5f) + 0.75f);
  let x_1266 : f32 = u_xlat36;
  let x_1268 : f32 = u_xlat33;
  u_xlat33 = ((x_1266 * 0.5f) + x_1268);
  let x_1270 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1270, 0.0f, 1.0f);
  let x_1273 : f32 = u_xlat4.x;
  let x_1274 : f32 = u_xlat33;
  u_xlat33 = (x_1273 * x_1274);
  let x_1276 : f32 = u_xlat33;
  let x_1277 : f32 = u_xlat35;
  u_xlat33 = max(x_1276, x_1277);
  let x_1280 : f32 = u_xlat1.x;
  let x_1282 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1280 + x_1282);
  let x_1285 : f32 = u_xlat33;
  let x_1287 : f32 = u_xlat1.x;
  u_xlat8.x = max(x_1285, x_1287);
  u_xlat8.y = 0.66000002622604370117f;
  let x_1297 : vec4<f32> = u_xlat8;
  let x_1300 : f32 = x_39.x_GlobalMipBias.x;
  let x_1301 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1297.x, x_1297.y), x_1300);
  let x_1302 : vec3<f32> = vec3<f32>(x_1301.x, x_1301.y, x_1301.z);
  let x_1303 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1302.x, x_1303.y, x_1302.y, x_1302.z);
  let x_1305 : vec4<f32> = u_xlat4;
  let x_1307 : vec4<f32> = u_xlat7;
  let x_1309 : vec3<f32> = (vec3<f32>(x_1305.x, x_1305.z, x_1305.w) * vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
  let x_1310 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1309.x, x_1310.y, x_1309.y, x_1309.z);
  let x_1312 : vec4<f32> = u_xlat4;
  let x_1314 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_1312.x, x_1312.z, x_1312.w), vec3<f32>(x_1314.x, x_1314.z, x_1314.w));
  let x_1317 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_1317);
  let x_1319 : f32 = u_xlat33;
  u_xlat33 = ((x_1319 * 1.5f) + -0.10000000149011611938f);
  let x_1324 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1324, 0.0f, 1.0f);
  let x_1326 : vec3<f32> = u_xlat14;
  let x_1329 : vec4<f32> = x_39.x_MainLightColor;
  let x_1332 : vec4<f32> = u_xlat5;
  let x_1334 : vec3<f32> = ((vec3<f32>(x_1326.x, x_1326.x, x_1326.x) * vec3<f32>(x_1329.x, x_1329.y, x_1329.z)) + vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
  let x_1335 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1334.x, x_1335.y, x_1334.y, x_1334.z);
  let x_1337 : vec3<f32> = vs_TEXCOORD2;
  let x_1339 : vec4<f32> = x_39.x_MainLightPosition;
  let x_1341 : vec3<f32> = (x_1337 + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
  let x_1344 : vec4<f32> = u_xlat5;
  let x_1346 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1344.x, x_1344.y, x_1344.z), vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
  let x_1351 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1351, 1.17549435e-38f);
  let x_1356 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_1356);
  let x_1359 : vec3<f32> = u_xlat1;
  let x_1361 : vec4<f32> = u_xlat5;
  let x_1363 : vec3<f32> = (vec3<f32>(x_1359.x, x_1359.x, x_1359.x) * vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
  let x_1364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
  let x_1366 : vec4<f32> = u_xlat2;
  let x_1368 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1366.x, x_1366.y, x_1366.z), vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
  let x_1373 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1373, 0.0f, 1.0f);
  let x_1377 : vec4<f32> = x_39.x_MainLightPosition;
  let x_1379 : vec4<f32> = u_xlat5;
  u_xlat35 = dot(vec3<f32>(x_1377.x, x_1377.y, x_1377.z), vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
  let x_1382 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1382, 0.0f, 1.0f);
  let x_1385 : f32 = u_xlat1.x;
  let x_1387 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1385 * x_1387);
  let x_1391 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1391 * -0.99993896484375f) + 1.00001001358032226562f);
  let x_1397 : f32 = u_xlat35;
  let x_1398 : f32 = u_xlat35;
  u_xlat35 = (x_1397 * x_1398);
  let x_1401 : f32 = u_xlat1.x;
  let x_1403 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1401 * x_1403);
  let x_1406 : f32 = u_xlat35;
  u_xlat35 = max(x_1406, 0.10000000149011611938f);
  let x_1409 : f32 = u_xlat1.x;
  let x_1410 : f32 = u_xlat35;
  u_xlat1.x = (x_1409 * x_1410);
  let x_1414 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1414 * 2.03125f);
  let x_1420 : f32 = u_xlat1.x;
  u_xlat1.x = (0.00006103515625f / x_1420);
  let x_1424 : f32 = u_xlat25.x;
  let x_1426 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1424 * x_1426);
  let x_1430 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1430 * 0.03999999910593032837f);
  let x_1434 : vec3<f32> = u_xlat1;
  let x_1437 : vec4<f32> = x_39.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_1434.x, x_1434.x, x_1434.x) * vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
  let x_1441 : f32 = x_39.x_AdditionalLightsCount.x;
  let x_1443 : f32 = x_1095.unity_LightData.y;
  u_xlat1.x = min(x_1441, x_1443);
  let x_1448 : f32 = u_xlat1.x;
  u_xlatu1 = bitcast<u32>(i32(x_1448));
  let x_1451 : vec4<f32> = u_xlat6;
  let x_1452 : vec3<f32> = vec3<f32>(x_1451.x, x_1451.y, x_1451.z);
  let x_1453 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
  let x_1455 : vec3<f32> = u_xlat14;
  let x_1456 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
  u_xlatu_loop_2 = 0u;
  loop {
    let x_1464 : u32 = u_xlatu_loop_2;
    let x_1465 : u32 = u_xlatu1;
    if ((x_1464 < x_1465)) {
    } else {
      break;
    }
    let x_1467 : u32 = u_xlatu_loop_2;
    u_xlatu38 = (x_1467 >> 2u);
    let x_1470 : u32 = u_xlatu_loop_2;
    u_xlati39 = bitcast<i32>((x_1470 & 3u));
    let x_1474 : u32 = u_xlatu38;
    let x_1477 : vec4<f32> = x_1095.unity_LightIndices[bitcast<i32>(x_1474)];
    let x_1486 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1491 : vec4<u32> = indexable[x_1486];
    u_xlat38 = dot(x_1477, bitcast<vec4<f32>>(x_1491));
    let x_1494 : f32 = u_xlat38;
    u_xlati38 = i32(x_1494);
    let x_1496 : vec3<f32> = vs_TEXCOORD1;
    let x_1507 : i32 = u_xlati38;
    let x_1509 : vec4<f32> = x_1506.x_AdditionalLightsPosition[x_1507];
    let x_1512 : i32 = u_xlati38;
    let x_1514 : vec4<f32> = x_1506.x_AdditionalLightsPosition[x_1512];
    let x_1516 : vec3<f32> = ((-(x_1496) * vec3<f32>(x_1509.w, x_1509.w, x_1509.w)) + vec3<f32>(x_1514.x, x_1514.y, x_1514.z));
    let x_1517 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1517.w);
    let x_1520 : vec4<f32> = u_xlat8;
    let x_1522 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1520.x, x_1520.y, x_1520.z), vec3<f32>(x_1522.x, x_1522.y, x_1522.z));
    let x_1525 : f32 = u_xlat39;
    u_xlat39 = max(x_1525, 0.00006103515625f);
    let x_1528 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_1528);
    let x_1530 : f32 = u_xlat40;
    let x_1532 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1530, x_1530, x_1530) * vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
    let x_1536 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_1536);
    let x_1538 : f32 = u_xlat39;
    let x_1539 : i32 = u_xlati38;
    let x_1541 : f32 = x_1506.x_AdditionalLightsAttenuation[x_1539].x;
    u_xlat39 = (x_1538 * x_1541);
    let x_1543 : f32 = u_xlat39;
    let x_1545 : f32 = u_xlat39;
    u_xlat39 = ((-(x_1543) * x_1545) + 1.0f);
    let x_1548 : f32 = u_xlat39;
    u_xlat39 = max(x_1548, 0.0f);
    let x_1550 : f32 = u_xlat39;
    let x_1551 : f32 = u_xlat39;
    u_xlat39 = (x_1550 * x_1551);
    let x_1553 : f32 = u_xlat39;
    let x_1554 : f32 = u_xlat41;
    u_xlat39 = (x_1553 * x_1554);
    let x_1556 : i32 = u_xlati38;
    let x_1558 : vec4<f32> = x_1506.x_AdditionalLightsSpotDir[x_1556];
    let x_1560 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1558.x, x_1558.y, x_1558.z), x_1560);
    let x_1562 : f32 = u_xlat41;
    let x_1563 : i32 = u_xlati38;
    let x_1565 : f32 = x_1506.x_AdditionalLightsAttenuation[x_1563].z;
    let x_1567 : i32 = u_xlati38;
    let x_1569 : f32 = x_1506.x_AdditionalLightsAttenuation[x_1567].w;
    u_xlat41 = ((x_1562 * x_1565) + x_1569);
    let x_1571 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1571, 0.0f, 1.0f);
    let x_1573 : f32 = u_xlat41;
    let x_1574 : f32 = u_xlat41;
    u_xlat41 = (x_1573 * x_1574);
    let x_1576 : f32 = u_xlat39;
    let x_1577 : f32 = u_xlat41;
    u_xlat39 = (x_1576 * x_1577);
    let x_1579 : vec4<f32> = u_xlat2;
    let x_1581 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1579.x, x_1579.y, x_1579.z), x_1581);
    let x_1583 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1583, 0.0f, 1.0f);
    let x_1585 : f32 = u_xlat39;
    let x_1586 : f32 = u_xlat41;
    u_xlat41 = (x_1585 * x_1586);
    let x_1588 : f32 = u_xlat41;
    let x_1590 : i32 = u_xlati38;
    let x_1592 : vec4<f32> = x_1506.x_AdditionalLightsColor[x_1590];
    u_xlat10 = (vec3<f32>(x_1588, x_1588, x_1588) * vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
    let x_1595 : vec4<f32> = u_xlat8;
    let x_1597 : f32 = u_xlat40;
    let x_1600 : vec3<f32> = vs_TEXCOORD2;
    let x_1601 : vec3<f32> = ((vec3<f32>(x_1595.x, x_1595.y, x_1595.z) * vec3<f32>(x_1597, x_1597, x_1597)) + x_1600);
    let x_1602 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
    let x_1604 : vec4<f32> = u_xlat8;
    let x_1606 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1604.x, x_1604.y, x_1604.z), vec3<f32>(x_1606.x, x_1606.y, x_1606.z));
    let x_1609 : f32 = u_xlat40;
    u_xlat40 = max(x_1609, 1.17549435e-38f);
    let x_1611 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1611);
    let x_1613 : f32 = u_xlat40;
    let x_1615 : vec4<f32> = u_xlat8;
    let x_1617 : vec3<f32> = (vec3<f32>(x_1613, x_1613, x_1613) * vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
    let x_1618 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
    let x_1620 : vec4<f32> = u_xlat2;
    let x_1622 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1620.x, x_1620.y, x_1620.z), vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
    let x_1625 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1625, 0.0f, 1.0f);
    let x_1627 : vec3<f32> = u_xlat9;
    let x_1628 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1627, vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
    let x_1633 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1633, 0.0f, 1.0f);
    let x_1636 : f32 = u_xlat40;
    let x_1637 : f32 = u_xlat40;
    u_xlat40 = (x_1636 * x_1637);
    let x_1639 : f32 = u_xlat40;
    u_xlat40 = ((x_1639 * -0.99993896484375f) + 1.00001001358032226562f);
    let x_1643 : f32 = u_xlat8.x;
    let x_1645 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1643 * x_1645);
    let x_1648 : f32 = u_xlat40;
    let x_1649 : f32 = u_xlat40;
    u_xlat40 = (x_1648 * x_1649);
    let x_1652 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1652, 0.10000000149011611938f);
    let x_1655 : f32 = u_xlat40;
    let x_1657 : f32 = u_xlat8.x;
    u_xlat40 = (x_1655 * x_1657);
    let x_1659 : f32 = u_xlat40;
    u_xlat40 = (x_1659 * 2.03125f);
    let x_1661 : f32 = u_xlat40;
    u_xlat40 = (0.00006103515625f / x_1661);
    let x_1663 : f32 = u_xlat40;
    u_xlat40 = (x_1663 * 0.03999999910593032837f);
    let x_1665 : f32 = u_xlat40;
    let x_1667 : vec3<f32> = u_xlat10;
    let x_1669 : vec4<f32> = u_xlat7;
    let x_1671 : vec3<f32> = ((vec3<f32>(x_1665, x_1665, x_1665) * x_1667) + vec3<f32>(x_1669.x, x_1669.y, x_1669.z));
    let x_1672 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
    let x_1674 : f32 = u_xlat39;
    let x_1676 : i32 = u_xlati38;
    let x_1678 : vec4<f32> = x_1506.x_AdditionalLightsColor[x_1676];
    let x_1681 : vec4<f32> = u_xlat5;
    let x_1683 : vec3<f32> = ((vec3<f32>(x_1674, x_1674, x_1674) * vec3<f32>(x_1678.x, x_1678.y, x_1678.z)) + vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
    let x_1684 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);

    continuing {
      let x_1686 : u32 = u_xlatu_loop_2;
      u_xlatu_loop_2 = (x_1686 + bitcast<u32>(1i));
    }
  }
  let x_1688 : f32 = u_xlat34;
  let x_1689 : f32 = u_xlat22;
  u_xlat6.x = (x_1688 * x_1689);
  u_xlat6.y = 0.375f;
  u_xlat6.z = 0.0f;
  let x_1698 : vec4<f32> = u_xlat6;
  let x_1701 : f32 = x_39.x_GlobalMipBias.x;
  let x_1702 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1698.x, x_1698.y), x_1701);
  u_xlat14 = vec3<f32>(x_1702.x, x_1702.y, x_1702.z);
  let x_1704 : vec4<f32> = u_xlat2;
  let x_1710 : vec3<f32> = u_xlat0;
  let x_1712 : vec2<f32> = ((vec2<f32>(x_1704.z, x_1704.x) * vec2<f32>(0.01999999955296516418f, 0.15000000596046447754f)) + vec2<f32>(x_1710.x, x_1710.y));
  let x_1713 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1712.x, x_1712.y, x_1713.z);
  let x_1719 : vec3<f32> = u_xlat0;
  let x_1721 : vec4<f32> = textureSampleLevel(x_PlanarReflectionTexture, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_1719.x, x_1719.y), 0.0f);
  u_xlat0 = vec3<f32>(x_1721.x, x_1721.y, x_1721.z);
  let x_1728 : vec2<f32> = u_xlat12;
  let x_1730 : f32 = u_xlat4.y;
  let x_1731 : vec4<f32> = textureSampleLevel(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture_linear_clamp, x_1728, x_1730);
  u_xlat1 = vec3<f32>(x_1731.x, x_1731.y, x_1731.z);
  let x_1736 : vec4<f32> = u_xlat6;
  let x_1739 : f32 = x_39.x_GlobalMipBias.x;
  let x_1740 : vec4<f32> = textureSampleBias(x_AbsorptionScatteringRamp, sampler_AbsorptionScatteringRamp, vec2<f32>(x_1736.x, x_1736.z), x_1739);
  let x_1741 : vec3<f32> = vec3<f32>(x_1740.x, x_1740.y, x_1740.z);
  let x_1742 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);
  let x_1744 : vec3<f32> = u_xlat1;
  let x_1745 : vec4<f32> = u_xlat2;
  let x_1747 : vec3<f32> = (x_1744 * vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
  let x_1748 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1748.w);
  let x_1750 : vec3<f32> = u_xlat1;
  let x_1752 : vec4<f32> = u_xlat2;
  let x_1755 : vec3<f32> = u_xlat0;
  u_xlat0 = ((-(x_1750) * vec3<f32>(x_1752.x, x_1752.y, x_1752.z)) + x_1755);
  let x_1757 : f32 = u_xlat3;
  let x_1759 : vec3<f32> = u_xlat0;
  let x_1761 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1757, x_1757, x_1757) * x_1759) + vec3<f32>(x_1761.x, x_1761.y, x_1761.z));
  let x_1764 : vec4<f32> = u_xlat5;
  let x_1766 : vec3<f32> = u_xlat14;
  let x_1768 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1764.x, x_1764.y, x_1764.z) * x_1766) + x_1768);
  let x_1770 : vec4<f32> = u_xlat7;
  let x_1772 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1770.x, x_1770.y, x_1770.z) + x_1772);
  let x_1774 : f32 = u_xlat33;
  let x_1776 : vec4<f32> = u_xlat4;
  let x_1779 : vec3<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1774, x_1774, x_1774) * vec3<f32>(x_1776.x, x_1776.z, x_1776.w)) + -(x_1779));
  let x_1782 : f32 = u_xlat33;
  let x_1784 : vec3<f32> = u_xlat1;
  let x_1786 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1782, x_1782, x_1782) * x_1784) + x_1786);
  let x_1791 : f32 = vs_TEXCOORD4.x;
  let x_1793 : f32 = vs_TEXCOORD4.x;
  u_xlat33 = (x_1791 * -(x_1793));
  let x_1796 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1796);
  let x_1798 : vec3<f32> = u_xlat0;
  let x_1800 : vec4<f32> = x_39.unity_FogColor;
  u_xlat0 = (x_1798 + -(vec3<f32>(x_1800.x, x_1800.y, x_1800.z)));
  let x_1806 : f32 = u_xlat33;
  let x_1808 : vec3<f32> = u_xlat0;
  let x_1811 : vec4<f32> = x_39.unity_FogColor;
  let x_1813 : vec3<f32> = ((vec3<f32>(x_1806, x_1806, x_1806) * x_1808) + vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
  let x_1814 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
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


