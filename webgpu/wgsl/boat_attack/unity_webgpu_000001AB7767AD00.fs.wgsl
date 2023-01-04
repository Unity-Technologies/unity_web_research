struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(6) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(8) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(9) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

@group(0) @binding(7) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_478 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_547 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_997 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1111 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat29 : f32;
  var u_xlatb29 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb43 : bool;
  var u_xlat43 : f32;
  var u_xlatb44 : bool;
  var u_xlat44 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb42 : bool;
  var u_xlat5 : vec3<f32>;
  var x_270 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat8 : vec4<f32>;
  var x_633 : f32;
  var x_644 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatu44 : u32;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat10 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlatu11 : u32;
  var u_xlati25 : i32;
  var u_xlati11 : i32;
  var u_xlati39 : i32;
  var u_xlat12 : vec4<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat13 : vec3<f32>;
  var u_xlatb40 : vec2<bool>;
  var u_xlat40 : vec2<f32>;
  var x_1431 : f32;
  var x_1444 : f32;
  var u_xlat53 : f32;
  var x_1506 : f32;
  var x_1517 : vec3<f32>;
  var u_xlatu0 : u32;
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
  u_xlat42 = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_92 : f32 = u_xlat42;
  u_xlat42 = min(x_92, 1.0f);
  let x_94 : f32 = u_xlat42;
  u_xlat42 = (-(x_94) + 1.0f);
  let x_97 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_97);
  let x_99 : f32 = u_xlat42;
  u_xlat42 = max(x_99, 1.00000002e-16f);
  let x_108 : vec4<f32> = vs_INTERP3;
  let x_111 : f32 = x_45.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_108.x, x_108.y), x_111);
  let x_113 : vec3<f32> = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_125 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  let x_128 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  u_xlat29 = dot(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_131);
  let x_133 : f32 = u_xlat29;
  u_xlat29 = fract(x_133);
  let x_135 : f32 = u_xlat29;
  let x_138 : f32 = x_45.x_NightFade;
  u_xlat29 = (x_135 + x_138);
  let x_143 : f32 = u_xlat29;
  u_xlatb29 = (x_143 >= 1.0f);
  let x_145 : bool = u_xlatb29;
  u_xlat29 = select(0.0f, 1.0f, x_145);
  let x_154 : vec4<f32> = vs_INTERP3;
  let x_157 : f32 = x_45.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat3 = vec3<f32>(x_158.x, x_158.w, x_158.y);
  let x_163 : f32 = vs_INTERP2.w;
  u_xlatb43 = (0.0f < x_163);
  let x_166 : bool = u_xlatb43;
  u_xlat43 = select(-1.0f, 1.0f, x_166);
  let x_170 : f32 = x_120.unity_WorldTransformParams.w;
  u_xlatb44 = (x_170 >= 0.0f);
  let x_173 : bool = u_xlatb44;
  u_xlat44 = select(-1.0f, 1.0f, x_173);
  let x_175 : f32 = u_xlat43;
  let x_176 : f32 = u_xlat44;
  u_xlat43 = (x_175 * x_176);
  let x_181 : vec3<f32> = vs_INTERP1;
  let x_183 : vec4<f32> = vs_INTERP2;
  u_xlat4 = (vec3<f32>(x_181.z, x_181.x, x_181.y) * vec3<f32>(x_183.y, x_183.z, x_183.x));
  let x_186 : vec3<f32> = vs_INTERP1;
  let x_188 : vec4<f32> = vs_INTERP2;
  let x_191 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_186.y, x_186.z, x_186.x) * vec3<f32>(x_188.z, x_188.x, x_188.y)) + -(x_191));
  let x_194 : f32 = u_xlat43;
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
  let x_211 : f32 = u_xlat42;
  let x_213 : vec3<f32> = vs_INTERP1;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211, x_211, x_211) * x_213) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_217.z);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec3<f32>(x_220.x, x_220.y, x_220.w), vec3<f32>(x_222.x, x_222.y, x_222.w));
  let x_225 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat42;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_231.z);
  let x_237 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb42 = (x_237 == 0.0f);
  let x_240 : vec3<f32> = vs_INTERP0;
  let x_245 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_240) + x_245);
  let x_247 : vec3<f32> = u_xlat4;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat44 = dot(x_247, x_248);
  let x_250 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_250);
  let x_252 : f32 = u_xlat44;
  let x_254 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_252, x_252, x_252) * x_254);
  let x_259 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_259;
  let x_262 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_262;
  let x_267 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_267;
  let x_269 : bool = u_xlatb42;
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
  u_xlat42 = (x_278 * x_280);
  let x_283 : f32 = x_45.unity_MatrixV[0i].z;
  let x_285 : f32 = vs_INTERP0.x;
  let x_287 : f32 = u_xlat42;
  u_xlat42 = ((x_283 * x_285) + x_287);
  let x_290 : f32 = x_45.unity_MatrixV[2i].z;
  let x_292 : f32 = vs_INTERP0.z;
  let x_294 : f32 = u_xlat42;
  u_xlat42 = ((x_290 * x_292) + x_294);
  let x_296 : f32 = u_xlat42;
  let x_298 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat42 = (x_296 + x_298);
  let x_300 : f32 = u_xlat42;
  let x_304 : f32 = x_45.x_ProjectionParams.y;
  u_xlat42 = (-(x_300) + -(x_304));
  let x_307 : f32 = u_xlat42;
  u_xlat42 = max(x_307, 0.0f);
  let x_309 : f32 = u_xlat42;
  let x_312 : f32 = x_45.unity_FogParams.x;
  u_xlat42 = (x_309 * x_312);
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
  u_xlat44 = ((x_345 * x_348) + x_351);
  let x_353 : f32 = u_xlat44;
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
  u_xlat44 = ((-(x_369) * 0.959999979f) + 0.959999979f);
  let x_375 : f32 = u_xlat44;
  let x_378 : f32 = u_xlat3.y;
  u_xlat45 = (-(x_375) + x_378);
  let x_381 : vec3<f32> = u_xlat0;
  let x_382 : f32 = u_xlat44;
  u_xlat7 = (x_381 * vec3<f32>(x_382, x_382, x_382));
  let x_385 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_385 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_389 : vec3<f32> = u_xlat3;
  let x_391 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_389.x, x_389.x, x_389.x) * x_391) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_397 : f32 = u_xlat3.y;
  u_xlat44 = (-(x_397) + 1.0f);
  let x_400 : f32 = u_xlat44;
  let x_401 : f32 = u_xlat44;
  u_xlat3.x = (x_400 * x_401);
  let x_405 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_405, 0.0078125f);
  let x_411 : f32 = u_xlat3.x;
  let x_413 : f32 = u_xlat3.x;
  u_xlat17 = (x_411 * x_413);
  let x_415 : f32 = u_xlat45;
  u_xlat45 = (x_415 + 1.0f);
  let x_417 : f32 = u_xlat45;
  u_xlat45 = min(x_417, 1.0f);
  let x_421 : f32 = u_xlat3.x;
  u_xlat46 = ((x_421 * 4.0f) + 2.0f);
  let x_431 : vec3<f32> = u_xlat6;
  let x_434 : f32 = x_45.x_GlobalMipBias.x;
  let x_435 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_431.x, x_431.z), x_434);
  u_xlat47 = x_435.x;
  let x_437 : f32 = u_xlat47;
  u_xlat6.x = (x_437 + -1.0f);
  let x_442 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_444 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_442 * x_444) + 1.0f);
  let x_450 : f32 = u_xlat3.z;
  let x_451 : f32 = u_xlat47;
  u_xlat31 = min(x_450, x_451);
  let x_455 : vec4<f32> = vs_INTERP8;
  let x_456 : vec2<f32> = vec2<f32>(x_455.x, x_455.y);
  let x_458 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_456.x, x_456.y, x_458);
  let x_470 : vec3<f32> = txVec0;
  let x_472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_470.xy, x_470.z);
  u_xlat47 = x_472;
  let x_480 : f32 = x_478.x_MainLightShadowParams.x;
  u_xlat20.x = (-(x_480) + 1.0f);
  let x_484 : f32 = u_xlat47;
  let x_486 : f32 = x_478.x_MainLightShadowParams.x;
  let x_489 : f32 = u_xlat20.x;
  u_xlat47 = ((x_484 * x_486) + x_489);
  let x_495 : f32 = vs_INTERP8.z;
  u_xlatb20.x = (0.0f >= x_495);
  let x_500 : f32 = vs_INTERP8.z;
  u_xlatb34 = (x_500 >= 1.0f);
  let x_502 : bool = u_xlatb34;
  let x_504 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_502 | x_504);
  let x_508 : bool = u_xlatb20.x;
  let x_509 : f32 = u_xlat47;
  u_xlat47 = select(x_509, 1.0f, x_508);
  let x_511 : vec3<f32> = vs_INTERP0;
  let x_513 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat20 = (x_511 + -(x_513));
  let x_516 : vec3<f32> = u_xlat20;
  let x_517 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_516, x_517);
  let x_521 : f32 = u_xlat20.x;
  let x_523 : f32 = x_478.x_MainLightShadowParams.z;
  let x_526 : f32 = x_478.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_521 * x_523) + x_526);
  let x_530 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_530, 0.0f, 1.0f);
  let x_534 : f32 = u_xlat47;
  u_xlat34 = (-(x_534) + 1.0f);
  let x_538 : f32 = u_xlat20.x;
  let x_539 : f32 = u_xlat34;
  let x_541 : f32 = u_xlat47;
  u_xlat47 = ((x_538 * x_539) + x_541);
  let x_549 : f32 = x_547.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_549 == -1.0f));
  let x_553 : bool = u_xlatb20.x;
  if (x_553) {
    let x_556 : vec3<f32> = vs_INTERP0;
    let x_559 : vec4<f32> = x_547.x_MainLightWorldToLight[1i];
    let x_561 : vec2<f32> = (vec2<f32>(x_556.y, x_556.y) * vec2<f32>(x_559.x, x_559.y));
    let x_562 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_561.x, x_561.y, x_562.z);
    let x_565 : vec4<f32> = x_547.x_MainLightWorldToLight[0i];
    let x_567 : vec3<f32> = vs_INTERP0;
    let x_570 : vec3<f32> = u_xlat20;
    let x_572 : vec2<f32> = ((vec2<f32>(x_565.x, x_565.y) * vec2<f32>(x_567.x, x_567.x)) + vec2<f32>(x_570.x, x_570.y));
    let x_573 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_572.x, x_572.y, x_573.z);
    let x_576 : vec4<f32> = x_547.x_MainLightWorldToLight[2i];
    let x_578 : vec3<f32> = vs_INTERP0;
    let x_581 : vec3<f32> = u_xlat20;
    let x_583 : vec2<f32> = ((vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_578.z, x_578.z)) + vec2<f32>(x_581.x, x_581.y));
    let x_584 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_583.x, x_583.y, x_584.z);
    let x_586 : vec3<f32> = u_xlat20;
    let x_589 : vec4<f32> = x_547.x_MainLightWorldToLight[3i];
    let x_591 : vec2<f32> = (vec2<f32>(x_586.x, x_586.y) + vec2<f32>(x_589.x, x_589.y));
    let x_592 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_591.x, x_591.y, x_592.z);
    let x_594 : vec3<f32> = u_xlat20;
    let x_599 : vec2<f32> = ((vec2<f32>(x_594.x, x_594.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_600 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_599.x, x_599.y, x_600.z);
    let x_608 : vec3<f32> = u_xlat20;
    let x_611 : f32 = x_45.x_GlobalMipBias.x;
    let x_612 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_608.x, x_608.y), x_611);
    u_xlat8 = x_612;
    let x_614 : f32 = x_547.x_MainLightCookieTextureFormat;
    let x_616 : f32 = x_547.x_MainLightCookieTextureFormat;
    let x_618 : f32 = x_547.x_MainLightCookieTextureFormat;
    let x_620 : f32 = x_547.x_MainLightCookieTextureFormat;
    let x_621 : vec4<f32> = vec4<f32>(x_614, x_616, x_618, x_620);
    let x_629 : vec4<bool> = (vec4<f32>(x_621.x, x_621.y, x_621.z, x_621.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_629.x, x_629.y);
    let x_632 : bool = u_xlatb20.y;
    if (x_632) {
      let x_637 : f32 = u_xlat8.w;
      x_633 = x_637;
    } else {
      let x_640 : f32 = u_xlat8.x;
      x_633 = x_640;
    }
    let x_641 : f32 = x_633;
    u_xlat34 = x_641;
    let x_643 : bool = u_xlatb20.x;
    if (x_643) {
      let x_647 : vec4<f32> = u_xlat8;
      x_644 = vec3<f32>(x_647.x, x_647.y, x_647.z);
    } else {
      let x_650 : f32 = u_xlat34;
      x_644 = vec3<f32>(x_650, x_650, x_650);
    }
    let x_652 : vec3<f32> = x_644;
    u_xlat20 = x_652;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_657 : vec3<f32> = u_xlat20;
  let x_659 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat20 = (x_657 * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec3<f32> = u_xlat6;
  let x_664 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_662.x, x_662.x, x_662.x) * x_664);
  let x_667 : vec3<f32> = u_xlat4;
  let x_669 : vec4<f32> = u_xlat1;
  u_xlat49 = dot(-(x_667), vec3<f32>(x_669.x, x_669.y, x_669.w));
  let x_672 : f32 = u_xlat49;
  let x_673 : f32 = u_xlat49;
  u_xlat49 = (x_672 + x_673);
  let x_675 : vec4<f32> = u_xlat1;
  let x_677 : f32 = u_xlat49;
  let x_681 : vec3<f32> = u_xlat4;
  let x_683 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.w) * -(vec3<f32>(x_677, x_677, x_677))) + -(x_681));
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat1;
  let x_688 : vec3<f32> = u_xlat4;
  u_xlat49 = dot(vec3<f32>(x_686.x, x_686.y, x_686.w), x_688);
  let x_690 : f32 = u_xlat49;
  u_xlat49 = clamp(x_690, 0.0f, 1.0f);
  let x_692 : f32 = u_xlat49;
  u_xlat49 = (-(x_692) + 1.0f);
  let x_695 : f32 = u_xlat49;
  let x_696 : f32 = u_xlat49;
  u_xlat49 = (x_695 * x_696);
  let x_698 : f32 = u_xlat49;
  let x_699 : f32 = u_xlat49;
  u_xlat49 = (x_698 * x_699);
  let x_702 : f32 = u_xlat44;
  u_xlat50 = ((-(x_702) * 0.699999988f) + 1.700000048f);
  let x_708 : f32 = u_xlat44;
  let x_709 : f32 = u_xlat50;
  u_xlat2.w = (x_708 * x_709);
  let x_712 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_712 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_725 : vec4<f32> = u_xlat8;
  let x_728 : f32 = u_xlat2.w;
  let x_729 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_725.x, x_725.y, x_725.z), x_728);
  u_xlat8 = x_729;
  let x_731 : f32 = u_xlat8.w;
  u_xlat44 = (x_731 + -1.0f);
  let x_734 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_735 : f32 = u_xlat44;
  u_xlat44 = ((x_734 * x_735) + 1.0f);
  let x_738 : f32 = u_xlat44;
  u_xlat44 = max(x_738, 0.0f);
  let x_740 : f32 = u_xlat44;
  u_xlat44 = log2(x_740);
  let x_742 : f32 = u_xlat44;
  let x_744 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_742 * x_744);
  let x_746 : f32 = u_xlat44;
  u_xlat44 = exp2(x_746);
  let x_748 : f32 = u_xlat44;
  let x_750 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_748 * x_750);
  let x_752 : vec4<f32> = u_xlat8;
  let x_754 : f32 = u_xlat44;
  let x_756 : vec3<f32> = (vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_754, x_754, x_754));
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_761 : vec3<f32> = u_xlat3;
  let x_763 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_761.x, x_761.x) * vec2<f32>(x_763.x, x_763.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_769 : f32 = u_xlat9.y;
  u_xlat44 = (1.0f / x_769);
  let x_772 : vec3<f32> = u_xlat0;
  let x_774 : f32 = u_xlat45;
  u_xlat23 = (-(x_772) + vec3<f32>(x_774, x_774, x_774));
  let x_777 : f32 = u_xlat49;
  let x_779 : vec3<f32> = u_xlat23;
  let x_781 : vec3<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_777, x_777, x_777) * x_779) + x_781);
  let x_783 : f32 = u_xlat44;
  let x_785 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_783, x_783, x_783) * x_785);
  let x_787 : vec4<f32> = u_xlat8;
  let x_789 : vec3<f32> = u_xlat23;
  let x_790 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) * x_789);
  let x_791 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec3<f32> = u_xlat5;
  let x_794 : vec3<f32> = u_xlat7;
  let x_796 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_793 * x_794) + vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : f32 = u_xlat47;
  let x_802 : f32 = x_120.unity_LightData.z;
  u_xlat44 = (x_799 * x_802);
  let x_804 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_804.x, x_804.y, x_804.w), vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_812 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_812, 0.0f, 1.0f);
  let x_815 : f32 = u_xlat44;
  let x_817 : f32 = u_xlat3.x;
  u_xlat44 = (x_815 * x_817);
  let x_819 : f32 = u_xlat44;
  let x_821 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_819, x_819, x_819) * x_821);
  let x_823 : vec3<f32> = u_xlat4;
  let x_825 : vec4<f32> = x_45.x_MainLightPosition;
  let x_827 : vec3<f32> = (x_823 + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat8;
  let x_832 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : f32 = u_xlat44;
  u_xlat44 = max(x_835, 1.17549435e-37f);
  let x_838 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat44;
  let x_842 : vec4<f32> = u_xlat8;
  let x_844 : vec3<f32> = (vec3<f32>(x_840, x_840, x_840) * vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat1;
  let x_849 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_847.x, x_847.y, x_847.w), vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : f32 = u_xlat44;
  u_xlat44 = clamp(x_852, 0.0f, 1.0f);
  let x_855 : vec4<f32> = x_45.x_MainLightPosition;
  let x_857 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_855.x, x_855.y, x_855.z), vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_862 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_862, 0.0f, 1.0f);
  let x_865 : f32 = u_xlat44;
  let x_866 : f32 = u_xlat44;
  u_xlat44 = (x_865 * x_866);
  let x_868 : f32 = u_xlat44;
  let x_870 : f32 = u_xlat9.x;
  u_xlat44 = ((x_868 * x_870) + 1.000010014f);
  let x_875 : f32 = u_xlat3.x;
  let x_877 : f32 = u_xlat3.x;
  u_xlat3.x = (x_875 * x_877);
  let x_880 : f32 = u_xlat44;
  let x_881 : f32 = u_xlat44;
  u_xlat44 = (x_880 * x_881);
  let x_884 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_884, 0.100000001f);
  let x_888 : f32 = u_xlat44;
  let x_890 : f32 = u_xlat3.x;
  u_xlat44 = (x_888 * x_890);
  let x_892 : f32 = u_xlat46;
  let x_893 : f32 = u_xlat44;
  u_xlat44 = (x_892 * x_893);
  let x_895 : f32 = u_xlat17;
  let x_896 : f32 = u_xlat44;
  u_xlat44 = (x_895 / x_896);
  let x_898 : vec3<f32> = u_xlat0;
  let x_899 : f32 = u_xlat44;
  let x_902 : vec3<f32> = u_xlat7;
  let x_903 : vec3<f32> = ((x_898 * vec3<f32>(x_899, x_899, x_899)) + x_902);
  let x_904 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec3<f32> = u_xlat20;
  let x_907 : vec4<f32> = u_xlat8;
  u_xlat20 = (x_906 * vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_911 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_913 : f32 = x_120.unity_LightData.y;
  u_xlat44 = min(x_911, x_913);
  let x_917 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_917));
  let x_923 : f32 = x_547.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_925 : f32 = x_547.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_927 : f32 = x_547.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_929 : f32 = x_547.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_930 : vec4<f32> = vec4<f32>(x_923, x_925, x_927, x_929);
  let x_937 : vec4<bool> = (vec4<f32>(x_930.x, x_930.y, x_930.z, x_930.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_938 : vec2<bool> = vec2<bool>(x_937.x, x_937.w);
  let x_939 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_938.x, x_939.y, x_939.z, x_938.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_950 : u32 = u_xlatu_loop_1;
    let x_951 : u32 = u_xlatu44;
    if ((x_950 < x_951)) {
    } else {
      break;
    }
    let x_954 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_954 >> 2u);
    let x_958 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_958 & 3u));
    let x_962 : u32 = u_xlatu49;
    let x_965 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_962)];
    let x_975 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_980 : vec4<u32> = indexable[x_975];
    u_xlat49 = dot(x_965, bitcast<vec4<f32>>(x_980));
    let x_983 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_983));
    let x_986 : vec3<f32> = vs_INTERP0;
    let x_998 : u32 = u_xlatu49;
    let x_1001 : vec4<f32> = x_997.x_AdditionalLightsPosition[bitcast<i32>(x_998)];
    let x_1004 : u32 = u_xlatu49;
    let x_1007 : vec4<f32> = x_997.x_AdditionalLightsPosition[bitcast<i32>(x_1004)];
    u_xlat23 = ((-(x_986) * vec3<f32>(x_1001.w, x_1001.w, x_1001.w)) + vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
    let x_1010 : vec3<f32> = u_xlat23;
    let x_1011 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1010, x_1011);
    let x_1013 : f32 = u_xlat50;
    u_xlat50 = max(x_1013, 6.10351562e-05f);
    let x_1017 : f32 = u_xlat50;
    u_xlat10 = inverseSqrt(x_1017);
    let x_1020 : vec3<f32> = u_xlat23;
    let x_1021 : f32 = u_xlat10;
    u_xlat24 = (x_1020 * vec3<f32>(x_1021, x_1021, x_1021));
    let x_1025 : f32 = u_xlat50;
    u_xlat11.x = (1.0f / x_1025);
    let x_1028 : f32 = u_xlat50;
    let x_1029 : u32 = u_xlatu49;
    let x_1032 : f32 = x_997.x_AdditionalLightsAttenuation[bitcast<i32>(x_1029)].x;
    u_xlat50 = (x_1028 * x_1032);
    let x_1034 : f32 = u_xlat50;
    let x_1036 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1034) * x_1036) + 1.0f);
    let x_1039 : f32 = u_xlat50;
    u_xlat50 = max(x_1039, 0.0f);
    let x_1041 : f32 = u_xlat50;
    let x_1042 : f32 = u_xlat50;
    u_xlat50 = (x_1041 * x_1042);
    let x_1044 : f32 = u_xlat50;
    let x_1046 : f32 = u_xlat11.x;
    u_xlat50 = (x_1044 * x_1046);
    let x_1048 : u32 = u_xlatu49;
    let x_1051 : vec4<f32> = x_997.x_AdditionalLightsSpotDir[bitcast<i32>(x_1048)];
    let x_1053 : vec3<f32> = u_xlat24;
    u_xlat11.x = dot(vec3<f32>(x_1051.x, x_1051.y, x_1051.z), x_1053);
    let x_1057 : f32 = u_xlat11.x;
    let x_1058 : u32 = u_xlatu49;
    let x_1061 : f32 = x_997.x_AdditionalLightsAttenuation[bitcast<i32>(x_1058)].z;
    let x_1063 : u32 = u_xlatu49;
    let x_1066 : f32 = x_997.x_AdditionalLightsAttenuation[bitcast<i32>(x_1063)].w;
    u_xlat11.x = ((x_1057 * x_1061) + x_1066);
    let x_1070 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_1070, 0.0f, 1.0f);
    let x_1074 : f32 = u_xlat11.x;
    let x_1076 : f32 = u_xlat11.x;
    u_xlat11.x = (x_1074 * x_1076);
    let x_1079 : f32 = u_xlat50;
    let x_1081 : f32 = u_xlat11.x;
    u_xlat50 = (x_1079 * x_1081);
    let x_1084 : u32 = u_xlatu49;
    u_xlatu11 = (x_1084 >> 5u);
    let x_1087 : u32 = u_xlatu49;
    u_xlati25 = (1i << bitcast<u32>((bitcast<i32>(x_1087) & 31i)));
    let x_1093 : i32 = u_xlati25;
    let x_1095 : u32 = u_xlatu11;
    let x_1098 : f32 = x_547.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1095)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_1093) & bitcast<u32>(x_1098)));
    let x_1102 : i32 = u_xlati11;
    if ((x_1102 != 0i)) {
      let x_1112 : u32 = u_xlatu49;
      let x_1115 : f32 = x_1111.x_AdditionalLightsLightTypes[bitcast<i32>(x_1112)].el;
      u_xlati11 = i32(x_1115);
      let x_1117 : i32 = u_xlati11;
      u_xlati25 = select(1i, 0i, (x_1117 != 0i));
      let x_1121 : u32 = u_xlatu49;
      u_xlati39 = (bitcast<i32>(x_1121) << bitcast<u32>(2i));
      let x_1124 : i32 = u_xlati25;
      if ((x_1124 != 0i)) {
        let x_1129 : vec3<f32> = vs_INTERP0;
        let x_1131 : i32 = u_xlati39;
        let x_1134 : i32 = u_xlati39;
        let x_1138 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[((x_1131 + 1i) / 4i)][((x_1134 + 1i) % 4i)];
        let x_1140 : vec3<f32> = (vec3<f32>(x_1129.y, x_1129.y, x_1129.y) * vec3<f32>(x_1138.x, x_1138.y, x_1138.w));
        let x_1141 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
        let x_1143 : i32 = u_xlati39;
        let x_1145 : i32 = u_xlati39;
        let x_1148 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[(x_1143 / 4i)][(x_1145 % 4i)];
        let x_1150 : vec3<f32> = vs_INTERP0;
        let x_1153 : vec4<f32> = u_xlat12;
        let x_1155 : vec3<f32> = ((vec3<f32>(x_1148.x, x_1148.y, x_1148.w) * vec3<f32>(x_1150.x, x_1150.x, x_1150.x)) + vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
        let x_1156 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
        let x_1158 : i32 = u_xlati39;
        let x_1161 : i32 = u_xlati39;
        let x_1165 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[((x_1158 + 2i) / 4i)][((x_1161 + 2i) % 4i)];
        let x_1167 : vec3<f32> = vs_INTERP0;
        let x_1170 : vec4<f32> = u_xlat12;
        let x_1172 : vec3<f32> = ((vec3<f32>(x_1165.x, x_1165.y, x_1165.w) * vec3<f32>(x_1167.z, x_1167.z, x_1167.z)) + vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
        let x_1173 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat12;
        let x_1177 : i32 = u_xlati39;
        let x_1180 : i32 = u_xlati39;
        let x_1184 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[((x_1177 + 3i) / 4i)][((x_1180 + 3i) % 4i)];
        let x_1186 : vec3<f32> = (vec3<f32>(x_1175.x, x_1175.y, x_1175.z) + vec3<f32>(x_1184.x, x_1184.y, x_1184.w));
        let x_1187 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
        let x_1190 : vec4<f32> = u_xlat12;
        let x_1192 : vec4<f32> = u_xlat12;
        let x_1194 : vec2<f32> = (vec2<f32>(x_1190.x, x_1190.y) / vec2<f32>(x_1192.z, x_1192.z));
        let x_1195 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1194.x, x_1195.y, x_1194.y);
        let x_1197 : vec3<f32> = u_xlat25;
        let x_1200 : vec2<f32> = ((vec2<f32>(x_1197.x, x_1197.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1201 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1200.x, x_1201.y, x_1200.y);
        let x_1203 : vec3<f32> = u_xlat25;
        let x_1207 : vec2<f32> = clamp(vec2<f32>(x_1203.x, x_1203.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1208 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1207.x, x_1208.y, x_1207.y);
        let x_1210 : u32 = u_xlatu49;
        let x_1213 : vec4<f32> = x_1111.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1210)];
        let x_1215 : vec3<f32> = u_xlat25;
        let x_1218 : u32 = u_xlatu49;
        let x_1221 : vec4<f32> = x_1111.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1218)];
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1213.x, x_1213.y) * vec2<f32>(x_1215.x, x_1215.z)) + vec2<f32>(x_1221.z, x_1221.w));
        let x_1224 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1223.x, x_1224.y, x_1223.y);
      } else {
        let x_1228 : i32 = u_xlati11;
        u_xlatb11 = (x_1228 == 1i);
        let x_1230 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_1230);
        let x_1232 : i32 = u_xlati11;
        if ((x_1232 != 0i)) {
          let x_1236 : vec3<f32> = vs_INTERP0;
          let x_1238 : i32 = u_xlati39;
          let x_1241 : i32 = u_xlati39;
          let x_1245 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[((x_1238 + 1i) / 4i)][((x_1241 + 1i) % 4i)];
          let x_1247 : vec2<f32> = (vec2<f32>(x_1236.y, x_1236.y) * vec2<f32>(x_1245.x, x_1245.y));
          let x_1248 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
          let x_1250 : i32 = u_xlati39;
          let x_1252 : i32 = u_xlati39;
          let x_1255 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[(x_1250 / 4i)][(x_1252 % 4i)];
          let x_1257 : vec3<f32> = vs_INTERP0;
          let x_1260 : vec4<f32> = u_xlat12;
          let x_1262 : vec2<f32> = ((vec2<f32>(x_1255.x, x_1255.y) * vec2<f32>(x_1257.x, x_1257.x)) + vec2<f32>(x_1260.x, x_1260.y));
          let x_1263 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1262.x, x_1262.y, x_1263.z, x_1263.w);
          let x_1265 : i32 = u_xlati39;
          let x_1268 : i32 = u_xlati39;
          let x_1272 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[((x_1265 + 2i) / 4i)][((x_1268 + 2i) % 4i)];
          let x_1274 : vec3<f32> = vs_INTERP0;
          let x_1277 : vec4<f32> = u_xlat12;
          let x_1279 : vec2<f32> = ((vec2<f32>(x_1272.x, x_1272.y) * vec2<f32>(x_1274.z, x_1274.z)) + vec2<f32>(x_1277.x, x_1277.y));
          let x_1280 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
          let x_1282 : vec4<f32> = u_xlat12;
          let x_1284 : i32 = u_xlati39;
          let x_1287 : i32 = u_xlati39;
          let x_1291 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[((x_1284 + 3i) / 4i)][((x_1287 + 3i) % 4i)];
          let x_1293 : vec2<f32> = (vec2<f32>(x_1282.x, x_1282.y) + vec2<f32>(x_1291.x, x_1291.y));
          let x_1294 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1293.x, x_1293.y, x_1294.z, x_1294.w);
          let x_1296 : vec4<f32> = u_xlat12;
          let x_1299 : vec2<f32> = ((vec2<f32>(x_1296.x, x_1296.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1300 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
          let x_1302 : vec4<f32> = u_xlat12;
          let x_1304 : vec2<f32> = fract(vec2<f32>(x_1302.x, x_1302.y));
          let x_1305 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1304.x, x_1304.y, x_1305.z, x_1305.w);
          let x_1307 : u32 = u_xlatu49;
          let x_1310 : vec4<f32> = x_1111.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1307)];
          let x_1312 : vec4<f32> = u_xlat12;
          let x_1315 : u32 = u_xlatu49;
          let x_1318 : vec4<f32> = x_1111.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1315)];
          let x_1320 : vec2<f32> = ((vec2<f32>(x_1310.x, x_1310.y) * vec2<f32>(x_1312.x, x_1312.y)) + vec2<f32>(x_1318.z, x_1318.w));
          let x_1321 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1320.x, x_1321.y, x_1320.y);
        } else {
          let x_1324 : vec3<f32> = vs_INTERP0;
          let x_1326 : i32 = u_xlati39;
          let x_1329 : i32 = u_xlati39;
          let x_1333 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[((x_1326 + 1i) / 4i)][((x_1329 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1324.y, x_1324.y, x_1324.y, x_1324.y) * x_1333);
          let x_1335 : i32 = u_xlati39;
          let x_1337 : i32 = u_xlati39;
          let x_1340 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[(x_1335 / 4i)][(x_1337 % 4i)];
          let x_1341 : vec3<f32> = vs_INTERP0;
          let x_1344 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1340 * vec4<f32>(x_1341.x, x_1341.x, x_1341.x, x_1341.x)) + x_1344);
          let x_1346 : i32 = u_xlati39;
          let x_1349 : i32 = u_xlati39;
          let x_1353 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[((x_1346 + 2i) / 4i)][((x_1349 + 2i) % 4i)];
          let x_1354 : vec3<f32> = vs_INTERP0;
          let x_1357 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1353 * vec4<f32>(x_1354.z, x_1354.z, x_1354.z, x_1354.z)) + x_1357);
          let x_1359 : vec4<f32> = u_xlat12;
          let x_1360 : i32 = u_xlati39;
          let x_1363 : i32 = u_xlati39;
          let x_1367 : vec4<f32> = x_1111.x_AdditionalLightsWorldToLights[((x_1360 + 3i) / 4i)][((x_1363 + 3i) % 4i)];
          u_xlat12 = (x_1359 + x_1367);
          let x_1369 : vec4<f32> = u_xlat12;
          let x_1371 : vec4<f32> = u_xlat12;
          let x_1373 : vec3<f32> = (vec3<f32>(x_1369.x, x_1369.y, x_1369.z) / vec3<f32>(x_1371.w, x_1371.w, x_1371.w));
          let x_1374 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
          let x_1376 : vec4<f32> = u_xlat12;
          let x_1378 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_1376.x, x_1376.y, x_1376.z), vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
          let x_1383 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_1383);
          let x_1386 : vec4<f32> = u_xlat11;
          let x_1388 : vec4<f32> = u_xlat12;
          let x_1390 : vec3<f32> = (vec3<f32>(x_1386.x, x_1386.x, x_1386.x) * vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
          let x_1391 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
          let x_1393 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_1393.x, x_1393.y, x_1393.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1400 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_1400, 0.000001f);
          let x_1405 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_1405);
          let x_1409 : vec4<f32> = u_xlat11;
          let x_1411 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1409.x, x_1409.x, x_1409.x) * vec3<f32>(x_1411.z, x_1411.x, x_1411.y));
          let x_1415 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1415);
          let x_1419 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1419, 0.0f, 1.0f);
          let x_1423 : vec3<f32> = u_xlat13;
          let x_1426 : vec4<bool> = (vec4<f32>(x_1423.y, x_1423.z, x_1423.y, x_1423.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb40 = vec2<bool>(x_1426.x, x_1426.y);
          let x_1430 : bool = u_xlatb40.x;
          if (x_1430) {
            let x_1435 : f32 = u_xlat13.x;
            x_1431 = x_1435;
          } else {
            let x_1438 : f32 = u_xlat13.x;
            x_1431 = -(x_1438);
          }
          let x_1440 : f32 = x_1431;
          u_xlat40.x = x_1440;
          let x_1443 : bool = u_xlatb40.y;
          if (x_1443) {
            let x_1448 : f32 = u_xlat13.x;
            x_1444 = x_1448;
          } else {
            let x_1451 : f32 = u_xlat13.x;
            x_1444 = -(x_1451);
          }
          let x_1453 : f32 = x_1444;
          u_xlat40.y = x_1453;
          let x_1455 : vec4<f32> = u_xlat12;
          let x_1457 : vec4<f32> = u_xlat11;
          let x_1460 : vec2<f32> = u_xlat40;
          let x_1461 : vec2<f32> = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1457.x, x_1457.x)) + x_1460);
          let x_1462 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1461.x, x_1462.y, x_1461.y, x_1462.w);
          let x_1464 : vec4<f32> = u_xlat11;
          let x_1467 : vec2<f32> = ((vec2<f32>(x_1464.x, x_1464.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1468 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1467.x, x_1468.y, x_1467.y, x_1468.w);
          let x_1470 : vec4<f32> = u_xlat11;
          let x_1474 : vec2<f32> = clamp(vec2<f32>(x_1470.x, x_1470.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1475 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1474.x, x_1475.y, x_1474.y, x_1475.w);
          let x_1477 : u32 = u_xlatu49;
          let x_1480 : vec4<f32> = x_1111.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1477)];
          let x_1482 : vec4<f32> = u_xlat11;
          let x_1485 : u32 = u_xlatu49;
          let x_1488 : vec4<f32> = x_1111.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1485)];
          let x_1490 : vec2<f32> = ((vec2<f32>(x_1480.x, x_1480.y) * vec2<f32>(x_1482.x, x_1482.z)) + vec2<f32>(x_1488.z, x_1488.w));
          let x_1491 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1490.x, x_1491.y, x_1490.y);
        }
      }
      let x_1498 : vec3<f32> = u_xlat25;
      let x_1501 : f32 = x_45.x_GlobalMipBias.x;
      let x_1502 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1498.x, x_1498.z), x_1501);
      u_xlat11 = x_1502;
      let x_1505 : bool = u_xlatb3.w;
      if (x_1505) {
        let x_1510 : f32 = u_xlat11.w;
        x_1506 = x_1510;
      } else {
        let x_1513 : f32 = u_xlat11.x;
        x_1506 = x_1513;
      }
      let x_1514 : f32 = x_1506;
      u_xlat53 = x_1514;
      let x_1516 : bool = u_xlatb3.x;
      if (x_1516) {
        let x_1520 : vec4<f32> = u_xlat11;
        x_1517 = vec3<f32>(x_1520.x, x_1520.y, x_1520.z);
      } else {
        let x_1523 : f32 = u_xlat53;
        x_1517 = vec3<f32>(x_1523, x_1523, x_1523);
      }
      let x_1525 : vec3<f32> = x_1517;
      let x_1526 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1532 : vec4<f32> = u_xlat11;
    let x_1534 : u32 = u_xlatu49;
    let x_1537 : vec4<f32> = x_997.x_AdditionalLightsColor[bitcast<i32>(x_1534)];
    let x_1539 : vec3<f32> = (vec3<f32>(x_1532.x, x_1532.y, x_1532.z) * vec3<f32>(x_1537.x, x_1537.y, x_1537.z));
    let x_1540 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1540.w);
    let x_1542 : vec3<f32> = u_xlat6;
    let x_1544 : vec4<f32> = u_xlat11;
    let x_1546 : vec3<f32> = (vec3<f32>(x_1542.x, x_1542.x, x_1542.x) * vec3<f32>(x_1544.x, x_1544.y, x_1544.z));
    let x_1547 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1547.w);
    let x_1549 : vec4<f32> = u_xlat1;
    let x_1551 : vec3<f32> = u_xlat24;
    u_xlat49 = dot(vec3<f32>(x_1549.x, x_1549.y, x_1549.w), x_1551);
    let x_1553 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1553, 0.0f, 1.0f);
    let x_1555 : f32 = u_xlat49;
    let x_1556 : f32 = u_xlat50;
    u_xlat49 = (x_1555 * x_1556);
    let x_1558 : f32 = u_xlat49;
    let x_1560 : vec4<f32> = u_xlat11;
    let x_1562 : vec3<f32> = (vec3<f32>(x_1558, x_1558, x_1558) * vec3<f32>(x_1560.x, x_1560.y, x_1560.z));
    let x_1563 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
    let x_1565 : vec3<f32> = u_xlat23;
    let x_1566 : f32 = u_xlat10;
    let x_1569 : vec3<f32> = u_xlat4;
    u_xlat23 = ((x_1565 * vec3<f32>(x_1566, x_1566, x_1566)) + x_1569);
    let x_1571 : vec3<f32> = u_xlat23;
    let x_1572 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_1571, x_1572);
    let x_1574 : f32 = u_xlat49;
    u_xlat49 = max(x_1574, 1.17549435e-37f);
    let x_1576 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1576);
    let x_1578 : f32 = u_xlat49;
    let x_1580 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1578, x_1578, x_1578) * x_1580);
    let x_1582 : vec4<f32> = u_xlat1;
    let x_1584 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(vec3<f32>(x_1582.x, x_1582.y, x_1582.w), x_1584);
    let x_1586 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1586, 0.0f, 1.0f);
    let x_1588 : vec3<f32> = u_xlat24;
    let x_1589 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1588, x_1589);
    let x_1591 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1591, 0.0f, 1.0f);
    let x_1593 : f32 = u_xlat49;
    let x_1594 : f32 = u_xlat49;
    u_xlat49 = (x_1593 * x_1594);
    let x_1596 : f32 = u_xlat49;
    let x_1598 : f32 = u_xlat9.x;
    u_xlat49 = ((x_1596 * x_1598) + 1.000010014f);
    let x_1601 : f32 = u_xlat50;
    let x_1602 : f32 = u_xlat50;
    u_xlat50 = (x_1601 * x_1602);
    let x_1604 : f32 = u_xlat49;
    let x_1605 : f32 = u_xlat49;
    u_xlat49 = (x_1604 * x_1605);
    let x_1607 : f32 = u_xlat50;
    u_xlat50 = max(x_1607, 0.100000001f);
    let x_1609 : f32 = u_xlat49;
    let x_1610 : f32 = u_xlat50;
    u_xlat49 = (x_1609 * x_1610);
    let x_1612 : f32 = u_xlat46;
    let x_1613 : f32 = u_xlat49;
    u_xlat49 = (x_1612 * x_1613);
    let x_1615 : f32 = u_xlat17;
    let x_1616 : f32 = u_xlat49;
    u_xlat49 = (x_1615 / x_1616);
    let x_1618 : vec3<f32> = u_xlat0;
    let x_1619 : f32 = u_xlat49;
    let x_1622 : vec3<f32> = u_xlat7;
    u_xlat23 = ((x_1618 * vec3<f32>(x_1619, x_1619, x_1619)) + x_1622);
    let x_1624 : vec3<f32> = u_xlat23;
    let x_1625 : vec4<f32> = u_xlat11;
    let x_1628 : vec4<f32> = u_xlat8;
    let x_1630 : vec3<f32> = ((x_1624 * vec3<f32>(x_1625.x, x_1625.y, x_1625.z)) + vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
    let x_1631 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);

    continuing {
      let x_1633 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1633 + bitcast<u32>(1i));
    }
  }
  let x_1635 : vec3<f32> = u_xlat5;
  let x_1636 : f32 = u_xlat31;
  let x_1639 : vec3<f32> = u_xlat20;
  u_xlat0 = ((x_1635 * vec3<f32>(x_1636, x_1636, x_1636)) + x_1639);
  let x_1641 : vec4<f32> = u_xlat8;
  let x_1643 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1641.x, x_1641.y, x_1641.z) + x_1643);
  let x_1645 : vec4<f32> = u_xlat2;
  let x_1647 : f32 = u_xlat29;
  let x_1650 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1645.x, x_1645.y, x_1645.z) * vec3<f32>(x_1647, x_1647, x_1647)) + x_1650);
  let x_1652 : f32 = u_xlat42;
  let x_1653 : f32 = u_xlat42;
  u_xlat42 = (x_1652 * -(x_1653));
  let x_1656 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1656);
  let x_1658 : vec3<f32> = u_xlat0;
  let x_1661 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1658 + -(vec3<f32>(x_1661.x, x_1661.y, x_1661.z)));
  let x_1667 : f32 = u_xlat42;
  let x_1669 : vec3<f32> = u_xlat0;
  let x_1672 : vec4<f32> = x_45.unity_FogColor;
  let x_1674 : vec3<f32> = ((vec3<f32>(x_1667, x_1667, x_1667) * x_1669) + vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
  let x_1675 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
  let x_1680 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_1682 : f32 = x_120.unity_RenderingLayer.x;
  u_xlatu0 = (x_1680 & bitcast<u32>(x_1682));
  let x_1685 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1685);
  let x_1690 : f32 = u_xlat0.x;
  let x_1693 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1690 * x_1693);
  let x_1698 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1698, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1703 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1703.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

