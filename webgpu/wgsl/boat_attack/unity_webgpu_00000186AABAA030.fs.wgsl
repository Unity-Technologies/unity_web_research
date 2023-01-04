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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_NightFade : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

@group(0) @binding(4) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(6) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(7) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

@group(0) @binding(5) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_478 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_853 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb37 : bool;
  var u_xlat37 : f32;
  var u_xlatb38 : bool;
  var u_xlat38 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat5 : vec3<f32>;
  var x_270 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var u_xlatb30 : bool;
  var u_xlat30 : f32;
  var u_xlat43 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati41 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec4<f32> = vs_INTERP3;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_40.x, x_40.y), x_51);
  u_xlat0 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec4<f32> = vs_INTERP3;
  let x_63 : f32 = x_45.x_GlobalMipBias.x;
  let x_64 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_60.x, x_60.y), x_63);
  let x_65 : vec3<f32> = vec3<f32>(x_64.x, x_64.y, x_64.w);
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_65.x, x_65.y, x_65.z, x_66.w);
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = u_xlat1.z;
  u_xlat1.x = (x_70 * x_73);
  let x_76 : vec4<f32> = u_xlat1;
  let x_83 : vec2<f32> = ((vec2<f32>(x_76.x, x_76.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_87 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_92 : f32 = u_xlat36;
  u_xlat36 = min(x_92, 1.0f);
  let x_94 : f32 = u_xlat36;
  u_xlat36 = (-(x_94) + 1.0f);
  let x_97 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_97);
  let x_99 : f32 = u_xlat36;
  u_xlat36 = max(x_99, 1.00000002e-16f);
  let x_108 : vec4<f32> = vs_INTERP3;
  let x_111 : f32 = x_45.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_108.x, x_108.y), x_111);
  let x_113 : vec3<f32> = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_125 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  let x_128 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  u_xlat25 = dot(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_131);
  let x_133 : f32 = u_xlat25;
  u_xlat25 = fract(x_133);
  let x_135 : f32 = u_xlat25;
  let x_138 : f32 = x_45.x_NightFade;
  u_xlat25 = (x_135 + x_138);
  let x_143 : f32 = u_xlat25;
  u_xlatb25 = (x_143 >= 1.0f);
  let x_145 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_145);
  let x_154 : vec4<f32> = vs_INTERP3;
  let x_157 : f32 = x_45.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat3 = vec3<f32>(x_158.x, x_158.w, x_158.y);
  let x_163 : f32 = vs_INTERP2.w;
  u_xlatb37 = (0.0f < x_163);
  let x_166 : bool = u_xlatb37;
  u_xlat37 = select(-1.0f, 1.0f, x_166);
  let x_170 : f32 = x_120.unity_WorldTransformParams.w;
  u_xlatb38 = (x_170 >= 0.0f);
  let x_173 : bool = u_xlatb38;
  u_xlat38 = select(-1.0f, 1.0f, x_173);
  let x_175 : f32 = u_xlat37;
  let x_176 : f32 = u_xlat38;
  u_xlat37 = (x_175 * x_176);
  let x_181 : vec3<f32> = vs_INTERP1;
  let x_183 : vec4<f32> = vs_INTERP2;
  u_xlat4 = (vec3<f32>(x_181.z, x_181.x, x_181.y) * vec3<f32>(x_183.y, x_183.z, x_183.x));
  let x_186 : vec3<f32> = vs_INTERP1;
  let x_188 : vec4<f32> = vs_INTERP2;
  let x_191 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_186.y, x_186.z, x_186.x) * vec3<f32>(x_188.z, x_188.x, x_188.y)) + -(x_191));
  let x_194 : f32 = u_xlat37;
  let x_196 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_194, x_194, x_194) * x_196);
  let x_198 : vec4<f32> = u_xlat1;
  let x_200 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_198.y, x_198.y, x_198.y) * x_200);
  let x_202 : vec4<f32> = u_xlat1;
  let x_204 : vec4<f32> = vs_INTERP2;
  let x_207 : vec3<f32> = u_xlat4;
  let x_208 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + x_207);
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_208.z);
  let x_211 : f32 = u_xlat36;
  let x_213 : vec3<f32> = vs_INTERP1;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211, x_211, x_211) * x_213) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_217.z);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_220.x, x_220.y, x_220.w), vec3<f32>(x_222.x, x_222.y, x_222.w));
  let x_225 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat36;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_231.z);
  let x_237 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb36 = (x_237 == 0.0f);
  let x_240 : vec3<f32> = vs_INTERP0;
  let x_245 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_240) + x_245);
  let x_247 : vec3<f32> = u_xlat4;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(x_247, x_248);
  let x_250 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_250);
  let x_252 : f32 = u_xlat38;
  let x_254 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_252, x_252, x_252) * x_254);
  let x_259 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_259;
  let x_262 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_262;
  let x_267 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_267;
  let x_269 : bool = u_xlatb36;
  if (x_269) {
    let x_273 : vec3<f32> = u_xlat4;
    x_270 = x_273;
  } else {
    let x_275 : vec3<f32> = u_xlat5;
    x_270 = x_275;
  }
  let x_276 : vec3<f32> = x_270;
  u_xlat4 = x_276;
  let x_278 : f32 = vs_INTERP0.y;
  let x_280 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat36 = (x_278 * x_280);
  let x_283 : f32 = x_45.unity_MatrixV[0i].z;
  let x_285 : f32 = vs_INTERP0.x;
  let x_287 : f32 = u_xlat36;
  u_xlat36 = ((x_283 * x_285) + x_287);
  let x_290 : f32 = x_45.unity_MatrixV[2i].z;
  let x_292 : f32 = vs_INTERP0.z;
  let x_294 : f32 = u_xlat36;
  u_xlat36 = ((x_290 * x_292) + x_294);
  let x_296 : f32 = u_xlat36;
  let x_298 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat36 = (x_296 + x_298);
  let x_300 : f32 = u_xlat36;
  let x_304 : f32 = x_45.x_ProjectionParams.y;
  u_xlat36 = (-(x_300) + -(x_304));
  let x_307 : f32 = u_xlat36;
  u_xlat36 = max(x_307, 0.0f);
  let x_309 : f32 = u_xlat36;
  let x_312 : f32 = x_45.unity_FogParams.x;
  u_xlat36 = (x_309 * x_312);
  let x_321 : vec2<f32> = vs_INTERP4;
  let x_323 : f32 = x_45.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_321, x_323);
  u_xlat5 = vec3<f32>(x_324.x, x_324.y, x_324.z);
  let x_329 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_330 : vec2<f32> = vec2<f32>(x_329.x, x_329.y);
  let x_334 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_330.x, x_330.y));
  let x_335 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_334.x, x_334.y, x_335.z);
  let x_337 : vec3<f32> = u_xlat6;
  let x_339 : vec4<f32> = hlslcc_FragCoord;
  let x_341 : vec2<f32> = (vec2<f32>(x_337.x, x_337.y) * vec2<f32>(x_339.x, x_339.y));
  let x_342 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_341.x, x_341.y, x_342.z);
  let x_345 : f32 = u_xlat6.y;
  let x_348 : f32 = x_45.x_ScaleBiasRt.x;
  let x_351 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat38 = ((x_345 * x_348) + x_351);
  let x_353 : f32 = u_xlat38;
  u_xlat6.z = (-(x_353) + 1.0f);
  let x_357 : vec3<f32> = u_xlat3;
  let x_358 : vec2<f32> = vec2<f32>(x_357.x, x_357.y);
  let x_359 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_358.x, x_358.y, x_359.z);
  let x_361 : vec3<f32> = u_xlat3;
  let x_365 : vec2<f32> = clamp(vec2<f32>(x_361.x, x_361.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_366 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_365.x, x_365.y, x_366.z);
  let x_369 : f32 = u_xlat3.x;
  u_xlat38 = ((-(x_369) * 0.959999979f) + 0.959999979f);
  let x_375 : f32 = u_xlat38;
  let x_378 : f32 = u_xlat3.y;
  u_xlat39 = (-(x_375) + x_378);
  let x_381 : vec3<f32> = u_xlat0;
  let x_382 : f32 = u_xlat38;
  u_xlat7 = (x_381 * vec3<f32>(x_382, x_382, x_382));
  let x_385 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_385 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_389 : vec3<f32> = u_xlat3;
  let x_391 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_389.x, x_389.x, x_389.x) * x_391) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_397 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_397) + 1.0f);
  let x_400 : f32 = u_xlat38;
  let x_401 : f32 = u_xlat38;
  u_xlat3.x = (x_400 * x_401);
  let x_405 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_405, 0.0078125f);
  let x_411 : f32 = u_xlat3.x;
  let x_413 : f32 = u_xlat3.x;
  u_xlat15 = (x_411 * x_413);
  let x_415 : f32 = u_xlat39;
  u_xlat39 = (x_415 + 1.0f);
  let x_417 : f32 = u_xlat39;
  u_xlat39 = min(x_417, 1.0f);
  let x_421 : f32 = u_xlat3.x;
  u_xlat40 = ((x_421 * 4.0f) + 2.0f);
  let x_431 : vec3<f32> = u_xlat6;
  let x_434 : f32 = x_45.x_GlobalMipBias.x;
  let x_435 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_431.x, x_431.z), x_434);
  u_xlat41 = x_435.x;
  let x_437 : f32 = u_xlat41;
  u_xlat6.x = (x_437 + -1.0f);
  let x_442 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_444 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_442 * x_444) + 1.0f);
  let x_450 : f32 = u_xlat3.z;
  let x_451 : f32 = u_xlat41;
  u_xlat27 = min(x_450, x_451);
  let x_455 : vec4<f32> = vs_INTERP8;
  let x_456 : vec2<f32> = vec2<f32>(x_455.x, x_455.y);
  let x_458 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_456.x, x_456.y, x_458);
  let x_470 : vec3<f32> = txVec0;
  let x_472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_470.xy, x_470.z);
  u_xlat41 = x_472;
  let x_480 : f32 = x_478.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_480) + 1.0f);
  let x_484 : f32 = u_xlat41;
  let x_486 : f32 = x_478.x_MainLightShadowParams.x;
  let x_489 : f32 = u_xlat18.x;
  u_xlat41 = ((x_484 * x_486) + x_489);
  let x_493 : f32 = vs_INTERP8.z;
  u_xlatb18 = (0.0f >= x_493);
  let x_497 : f32 = vs_INTERP8.z;
  u_xlatb30 = (x_497 >= 1.0f);
  let x_499 : bool = u_xlatb30;
  let x_500 : bool = u_xlatb18;
  u_xlatb18 = (x_499 | x_500);
  let x_502 : bool = u_xlatb18;
  let x_503 : f32 = u_xlat41;
  u_xlat41 = select(x_503, 1.0f, x_502);
  let x_505 : vec3<f32> = vs_INTERP0;
  let x_507 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat18 = (x_505 + -(x_507));
  let x_510 : vec3<f32> = u_xlat18;
  let x_511 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_510, x_511);
  let x_515 : f32 = u_xlat18.x;
  let x_517 : f32 = x_478.x_MainLightShadowParams.z;
  let x_520 : f32 = x_478.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_515 * x_517) + x_520);
  let x_524 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_524, 0.0f, 1.0f);
  let x_528 : f32 = u_xlat41;
  u_xlat30 = (-(x_528) + 1.0f);
  let x_532 : f32 = u_xlat18.x;
  let x_533 : f32 = u_xlat30;
  let x_535 : f32 = u_xlat41;
  u_xlat41 = ((x_532 * x_533) + x_535);
  let x_537 : vec3<f32> = u_xlat6;
  let x_540 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_537.x, x_537.x, x_537.x) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_544 : vec3<f32> = u_xlat4;
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(-(x_544), vec3<f32>(x_546.x, x_546.y, x_546.w));
  let x_549 : f32 = u_xlat43;
  let x_550 : f32 = u_xlat43;
  u_xlat43 = (x_549 + x_550);
  let x_553 : vec4<f32> = u_xlat1;
  let x_555 : f32 = u_xlat43;
  let x_559 : vec3<f32> = u_xlat4;
  let x_561 : vec3<f32> = ((vec3<f32>(x_553.x, x_553.y, x_553.w) * -(vec3<f32>(x_555, x_555, x_555))) + -(x_559));
  let x_562 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : vec4<f32> = u_xlat1;
  let x_566 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_564.x, x_564.y, x_564.w), x_566);
  let x_568 : f32 = u_xlat43;
  u_xlat43 = clamp(x_568, 0.0f, 1.0f);
  let x_570 : f32 = u_xlat43;
  u_xlat43 = (-(x_570) + 1.0f);
  let x_573 : f32 = u_xlat43;
  let x_574 : f32 = u_xlat43;
  u_xlat43 = (x_573 * x_574);
  let x_576 : f32 = u_xlat43;
  let x_577 : f32 = u_xlat43;
  u_xlat43 = (x_576 * x_577);
  let x_580 : f32 = u_xlat38;
  u_xlat44 = ((-(x_580) * 0.699999988f) + 1.700000048f);
  let x_586 : f32 = u_xlat38;
  let x_587 : f32 = u_xlat44;
  u_xlat2.w = (x_586 * x_587);
  let x_590 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_590 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_603 : vec4<f32> = u_xlat8;
  let x_606 : f32 = u_xlat2.w;
  let x_607 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_603.x, x_603.y, x_603.z), x_606);
  u_xlat8 = x_607;
  let x_609 : f32 = u_xlat8.w;
  u_xlat38 = (x_609 + -1.0f);
  let x_612 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_613 : f32 = u_xlat38;
  u_xlat38 = ((x_612 * x_613) + 1.0f);
  let x_616 : f32 = u_xlat38;
  u_xlat38 = max(x_616, 0.0f);
  let x_618 : f32 = u_xlat38;
  u_xlat38 = log2(x_618);
  let x_620 : f32 = u_xlat38;
  let x_622 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_620 * x_622);
  let x_624 : f32 = u_xlat38;
  u_xlat38 = exp2(x_624);
  let x_626 : f32 = u_xlat38;
  let x_628 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_626 * x_628);
  let x_630 : vec4<f32> = u_xlat8;
  let x_632 : f32 = u_xlat38;
  let x_634 : vec3<f32> = (vec3<f32>(x_630.x, x_630.y, x_630.z) * vec3<f32>(x_632, x_632, x_632));
  let x_635 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_639 : vec3<f32> = u_xlat3;
  let x_641 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_639.x, x_639.x) * vec2<f32>(x_641.x, x_641.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_647 : f32 = u_xlat9.y;
  u_xlat38 = (1.0f / x_647);
  let x_650 : vec3<f32> = u_xlat0;
  let x_652 : f32 = u_xlat39;
  u_xlat21 = (-(x_650) + vec3<f32>(x_652, x_652, x_652));
  let x_655 : f32 = u_xlat43;
  let x_657 : vec3<f32> = u_xlat21;
  let x_659 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_655, x_655, x_655) * x_657) + x_659);
  let x_661 : f32 = u_xlat38;
  let x_663 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_661, x_661, x_661) * x_663);
  let x_665 : vec4<f32> = u_xlat8;
  let x_667 : vec3<f32> = u_xlat21;
  let x_668 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * x_667);
  let x_669 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec3<f32> = u_xlat5;
  let x_672 : vec3<f32> = u_xlat7;
  let x_674 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_671 * x_672) + vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : f32 = u_xlat41;
  let x_680 : f32 = x_120.unity_LightData.z;
  u_xlat38 = (x_677 * x_680);
  let x_682 : vec4<f32> = u_xlat1;
  let x_685 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_682.x, x_682.y, x_682.w), vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_690 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_690, 0.0f, 1.0f);
  let x_693 : f32 = u_xlat38;
  let x_695 : f32 = u_xlat3.x;
  u_xlat38 = (x_693 * x_695);
  let x_697 : f32 = u_xlat38;
  let x_699 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_697, x_697, x_697) * x_699);
  let x_701 : vec3<f32> = u_xlat4;
  let x_703 : vec4<f32> = x_45.x_MainLightPosition;
  let x_705 : vec3<f32> = (x_701 + vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_706 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat8;
  let x_710 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_708.x, x_708.y, x_708.z), vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_713 : f32 = u_xlat38;
  u_xlat38 = max(x_713, 1.17549435e-37f);
  let x_716 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_716);
  let x_718 : f32 = u_xlat38;
  let x_720 : vec4<f32> = u_xlat8;
  let x_722 : vec3<f32> = (vec3<f32>(x_718, x_718, x_718) * vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat1;
  let x_727 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_725.x, x_725.y, x_725.w), vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : f32 = u_xlat38;
  u_xlat38 = clamp(x_730, 0.0f, 1.0f);
  let x_733 : vec4<f32> = x_45.x_MainLightPosition;
  let x_735 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_733.x, x_733.y, x_733.z), vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_740 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_740, 0.0f, 1.0f);
  let x_743 : f32 = u_xlat38;
  let x_744 : f32 = u_xlat38;
  u_xlat38 = (x_743 * x_744);
  let x_746 : f32 = u_xlat38;
  let x_748 : f32 = u_xlat9.x;
  u_xlat38 = ((x_746 * x_748) + 1.000010014f);
  let x_753 : f32 = u_xlat3.x;
  let x_755 : f32 = u_xlat3.x;
  u_xlat3.x = (x_753 * x_755);
  let x_758 : f32 = u_xlat38;
  let x_759 : f32 = u_xlat38;
  u_xlat38 = (x_758 * x_759);
  let x_762 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_762, 0.100000001f);
  let x_766 : f32 = u_xlat38;
  let x_768 : f32 = u_xlat3.x;
  u_xlat38 = (x_766 * x_768);
  let x_770 : f32 = u_xlat40;
  let x_771 : f32 = u_xlat38;
  u_xlat38 = (x_770 * x_771);
  let x_773 : f32 = u_xlat15;
  let x_774 : f32 = u_xlat38;
  u_xlat38 = (x_773 / x_774);
  let x_776 : vec3<f32> = u_xlat0;
  let x_777 : f32 = u_xlat38;
  let x_780 : vec3<f32> = u_xlat7;
  let x_781 : vec3<f32> = ((x_776 * vec3<f32>(x_777, x_777, x_777)) + x_780);
  let x_782 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec3<f32> = u_xlat18;
  let x_785 : vec4<f32> = u_xlat8;
  u_xlat18 = (x_784 * vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_789 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_791 : f32 = x_120.unity_LightData.y;
  u_xlat38 = min(x_789, x_791);
  let x_795 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_795));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_807 : u32 = u_xlatu_loop_1;
    let x_808 : u32 = u_xlatu38;
    if ((x_807 < x_808)) {
    } else {
      break;
    }
    let x_811 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_811 >> 2u);
    let x_815 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_815 & 3u));
    let x_818 : u32 = u_xlatu39;
    let x_821 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_818)];
    let x_831 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_836 : vec4<u32> = indexable[x_831];
    u_xlat39 = dot(x_821, bitcast<vec4<f32>>(x_836));
    let x_840 : f32 = u_xlat39;
    u_xlati39 = i32(x_840);
    let x_842 : vec3<f32> = vs_INTERP0;
    let x_854 : i32 = u_xlati39;
    let x_856 : vec4<f32> = x_853.x_AdditionalLightsPosition[x_854];
    let x_859 : i32 = u_xlati39;
    let x_861 : vec4<f32> = x_853.x_AdditionalLightsPosition[x_859];
    u_xlat21 = ((-(x_842) * vec3<f32>(x_856.w, x_856.w, x_856.w)) + vec3<f32>(x_861.x, x_861.y, x_861.z));
    let x_864 : vec3<f32> = u_xlat21;
    let x_865 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_864, x_865);
    let x_867 : f32 = u_xlat41;
    u_xlat41 = max(x_867, 6.10351562e-05f);
    let x_870 : f32 = u_xlat41;
    u_xlat43 = inverseSqrt(x_870);
    let x_873 : f32 = u_xlat43;
    let x_875 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_873, x_873, x_873) * x_875);
    let x_877 : f32 = u_xlat41;
    u_xlat44 = (1.0f / x_877);
    let x_879 : f32 = u_xlat41;
    let x_880 : i32 = u_xlati39;
    let x_882 : f32 = x_853.x_AdditionalLightsAttenuation[x_880].x;
    u_xlat41 = (x_879 * x_882);
    let x_884 : f32 = u_xlat41;
    let x_886 : f32 = u_xlat41;
    u_xlat41 = ((-(x_884) * x_886) + 1.0f);
    let x_889 : f32 = u_xlat41;
    u_xlat41 = max(x_889, 0.0f);
    let x_891 : f32 = u_xlat41;
    let x_892 : f32 = u_xlat41;
    u_xlat41 = (x_891 * x_892);
    let x_894 : f32 = u_xlat41;
    let x_895 : f32 = u_xlat44;
    u_xlat41 = (x_894 * x_895);
    let x_897 : i32 = u_xlati39;
    let x_899 : vec4<f32> = x_853.x_AdditionalLightsSpotDir[x_897];
    let x_901 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_899.x, x_899.y, x_899.z), x_901);
    let x_903 : f32 = u_xlat44;
    let x_904 : i32 = u_xlati39;
    let x_906 : f32 = x_853.x_AdditionalLightsAttenuation[x_904].z;
    let x_908 : i32 = u_xlati39;
    let x_910 : f32 = x_853.x_AdditionalLightsAttenuation[x_908].w;
    u_xlat44 = ((x_903 * x_906) + x_910);
    let x_912 : f32 = u_xlat44;
    u_xlat44 = clamp(x_912, 0.0f, 1.0f);
    let x_914 : f32 = u_xlat44;
    let x_915 : f32 = u_xlat44;
    u_xlat44 = (x_914 * x_915);
    let x_917 : f32 = u_xlat41;
    let x_918 : f32 = u_xlat44;
    u_xlat41 = (x_917 * x_918);
    let x_921 : vec3<f32> = u_xlat6;
    let x_923 : i32 = u_xlati39;
    let x_925 : vec4<f32> = x_853.x_AdditionalLightsColor[x_923];
    u_xlat11 = (vec3<f32>(x_921.x, x_921.x, x_921.x) * vec3<f32>(x_925.x, x_925.y, x_925.z));
    let x_928 : vec4<f32> = u_xlat1;
    let x_930 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(vec3<f32>(x_928.x, x_928.y, x_928.w), x_930);
    let x_932 : f32 = u_xlat39;
    u_xlat39 = clamp(x_932, 0.0f, 1.0f);
    let x_934 : f32 = u_xlat39;
    let x_935 : f32 = u_xlat41;
    u_xlat39 = (x_934 * x_935);
    let x_937 : f32 = u_xlat39;
    let x_939 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_937, x_937, x_937) * x_939);
    let x_941 : vec3<f32> = u_xlat21;
    let x_942 : f32 = u_xlat43;
    let x_945 : vec3<f32> = u_xlat4;
    u_xlat21 = ((x_941 * vec3<f32>(x_942, x_942, x_942)) + x_945);
    let x_947 : vec3<f32> = u_xlat21;
    let x_948 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_947, x_948);
    let x_950 : f32 = u_xlat39;
    u_xlat39 = max(x_950, 1.17549435e-37f);
    let x_952 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_952);
    let x_954 : f32 = u_xlat39;
    let x_956 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_954, x_954, x_954) * x_956);
    let x_958 : vec4<f32> = u_xlat1;
    let x_960 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(vec3<f32>(x_958.x, x_958.y, x_958.w), x_960);
    let x_962 : f32 = u_xlat39;
    u_xlat39 = clamp(x_962, 0.0f, 1.0f);
    let x_964 : vec3<f32> = u_xlat10;
    let x_965 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_964, x_965);
    let x_967 : f32 = u_xlat41;
    u_xlat41 = clamp(x_967, 0.0f, 1.0f);
    let x_969 : f32 = u_xlat39;
    let x_970 : f32 = u_xlat39;
    u_xlat39 = (x_969 * x_970);
    let x_972 : f32 = u_xlat39;
    let x_974 : f32 = u_xlat9.x;
    u_xlat39 = ((x_972 * x_974) + 1.000010014f);
    let x_977 : f32 = u_xlat41;
    let x_978 : f32 = u_xlat41;
    u_xlat41 = (x_977 * x_978);
    let x_980 : f32 = u_xlat39;
    let x_981 : f32 = u_xlat39;
    u_xlat39 = (x_980 * x_981);
    let x_983 : f32 = u_xlat41;
    u_xlat41 = max(x_983, 0.100000001f);
    let x_985 : f32 = u_xlat39;
    let x_986 : f32 = u_xlat41;
    u_xlat39 = (x_985 * x_986);
    let x_988 : f32 = u_xlat40;
    let x_989 : f32 = u_xlat39;
    u_xlat39 = (x_988 * x_989);
    let x_991 : f32 = u_xlat15;
    let x_992 : f32 = u_xlat39;
    u_xlat39 = (x_991 / x_992);
    let x_994 : vec3<f32> = u_xlat0;
    let x_995 : f32 = u_xlat39;
    let x_998 : vec3<f32> = u_xlat7;
    u_xlat21 = ((x_994 * vec3<f32>(x_995, x_995, x_995)) + x_998);
    let x_1000 : vec3<f32> = u_xlat21;
    let x_1001 : vec3<f32> = u_xlat11;
    let x_1003 : vec4<f32> = u_xlat8;
    let x_1005 : vec3<f32> = ((x_1000 * x_1001) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
    let x_1006 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);

    continuing {
      let x_1008 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1008 + bitcast<u32>(1i));
    }
  }
  let x_1010 : vec3<f32> = u_xlat5;
  let x_1011 : f32 = u_xlat27;
  let x_1014 : vec3<f32> = u_xlat18;
  u_xlat0 = ((x_1010 * vec3<f32>(x_1011, x_1011, x_1011)) + x_1014);
  let x_1016 : vec4<f32> = u_xlat8;
  let x_1018 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1016.x, x_1016.y, x_1016.z) + x_1018);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : f32 = u_xlat25;
  let x_1025 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1020.x, x_1020.y, x_1020.z) * vec3<f32>(x_1022, x_1022, x_1022)) + x_1025);
  let x_1027 : f32 = u_xlat36;
  let x_1028 : f32 = u_xlat36;
  u_xlat36 = (x_1027 * -(x_1028));
  let x_1031 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1031);
  let x_1033 : vec3<f32> = u_xlat0;
  let x_1036 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1033 + -(vec3<f32>(x_1036.x, x_1036.y, x_1036.z)));
  let x_1042 : f32 = u_xlat36;
  let x_1044 : vec3<f32> = u_xlat0;
  let x_1047 : vec4<f32> = x_45.unity_FogColor;
  let x_1049 : vec3<f32> = ((vec3<f32>(x_1042, x_1042, x_1042) * x_1044) + vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

