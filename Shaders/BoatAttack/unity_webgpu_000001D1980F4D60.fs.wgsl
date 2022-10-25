struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
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
}

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(6) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_500 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_895 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1330 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1452 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlatb44 : bool;
  var u_xlatb1 : bool;
  var x_412 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat43 : f32;
  var u_xlatb29 : bool;
  var x_461 : f32;
  var u_xlatb15 : vec3<bool>;
  var x_615 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var u_xlat34 : vec2<f32>;
  var u_xlat48 : f32;
  var u_xlatb34 : vec2<bool>;
  var x_963 : f32;
  var x_974 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu44 : u32;
  var u_xlati3 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat23 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati52 : i32;
  var u_xlati50 : i32;
  var u_xlati11 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb50 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4<f32>;
  var x_1755 : f32;
  var x_1768 : f32;
  var x_1830 : f32;
  var x_1841 : vec3<f32>;
  var x_2014 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_30, x_31);
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_37);
  let x_41 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_41);
  let x_44 : vec3<f32> = u_xlat0;
  let x_46 : vec3<f32> = vs_INTERP1;
  u_xlat0 = (vec3<f32>(x_44.x, x_44.x, x_44.x) * x_46);
  let x_61 : vec4<f32> = vs_INTERP3;
  let x_71 : f32 = x_66.x_GlobalMipBias.x;
  let x_72 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_61.x, x_61.y), x_71);
  u_xlat1 = x_72;
  let x_74 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = x_78.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_90 : vec4<f32> = vs_INTERP3;
  let x_93 : f32 = x_66.x_GlobalMipBias.x;
  let x_94 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_90.x, x_90.y), x_93);
  u_xlat3 = vec4<f32>(x_94.w, x_94.x, x_94.y, x_94.z);
  let x_97 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_97.y, x_97.z, x_97.w, x_97.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_106 : vec4<f32> = u_xlat4;
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_109);
  let x_112 : f32 = u_xlat42;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat17 = (vec3<f32>(x_112, x_112, x_112) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : f32 = vs_INTERP4.y;
  u_xlat42 = (x_120 * 200.0f);
  let x_123 : f32 = u_xlat42;
  u_xlat42 = min(x_123, 1.0f);
  let x_125 : f32 = u_xlat42;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = (vec3<f32>(x_125, x_125, x_125) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_133 : vec3<f32> = vs_INTERP0;
  let x_140 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres0;
  let x_143 : vec3<f32> = (x_133 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_INTERP0;
  let x_150 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres1;
  let x_153 : vec3<f32> = (x_147 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec3<f32> = vs_INTERP0;
  let x_160 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres2;
  let x_163 : vec3<f32> = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_INTERP0;
  let x_170 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres3;
  let x_173 : vec3<f32> = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat4;
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_182 : vec4<f32> = u_xlat5;
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_188 : vec4<f32> = u_xlat6;
  let x_190 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_195 : vec4<f32> = u_xlat7;
  let x_197 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_205 : vec4<f32> = u_xlat4;
  let x_208 : vec4<f32> = x_138.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_205 < x_208);
  let x_212 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_212);
  let x_217 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_229);
  let x_234 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_234);
  let x_238 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_238);
  let x_241 : vec4<f32> = u_xlat4;
  let x_243 : vec4<f32> = u_xlat5;
  let x_245 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) + vec3<f32>(x_243.y, x_243.z, x_243.w));
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_248 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = max(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_252.x, x_251.x, x_251.y, x_251.z);
  let x_254 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_254, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_259 : f32 = u_xlat42;
  u_xlat42 = (-(x_259) + 4.0f);
  let x_264 : f32 = u_xlat42;
  u_xlatu42 = u32(x_264);
  let x_268 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_268) << bitcast<u32>(2i));
  let x_271 : vec3<f32> = vs_INTERP0;
  let x_274 : i32 = u_xlati42;
  let x_277 : i32 = u_xlati42;
  let x_281 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_274 + 1i) / 4i)][((x_277 + 1i) % 4i)];
  let x_283 : vec3<f32> = (vec3<f32>(x_271.y, x_271.y, x_271.y) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : i32 = u_xlati42;
  let x_288 : i32 = u_xlati42;
  let x_291 : vec4<f32> = x_138.x_MainLightWorldToShadow[(x_286 / 4i)][(x_288 % 4i)];
  let x_293 : vec3<f32> = vs_INTERP0;
  let x_296 : vec4<f32> = u_xlat4;
  let x_298 : vec3<f32> = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.x, x_293.x, x_293.x)) + vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : i32 = u_xlati42;
  let x_304 : i32 = u_xlati42;
  let x_308 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_301 + 2i) / 4i)][((x_304 + 2i) % 4i)];
  let x_310 : vec3<f32> = vs_INTERP0;
  let x_313 : vec4<f32> = u_xlat4;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.z, x_310.z, x_310.z)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : i32 = u_xlati42;
  let x_323 : i32 = u_xlati42;
  let x_327 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_320 + 3i) / 4i)][((x_323 + 3i) % 4i)];
  let x_329 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_333 : vec4<f32> = u_xlat4;
  let x_334 : vec2<f32> = vec2<f32>(x_333.x, x_333.y);
  let x_336 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_334.x, x_334.y, x_336);
  let x_348 : vec3<f32> = txVec0;
  let x_350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_348.xy, x_348.z);
  u_xlat42 = x_350;
  let x_354 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat44 = (-(x_354) + 1.0f);
  let x_357 : f32 = u_xlat42;
  let x_359 : f32 = x_138.x_MainLightShadowParams.x;
  let x_361 : f32 = u_xlat44;
  u_xlat42 = ((x_357 * x_359) + x_361);
  let x_365 : f32 = u_xlat4.z;
  u_xlatb44 = (0.0f >= x_365);
  let x_368 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_368 >= 1.0f);
  let x_371 : bool = u_xlatb44;
  let x_373 : bool = u_xlatb4.x;
  u_xlatb44 = (x_371 | x_373);
  let x_375 : bool = u_xlatb44;
  let x_376 : f32 = u_xlat42;
  u_xlat42 = select(x_376, 1.0f, x_375);
  let x_378 : vec3<f32> = u_xlat0;
  let x_380 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat0.x = dot(x_378, -(vec3<f32>(x_380.x, x_380.y, x_380.z)));
  let x_386 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_386, 0.0f, 1.0f);
  let x_389 : f32 = u_xlat42;
  let x_392 : vec4<f32> = x_66.x_MainLightColor;
  let x_394 : vec3<f32> = (vec3<f32>(x_389, x_389, x_389) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec3<f32> = u_xlat0;
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_397.x, x_397.x, x_397.x) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec3<f32> = u_xlat0;
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_402 * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_408 : f32 = u_xlat1.w;
  u_xlatb1 = (x_408 >= 0.400000006f);
  let x_411 : bool = u_xlatb1;
  if (x_411) {
    let x_416 : f32 = u_xlat1.w;
    x_412 = x_416;
  } else {
    x_412 = 0.0f;
  }
  let x_418 : f32 = x_412;
  u_xlat1.x = x_418;
  let x_422 : f32 = u_xlat1.w;
  u_xlat15.x = (x_422 + -0.400000006f);
  let x_428 : f32 = u_xlat1.w;
  u_xlat29 = dpdxCoarse(x_428);
  let x_432 : f32 = u_xlat1.w;
  u_xlat43 = dpdyCoarse(x_432);
  let x_434 : f32 = u_xlat43;
  let x_436 : f32 = u_xlat29;
  u_xlat29 = (abs(x_434) + abs(x_436));
  let x_439 : f32 = u_xlat29;
  u_xlat29 = max(x_439, 0.0001f);
  let x_443 : f32 = u_xlat15.x;
  let x_444 : f32 = u_xlat29;
  u_xlat15.x = (x_443 / x_444);
  let x_448 : f32 = u_xlat15.x;
  u_xlat15.x = (x_448 + 0.5f);
  let x_453 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_453, 0.0f, 1.0f);
  let x_458 : f32 = x_66.x_AlphaToMaskAvailable;
  u_xlatb29 = !((x_458 == 0.0f));
  let x_460 : bool = u_xlatb29;
  if (x_460) {
    let x_465 : f32 = u_xlat15.x;
    x_461 = x_465;
  } else {
    let x_468 : f32 = u_xlat1.x;
    x_461 = x_468;
  }
  let x_469 : f32 = x_461;
  u_xlat1.x = x_469;
  let x_472 : f32 = u_xlat1.x;
  u_xlat15.x = (x_472 + -0.0001f);
  let x_480 : f32 = u_xlat15.x;
  u_xlatb15.x = (x_480 < 0.0f);
  let x_484 : bool = u_xlatb15.x;
  if (((select(0i, 1i, x_484) * -1i) != 0i)) {
    discard;
  }
  let x_494 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_494);
  let x_502 : f32 = x_500.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_502 >= 0.0f);
  let x_506 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_506);
  let x_510 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_510);
  let x_514 : f32 = u_xlat15.z;
  let x_516 : f32 = u_xlat15.x;
  u_xlat15.x = (x_514 * x_516);
  let x_519 : vec3<f32> = vs_INTERP1;
  let x_521 : vec4<f32> = vs_INTERP2;
  let x_523 : vec3<f32> = (vec3<f32>(x_519.z, x_519.x, x_519.y) * vec3<f32>(x_521.y, x_521.z, x_521.x));
  let x_524 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec3<f32> = vs_INTERP1;
  let x_528 : vec4<f32> = vs_INTERP2;
  let x_531 : vec4<f32> = u_xlat4;
  let x_534 : vec3<f32> = ((vec3<f32>(x_526.y, x_526.z, x_526.x) * vec3<f32>(x_528.z, x_528.x, x_528.y)) + -(vec3<f32>(x_531.x, x_531.y, x_531.z)));
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec3<f32> = u_xlat15;
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec3<f32> = (vec3<f32>(x_537.x, x_537.x, x_537.x) * vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec3<f32> = u_xlat17;
  let x_546 : vec4<f32> = u_xlat4;
  let x_548 : vec3<f32> = (vec3<f32>(x_544.y, x_544.y, x_544.y) * vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec3<f32> = u_xlat17;
  let x_553 : vec4<f32> = vs_INTERP2;
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.x, x_551.x, x_551.x) * vec3<f32>(x_553.x, x_553.y, x_553.z)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec3<f32> = u_xlat17;
  let x_563 : vec3<f32> = vs_INTERP1;
  let x_565 : vec4<f32> = u_xlat4;
  u_xlat17 = ((vec3<f32>(x_561.z, x_561.z, x_561.z) * x_563) + vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : vec3<f32> = u_xlat17;
  let x_569 : vec3<f32> = u_xlat17;
  u_xlat15.x = dot(x_568, x_569);
  let x_573 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_573);
  let x_576 : vec3<f32> = u_xlat15;
  let x_578 : vec3<f32> = u_xlat17;
  let x_579 : vec3<f32> = (vec3<f32>(x_576.x, x_576.x, x_576.x) * x_578);
  let x_580 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_584 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb15.x = (x_584 == 0.0f);
  let x_587 : vec3<f32> = vs_INTERP0;
  let x_592 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (-(x_587) + x_592);
  let x_594 : vec3<f32> = u_xlat17;
  let x_595 : vec3<f32> = u_xlat17;
  u_xlat43 = dot(x_594, x_595);
  let x_597 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_597);
  let x_599 : f32 = u_xlat43;
  let x_601 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_599, x_599, x_599) * x_601);
  let x_605 : f32 = x_66.unity_MatrixV[0i].z;
  u_xlat5.x = x_605;
  let x_608 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat5.y = x_608;
  let x_611 : f32 = x_66.unity_MatrixV[2i].z;
  u_xlat5.z = x_611;
  let x_614 : bool = u_xlatb15.x;
  if (x_614) {
    let x_618 : vec3<f32> = u_xlat17;
    x_615 = x_618;
  } else {
    let x_620 : vec4<f32> = u_xlat5;
    x_615 = vec3<f32>(x_620.x, x_620.y, x_620.z);
  }
  let x_622 : vec3<f32> = x_615;
  u_xlat17 = x_622;
  let x_624 : f32 = vs_INTERP0.y;
  let x_626 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat15.x = (x_624 * x_626);
  let x_630 : f32 = x_66.unity_MatrixV[0i].z;
  let x_632 : f32 = vs_INTERP0.x;
  let x_635 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_630 * x_632) + x_635);
  let x_639 : f32 = x_66.unity_MatrixV[2i].z;
  let x_641 : f32 = vs_INTERP0.z;
  let x_644 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_639 * x_641) + x_644);
  let x_648 : f32 = u_xlat15.x;
  let x_650 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat15.x = (x_648 + x_650);
  let x_654 : f32 = u_xlat15.x;
  let x_657 : f32 = x_66.x_ProjectionParams.y;
  u_xlat15.x = (-(x_654) + -(x_657));
  let x_662 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_662, 0.0f);
  let x_666 : f32 = u_xlat15.x;
  let x_669 : f32 = x_66.unity_FogParams.x;
  u_xlat15.x = (x_666 * x_669);
  u_xlat4.w = 1.0f;
  let x_675 : vec4<f32> = x_500.unity_SHAr;
  let x_676 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_675, x_676);
  let x_681 : vec4<f32> = x_500.unity_SHAg;
  let x_682 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_681, x_682);
  let x_687 : vec4<f32> = x_500.unity_SHAb;
  let x_688 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_687, x_688);
  let x_691 : vec4<f32> = u_xlat4;
  let x_693 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_691.y, x_691.z, x_691.z, x_691.x) * vec4<f32>(x_693.x, x_693.y, x_693.z, x_693.z));
  let x_698 : vec4<f32> = x_500.unity_SHBr;
  let x_699 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_698, x_699);
  let x_704 : vec4<f32> = x_500.unity_SHBg;
  let x_705 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_704, x_705);
  let x_710 : vec4<f32> = x_500.unity_SHBb;
  let x_711 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_710, x_711);
  let x_715 : f32 = u_xlat4.y;
  let x_717 : f32 = u_xlat4.y;
  u_xlat43 = (x_715 * x_717);
  let x_720 : f32 = u_xlat4.x;
  let x_722 : f32 = u_xlat4.x;
  let x_724 : f32 = u_xlat43;
  u_xlat43 = ((x_720 * x_722) + -(x_724));
  let x_729 : vec4<f32> = x_500.unity_SHC;
  let x_731 : f32 = u_xlat43;
  let x_734 : vec4<f32> = u_xlat7;
  let x_736 : vec3<f32> = ((vec3<f32>(x_729.x, x_729.y, x_729.z) * vec3<f32>(x_731, x_731, x_731)) + vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat5;
  let x_741 : vec4<f32> = u_xlat6;
  let x_743 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : vec4<f32> = u_xlat5;
  let x_748 : vec3<f32> = max(vec3<f32>(x_746.x, x_746.y, x_746.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_749 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_753 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_754 : vec2<f32> = vec2<f32>(x_753.x, x_753.y);
  let x_758 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_754.x, x_754.y));
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat6;
  let x_763 : vec4<f32> = hlslcc_FragCoord;
  let x_765 : vec2<f32> = (vec2<f32>(x_761.x, x_761.y) * vec2<f32>(x_763.x, x_763.y));
  let x_766 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
  let x_769 : f32 = u_xlat6.y;
  let x_772 : f32 = x_66.x_ScaleBiasRt.x;
  let x_775 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat43 = ((x_769 * x_772) + x_775);
  let x_777 : f32 = u_xlat43;
  u_xlat6.z = (-(x_777) + 1.0f);
  let x_782 : f32 = u_xlat3.x;
  u_xlat3.x = x_782;
  let x_785 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_785, 0.0f, 1.0f);
  let x_789 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_789, 1.0f);
  let x_792 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_792 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_797 : f32 = u_xlat3.x;
  u_xlat43 = (-(x_797) + 1.0f);
  let x_800 : f32 = u_xlat43;
  let x_801 : f32 = u_xlat43;
  u_xlat44 = (x_800 * x_801);
  let x_803 : f32 = u_xlat44;
  u_xlat44 = max(x_803, 0.0078125f);
  let x_807 : f32 = u_xlat44;
  let x_808 : f32 = u_xlat44;
  u_xlat46 = (x_807 * x_808);
  let x_811 : f32 = u_xlat3.x;
  u_xlat3.x = (x_811 + 0.040000021f);
  let x_816 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_816, 1.0f);
  let x_820 : f32 = u_xlat44;
  u_xlat47 = ((x_820 * 4.0f) + 2.0f);
  let x_828 : vec4<f32> = u_xlat6;
  let x_831 : f32 = x_66.x_GlobalMipBias.x;
  let x_832 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_828.x, x_828.z), x_831);
  u_xlat6.x = x_832.x;
  let x_837 : f32 = u_xlat6.x;
  u_xlat20 = (x_837 + -1.0f);
  let x_840 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_841 : f32 = u_xlat20;
  u_xlat20 = ((x_840 * x_841) + 1.0f);
  let x_845 : f32 = u_xlat6.x;
  let x_847 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_845, x_847);
  let x_850 : vec3<f32> = vs_INTERP0;
  let x_852 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_854 : vec3<f32> = (x_850 + -(x_852));
  let x_855 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_859 : vec4<f32> = u_xlat7;
  let x_861 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_859.x, x_859.y, x_859.z), vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_866 : f32 = u_xlat34.x;
  let x_868 : f32 = x_138.x_MainLightShadowParams.z;
  let x_871 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_866 * x_868) + x_871);
  let x_875 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_875, 0.0f, 1.0f);
  let x_879 : f32 = u_xlat42;
  u_xlat48 = (-(x_879) + 1.0f);
  let x_883 : f32 = u_xlat34.x;
  let x_884 : f32 = u_xlat48;
  let x_886 : f32 = u_xlat42;
  u_xlat42 = ((x_883 * x_884) + x_886);
  let x_897 : f32 = x_895.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_897 == -1.0f));
  let x_901 : bool = u_xlatb34.x;
  if (x_901) {
    let x_904 : vec3<f32> = vs_INTERP0;
    let x_907 : vec4<f32> = x_895.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_904.y, x_904.y) * vec2<f32>(x_907.x, x_907.y));
    let x_911 : vec4<f32> = x_895.x_MainLightWorldToLight[0i];
    let x_913 : vec3<f32> = vs_INTERP0;
    let x_916 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_911.x, x_911.y) * vec2<f32>(x_913.x, x_913.x)) + x_916);
    let x_919 : vec4<f32> = x_895.x_MainLightWorldToLight[2i];
    let x_921 : vec3<f32> = vs_INTERP0;
    let x_924 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_919.x, x_919.y) * vec2<f32>(x_921.z, x_921.z)) + x_924);
    let x_926 : vec2<f32> = u_xlat34;
    let x_928 : vec4<f32> = x_895.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_926 + vec2<f32>(x_928.x, x_928.y));
    let x_931 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_931 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_940 : vec2<f32> = u_xlat34;
    let x_942 : f32 = x_66.x_GlobalMipBias.x;
    let x_943 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_940, x_942);
    u_xlat7 = x_943;
    let x_945 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_947 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_949 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_951 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_952 : vec4<f32> = vec4<f32>(x_945, x_947, x_949, x_951);
    let x_959 : vec4<bool> = (vec4<f32>(x_952.x, x_952.y, x_952.z, x_952.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_959.x, x_959.y);
    let x_962 : bool = u_xlatb34.y;
    if (x_962) {
      let x_967 : f32 = u_xlat7.w;
      x_963 = x_967;
    } else {
      let x_970 : f32 = u_xlat7.x;
      x_963 = x_970;
    }
    let x_971 : f32 = x_963;
    u_xlat48 = x_971;
    let x_973 : bool = u_xlatb34.x;
    if (x_973) {
      let x_977 : vec4<f32> = u_xlat7;
      x_974 = vec3<f32>(x_977.x, x_977.y, x_977.z);
    } else {
      let x_980 : f32 = u_xlat48;
      x_974 = vec3<f32>(x_980, x_980, x_980);
    }
    let x_982 : vec3<f32> = x_974;
    let x_983 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_989 : vec4<f32> = u_xlat7;
  let x_992 : vec4<f32> = x_66.x_MainLightColor;
  let x_994 : vec3<f32> = (vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : f32 = u_xlat20;
  let x_999 : vec4<f32> = u_xlat7;
  let x_1001 : vec3<f32> = (vec3<f32>(x_997, x_997, x_997) * vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec3<f32> = u_xlat17;
  let x_1006 : vec4<f32> = u_xlat4;
  u_xlat34.x = dot(-(x_1004), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1011 : f32 = u_xlat34.x;
  let x_1013 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1011 + x_1013);
  let x_1017 : vec4<f32> = u_xlat4;
  let x_1019 : vec2<f32> = u_xlat34;
  let x_1023 : vec3<f32> = u_xlat17;
  let x_1025 : vec3<f32> = ((vec3<f32>(x_1017.x, x_1017.y, x_1017.z) * -(vec3<f32>(x_1019.x, x_1019.x, x_1019.x))) + -(x_1023));
  let x_1026 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat4;
  let x_1030 : vec3<f32> = u_xlat17;
  u_xlat34.x = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), x_1030);
  let x_1034 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1034, 0.0f, 1.0f);
  let x_1038 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1038) + 1.0f);
  let x_1043 : f32 = u_xlat34.x;
  let x_1045 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1043 * x_1045);
  let x_1049 : f32 = u_xlat34.x;
  let x_1051 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1049 * x_1051);
  let x_1054 : f32 = u_xlat43;
  u_xlat48 = ((-(x_1054) * 0.699999988f) + 1.700000048f);
  let x_1060 : f32 = u_xlat43;
  let x_1061 : f32 = u_xlat48;
  u_xlat43 = (x_1060 * x_1061);
  let x_1063 : f32 = u_xlat43;
  u_xlat43 = (x_1063 * 6.0f);
  let x_1074 : vec4<f32> = u_xlat8;
  let x_1076 : f32 = u_xlat43;
  let x_1077 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1074.x, x_1074.y, x_1074.z), x_1076);
  u_xlat8 = x_1077;
  let x_1079 : f32 = u_xlat8.w;
  u_xlat43 = (x_1079 + -1.0f);
  let x_1082 : f32 = x_500.unity_SpecCube0_HDR.w;
  let x_1083 : f32 = u_xlat43;
  u_xlat43 = ((x_1082 * x_1083) + 1.0f);
  let x_1086 : f32 = u_xlat43;
  u_xlat43 = max(x_1086, 0.0f);
  let x_1088 : f32 = u_xlat43;
  u_xlat43 = log2(x_1088);
  let x_1090 : f32 = u_xlat43;
  let x_1092 : f32 = x_500.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_1090 * x_1092);
  let x_1094 : f32 = u_xlat43;
  u_xlat43 = exp2(x_1094);
  let x_1096 : f32 = u_xlat43;
  let x_1098 : f32 = x_500.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_1096 * x_1098);
  let x_1100 : vec4<f32> = u_xlat8;
  let x_1102 : f32 = u_xlat43;
  let x_1104 : vec3<f32> = (vec3<f32>(x_1100.x, x_1100.y, x_1100.z) * vec3<f32>(x_1102, x_1102, x_1102));
  let x_1105 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1108 : f32 = u_xlat44;
  let x_1110 : f32 = u_xlat44;
  u_xlat9 = ((vec2<f32>(x_1108, x_1108) * vec2<f32>(x_1110, x_1110)) + vec2<f32>(-1.0f, 1.0f));
  let x_1116 : f32 = u_xlat9.y;
  u_xlat43 = (1.0f / x_1116);
  let x_1119 : f32 = u_xlat3.x;
  u_xlat44 = (x_1119 + -0.039999999f);
  let x_1123 : f32 = u_xlat34.x;
  let x_1124 : f32 = u_xlat44;
  u_xlat44 = ((x_1123 * x_1124) + 0.039999999f);
  let x_1128 : f32 = u_xlat43;
  let x_1129 : f32 = u_xlat44;
  u_xlat43 = (x_1128 * x_1129);
  let x_1131 : f32 = u_xlat43;
  let x_1133 : vec4<f32> = u_xlat8;
  let x_1135 : vec3<f32> = (vec3<f32>(x_1131, x_1131, x_1131) * vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat5;
  let x_1140 : vec3<f32> = u_xlat2;
  let x_1142 : vec4<f32> = u_xlat8;
  let x_1144 : vec3<f32> = ((vec3<f32>(x_1138.x, x_1138.y, x_1138.z) * x_1140) + vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : f32 = u_xlat42;
  let x_1149 : f32 = x_500.unity_LightData.z;
  u_xlat42 = (x_1147 * x_1149);
  let x_1151 : vec4<f32> = u_xlat4;
  let x_1154 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1151.x, x_1151.y, x_1151.z), vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1157 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1157, 0.0f, 1.0f);
  let x_1159 : f32 = u_xlat42;
  let x_1160 : f32 = u_xlat43;
  u_xlat42 = (x_1159 * x_1160);
  let x_1162 : f32 = u_xlat42;
  let x_1164 : vec4<f32> = u_xlat7;
  let x_1166 : vec3<f32> = (vec3<f32>(x_1162, x_1162, x_1162) * vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1167 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1169 : vec3<f32> = u_xlat17;
  let x_1171 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1173 : vec3<f32> = (x_1169 + vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
  let x_1174 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
  let x_1176 : vec4<f32> = u_xlat8;
  let x_1178 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1176.x, x_1176.y, x_1176.z), vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1181 : f32 = u_xlat42;
  u_xlat42 = max(x_1181, 1.17549435e-37f);
  let x_1184 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1184);
  let x_1186 : f32 = u_xlat42;
  let x_1188 : vec4<f32> = u_xlat8;
  let x_1190 : vec3<f32> = (vec3<f32>(x_1186, x_1186, x_1186) * vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1193 : vec4<f32> = u_xlat4;
  let x_1195 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1193.x, x_1193.y, x_1193.z), vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
  let x_1198 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1198, 0.0f, 1.0f);
  let x_1201 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1203 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1201.x, x_1201.y, x_1201.z), vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1206, 0.0f, 1.0f);
  let x_1208 : f32 = u_xlat42;
  let x_1209 : f32 = u_xlat42;
  u_xlat42 = (x_1208 * x_1209);
  let x_1211 : f32 = u_xlat42;
  let x_1213 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1211 * x_1213) + 1.000010014f);
  let x_1217 : f32 = u_xlat43;
  let x_1218 : f32 = u_xlat43;
  u_xlat43 = (x_1217 * x_1218);
  let x_1220 : f32 = u_xlat42;
  let x_1221 : f32 = u_xlat42;
  u_xlat42 = (x_1220 * x_1221);
  let x_1223 : f32 = u_xlat43;
  u_xlat43 = max(x_1223, 0.100000001f);
  let x_1226 : f32 = u_xlat42;
  let x_1227 : f32 = u_xlat43;
  u_xlat42 = (x_1226 * x_1227);
  let x_1229 : f32 = u_xlat47;
  let x_1230 : f32 = u_xlat42;
  u_xlat42 = (x_1229 * x_1230);
  let x_1232 : f32 = u_xlat46;
  let x_1233 : f32 = u_xlat42;
  u_xlat42 = (x_1232 / x_1233);
  let x_1235 : f32 = u_xlat42;
  let x_1239 : vec3<f32> = u_xlat2;
  let x_1240 : vec3<f32> = ((vec3<f32>(x_1235, x_1235, x_1235) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1239);
  let x_1241 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : vec4<f32> = u_xlat7;
  let x_1245 : vec4<f32> = u_xlat8;
  let x_1247 : vec3<f32> = (vec3<f32>(x_1243.x, x_1243.y, x_1243.z) * vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
  let x_1248 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
  let x_1252 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1254 : f32 = x_500.unity_LightData.y;
  u_xlat42 = min(x_1252, x_1254);
  let x_1256 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1256));
  let x_1260 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1262 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1264 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1266 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1267 : vec4<f32> = vec4<f32>(x_1260, x_1262, x_1264, x_1266);
  let x_1273 : vec4<bool> = (vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1267.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1273.x, x_1273.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1284 : u32 = u_xlatu_loop_1;
    let x_1285 : u32 = u_xlatu42;
    if ((x_1284 < x_1285)) {
    } else {
      break;
    }
    let x_1288 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_1288 >> 2u);
    let x_1291 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_1291 & 3u));
    let x_1294 : u32 = u_xlatu44;
    let x_1297 : vec4<f32> = x_500.unity_LightIndices[bitcast<i32>(x_1294)];
    let x_1307 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1312 : vec4<u32> = indexable[x_1307];
    u_xlat44 = dot(x_1297, bitcast<vec4<f32>>(x_1312));
    let x_1315 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_1315));
    let x_1319 : vec3<f32> = vs_INTERP0;
    let x_1331 : u32 = u_xlatu44;
    let x_1334 : vec4<f32> = x_1330.x_AdditionalLightsPosition[bitcast<i32>(x_1331)];
    let x_1337 : u32 = u_xlatu44;
    let x_1340 : vec4<f32> = x_1330.x_AdditionalLightsPosition[bitcast<i32>(x_1337)];
    u_xlat23 = ((-(x_1319) * vec3<f32>(x_1334.w, x_1334.w, x_1334.w)) + vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
    let x_1343 : vec3<f32> = u_xlat23;
    let x_1344 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1343, x_1344);
    let x_1348 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1348, 6.10351562e-05f);
    let x_1354 : f32 = u_xlat3.x;
    u_xlat49 = inverseSqrt(x_1354);
    let x_1357 : f32 = u_xlat49;
    let x_1359 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1357, x_1357, x_1357) * x_1359);
    let x_1363 : f32 = u_xlat3.x;
    u_xlat50 = (1.0f / x_1363);
    let x_1366 : f32 = u_xlat3.x;
    let x_1367 : u32 = u_xlatu44;
    let x_1370 : f32 = x_1330.x_AdditionalLightsAttenuation[bitcast<i32>(x_1367)].x;
    u_xlat3.x = (x_1366 * x_1370);
    let x_1374 : f32 = u_xlat3.x;
    let x_1377 : f32 = u_xlat3.x;
    u_xlat3.x = ((-(x_1374) * x_1377) + 1.0f);
    let x_1382 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1382, 0.0f);
    let x_1386 : f32 = u_xlat3.x;
    let x_1388 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1386 * x_1388);
    let x_1392 : f32 = u_xlat3.x;
    let x_1393 : f32 = u_xlat50;
    u_xlat3.x = (x_1392 * x_1393);
    let x_1396 : u32 = u_xlatu44;
    let x_1399 : vec4<f32> = x_1330.x_AdditionalLightsSpotDir[bitcast<i32>(x_1396)];
    let x_1401 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1399.x, x_1399.y, x_1399.z), x_1401);
    let x_1403 : f32 = u_xlat50;
    let x_1404 : u32 = u_xlatu44;
    let x_1407 : f32 = x_1330.x_AdditionalLightsAttenuation[bitcast<i32>(x_1404)].z;
    let x_1409 : u32 = u_xlatu44;
    let x_1412 : f32 = x_1330.x_AdditionalLightsAttenuation[bitcast<i32>(x_1409)].w;
    u_xlat50 = ((x_1403 * x_1407) + x_1412);
    let x_1414 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1414, 0.0f, 1.0f);
    let x_1416 : f32 = u_xlat50;
    let x_1417 : f32 = u_xlat50;
    u_xlat50 = (x_1416 * x_1417);
    let x_1420 : f32 = u_xlat3.x;
    let x_1421 : f32 = u_xlat50;
    u_xlat3.x = (x_1420 * x_1421);
    let x_1425 : u32 = u_xlatu44;
    u_xlatu50 = (x_1425 >> 5u);
    let x_1428 : u32 = u_xlatu44;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1428) & 31i)));
    let x_1434 : i32 = u_xlati52;
    let x_1436 : u32 = u_xlatu50;
    let x_1439 : f32 = x_895.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1436)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1434) & bitcast<u32>(x_1439)));
    let x_1443 : i32 = u_xlati50;
    if ((x_1443 != 0i)) {
      let x_1453 : u32 = u_xlatu44;
      let x_1456 : f32 = x_1452.x_AdditionalLightsLightTypes[bitcast<i32>(x_1453)].el;
      u_xlati50 = i32(x_1456);
      let x_1458 : i32 = u_xlati50;
      u_xlati52 = select(1i, 0i, (x_1458 != 0i));
      let x_1462 : u32 = u_xlatu44;
      u_xlati11 = (bitcast<i32>(x_1462) << bitcast<u32>(2i));
      let x_1465 : i32 = u_xlati52;
      if ((x_1465 != 0i)) {
        let x_1470 : vec3<f32> = vs_INTERP0;
        let x_1472 : i32 = u_xlati11;
        let x_1475 : i32 = u_xlati11;
        let x_1479 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[((x_1472 + 1i) / 4i)][((x_1475 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1470.y, x_1470.y, x_1470.y) * vec3<f32>(x_1479.x, x_1479.y, x_1479.w));
        let x_1482 : i32 = u_xlati11;
        let x_1484 : i32 = u_xlati11;
        let x_1487 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[(x_1482 / 4i)][(x_1484 % 4i)];
        let x_1489 : vec3<f32> = vs_INTERP0;
        let x_1492 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1487.x, x_1487.y, x_1487.w) * vec3<f32>(x_1489.x, x_1489.x, x_1489.x)) + x_1492);
        let x_1494 : i32 = u_xlati11;
        let x_1497 : i32 = u_xlati11;
        let x_1501 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[((x_1494 + 2i) / 4i)][((x_1497 + 2i) % 4i)];
        let x_1503 : vec3<f32> = vs_INTERP0;
        let x_1506 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1501.x, x_1501.y, x_1501.w) * vec3<f32>(x_1503.z, x_1503.z, x_1503.z)) + x_1506);
        let x_1508 : vec3<f32> = u_xlat25;
        let x_1509 : i32 = u_xlati11;
        let x_1512 : i32 = u_xlati11;
        let x_1516 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[((x_1509 + 3i) / 4i)][((x_1512 + 3i) % 4i)];
        u_xlat25 = (x_1508 + vec3<f32>(x_1516.x, x_1516.y, x_1516.w));
        let x_1519 : vec3<f32> = u_xlat25;
        let x_1521 : vec3<f32> = u_xlat25;
        let x_1523 : vec2<f32> = (vec2<f32>(x_1519.x, x_1519.y) / vec2<f32>(x_1521.z, x_1521.z));
        let x_1524 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1523.x, x_1523.y, x_1524.z);
        let x_1526 : vec3<f32> = u_xlat25;
        let x_1529 : vec2<f32> = ((vec2<f32>(x_1526.x, x_1526.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1530 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1529.x, x_1529.y, x_1530.z);
        let x_1532 : vec3<f32> = u_xlat25;
        let x_1536 : vec2<f32> = clamp(vec2<f32>(x_1532.x, x_1532.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1537 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1536.x, x_1536.y, x_1537.z);
        let x_1539 : u32 = u_xlatu44;
        let x_1542 : vec4<f32> = x_1452.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1539)];
        let x_1544 : vec3<f32> = u_xlat25;
        let x_1547 : u32 = u_xlatu44;
        let x_1550 : vec4<f32> = x_1452.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1547)];
        let x_1552 : vec2<f32> = ((vec2<f32>(x_1542.x, x_1542.y) * vec2<f32>(x_1544.x, x_1544.y)) + vec2<f32>(x_1550.z, x_1550.w));
        let x_1553 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1552.x, x_1552.y, x_1553.z);
      } else {
        let x_1557 : i32 = u_xlati50;
        u_xlatb50 = (x_1557 == 1i);
        let x_1559 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1559);
        let x_1561 : i32 = u_xlati50;
        if ((x_1561 != 0i)) {
          let x_1566 : vec3<f32> = vs_INTERP0;
          let x_1568 : i32 = u_xlati11;
          let x_1571 : i32 = u_xlati11;
          let x_1575 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[((x_1568 + 1i) / 4i)][((x_1571 + 1i) % 4i)];
          let x_1577 : vec2<f32> = (vec2<f32>(x_1566.y, x_1566.y) * vec2<f32>(x_1575.x, x_1575.y));
          let x_1578 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1577.x, x_1577.y, x_1578.z, x_1578.w);
          let x_1580 : i32 = u_xlati11;
          let x_1582 : i32 = u_xlati11;
          let x_1585 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[(x_1580 / 4i)][(x_1582 % 4i)];
          let x_1587 : vec3<f32> = vs_INTERP0;
          let x_1590 : vec4<f32> = u_xlat12;
          let x_1592 : vec2<f32> = ((vec2<f32>(x_1585.x, x_1585.y) * vec2<f32>(x_1587.x, x_1587.x)) + vec2<f32>(x_1590.x, x_1590.y));
          let x_1593 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
          let x_1595 : i32 = u_xlati11;
          let x_1598 : i32 = u_xlati11;
          let x_1602 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[((x_1595 + 2i) / 4i)][((x_1598 + 2i) % 4i)];
          let x_1604 : vec3<f32> = vs_INTERP0;
          let x_1607 : vec4<f32> = u_xlat12;
          let x_1609 : vec2<f32> = ((vec2<f32>(x_1602.x, x_1602.y) * vec2<f32>(x_1604.z, x_1604.z)) + vec2<f32>(x_1607.x, x_1607.y));
          let x_1610 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1609.x, x_1609.y, x_1610.z, x_1610.w);
          let x_1612 : vec4<f32> = u_xlat12;
          let x_1614 : i32 = u_xlati11;
          let x_1617 : i32 = u_xlati11;
          let x_1621 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[((x_1614 + 3i) / 4i)][((x_1617 + 3i) % 4i)];
          let x_1623 : vec2<f32> = (vec2<f32>(x_1612.x, x_1612.y) + vec2<f32>(x_1621.x, x_1621.y));
          let x_1624 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1623.x, x_1623.y, x_1624.z, x_1624.w);
          let x_1626 : vec4<f32> = u_xlat12;
          let x_1629 : vec2<f32> = ((vec2<f32>(x_1626.x, x_1626.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1630 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1629.x, x_1629.y, x_1630.z, x_1630.w);
          let x_1632 : vec4<f32> = u_xlat12;
          let x_1634 : vec2<f32> = fract(vec2<f32>(x_1632.x, x_1632.y));
          let x_1635 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
          let x_1637 : u32 = u_xlatu44;
          let x_1640 : vec4<f32> = x_1452.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1637)];
          let x_1642 : vec4<f32> = u_xlat12;
          let x_1645 : u32 = u_xlatu44;
          let x_1648 : vec4<f32> = x_1452.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1645)];
          let x_1650 : vec2<f32> = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642.x, x_1642.y)) + vec2<f32>(x_1648.z, x_1648.w));
          let x_1651 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1650.x, x_1650.y, x_1651.z);
        } else {
          let x_1654 : vec3<f32> = vs_INTERP0;
          let x_1656 : i32 = u_xlati11;
          let x_1659 : i32 = u_xlati11;
          let x_1663 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[((x_1656 + 1i) / 4i)][((x_1659 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1654.y, x_1654.y, x_1654.y, x_1654.y) * x_1663);
          let x_1665 : i32 = u_xlati11;
          let x_1667 : i32 = u_xlati11;
          let x_1670 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[(x_1665 / 4i)][(x_1667 % 4i)];
          let x_1671 : vec3<f32> = vs_INTERP0;
          let x_1674 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1670 * vec4<f32>(x_1671.x, x_1671.x, x_1671.x, x_1671.x)) + x_1674);
          let x_1676 : i32 = u_xlati11;
          let x_1679 : i32 = u_xlati11;
          let x_1683 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[((x_1676 + 2i) / 4i)][((x_1679 + 2i) % 4i)];
          let x_1684 : vec3<f32> = vs_INTERP0;
          let x_1687 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1683 * vec4<f32>(x_1684.z, x_1684.z, x_1684.z, x_1684.z)) + x_1687);
          let x_1689 : vec4<f32> = u_xlat12;
          let x_1690 : i32 = u_xlati11;
          let x_1693 : i32 = u_xlati11;
          let x_1697 : vec4<f32> = x_1452.x_AdditionalLightsWorldToLights[((x_1690 + 3i) / 4i)][((x_1693 + 3i) % 4i)];
          u_xlat12 = (x_1689 + x_1697);
          let x_1699 : vec4<f32> = u_xlat12;
          let x_1701 : vec4<f32> = u_xlat12;
          let x_1703 : vec3<f32> = (vec3<f32>(x_1699.x, x_1699.y, x_1699.z) / vec3<f32>(x_1701.w, x_1701.w, x_1701.w));
          let x_1704 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1703.x, x_1703.y, x_1703.z, x_1704.w);
          let x_1706 : vec4<f32> = u_xlat12;
          let x_1708 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1706.x, x_1706.y, x_1706.z), vec3<f32>(x_1708.x, x_1708.y, x_1708.z));
          let x_1711 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1711);
          let x_1713 : f32 = u_xlat50;
          let x_1715 : vec4<f32> = u_xlat12;
          let x_1717 : vec3<f32> = (vec3<f32>(x_1713, x_1713, x_1713) * vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
          let x_1718 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
          let x_1720 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1720.x, x_1720.y, x_1720.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1725 : f32 = u_xlat50;
          u_xlat50 = max(x_1725, 0.000001f);
          let x_1728 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1728);
          let x_1731 : f32 = u_xlat50;
          let x_1733 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1731, x_1731, x_1731) * vec3<f32>(x_1733.z, x_1733.x, x_1733.y));
          let x_1737 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1737);
          let x_1741 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1741, 0.0f, 1.0f);
          let x_1745 : vec3<f32> = u_xlat13;
          let x_1748 : vec4<bool> = (vec4<f32>(x_1745.y, x_1745.y, x_1745.y, x_1745.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1749 : vec2<bool> = vec2<bool>(x_1748.x, x_1748.w);
          let x_1750 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1749.x, x_1750.y, x_1750.z, x_1749.y);
          let x_1754 : bool = u_xlatb11.x;
          if (x_1754) {
            let x_1759 : f32 = u_xlat13.x;
            x_1755 = x_1759;
          } else {
            let x_1762 : f32 = u_xlat13.x;
            x_1755 = -(x_1762);
          }
          let x_1764 : f32 = x_1755;
          u_xlat11.x = x_1764;
          let x_1767 : bool = u_xlatb11.w;
          if (x_1767) {
            let x_1772 : f32 = u_xlat13.x;
            x_1768 = x_1772;
          } else {
            let x_1775 : f32 = u_xlat13.x;
            x_1768 = -(x_1775);
          }
          let x_1777 : f32 = x_1768;
          u_xlat11.w = x_1777;
          let x_1779 : vec4<f32> = u_xlat12;
          let x_1781 : f32 = u_xlat50;
          let x_1784 : vec4<f32> = u_xlat11;
          let x_1786 : vec2<f32> = ((vec2<f32>(x_1779.x, x_1779.y) * vec2<f32>(x_1781, x_1781)) + vec2<f32>(x_1784.x, x_1784.w));
          let x_1787 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1786.x, x_1787.y, x_1787.z, x_1786.y);
          let x_1789 : vec4<f32> = u_xlat11;
          let x_1792 : vec2<f32> = ((vec2<f32>(x_1789.x, x_1789.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1793 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1792.x, x_1793.y, x_1793.z, x_1792.y);
          let x_1795 : vec4<f32> = u_xlat11;
          let x_1799 : vec2<f32> = clamp(vec2<f32>(x_1795.x, x_1795.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1800 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1799.x, x_1800.y, x_1800.z, x_1799.y);
          let x_1802 : u32 = u_xlatu44;
          let x_1805 : vec4<f32> = x_1452.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1802)];
          let x_1807 : vec4<f32> = u_xlat11;
          let x_1810 : u32 = u_xlatu44;
          let x_1813 : vec4<f32> = x_1452.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1810)];
          let x_1815 : vec2<f32> = ((vec2<f32>(x_1805.x, x_1805.y) * vec2<f32>(x_1807.x, x_1807.w)) + vec2<f32>(x_1813.z, x_1813.w));
          let x_1816 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1815.x, x_1815.y, x_1816.z);
        }
      }
      let x_1823 : vec3<f32> = u_xlat25;
      let x_1826 : f32 = x_66.x_GlobalMipBias.x;
      let x_1827 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1823.x, x_1823.y), x_1826);
      u_xlat11 = x_1827;
      let x_1829 : bool = u_xlatb34.y;
      if (x_1829) {
        let x_1834 : f32 = u_xlat11.w;
        x_1830 = x_1834;
      } else {
        let x_1837 : f32 = u_xlat11.x;
        x_1830 = x_1837;
      }
      let x_1838 : f32 = x_1830;
      u_xlat50 = x_1838;
      let x_1840 : bool = u_xlatb34.x;
      if (x_1840) {
        let x_1844 : vec4<f32> = u_xlat11;
        x_1841 = vec3<f32>(x_1844.x, x_1844.y, x_1844.z);
      } else {
        let x_1847 : f32 = u_xlat50;
        x_1841 = vec3<f32>(x_1847, x_1847, x_1847);
      }
      let x_1849 : vec3<f32> = x_1841;
      let x_1850 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1856 : vec4<f32> = u_xlat11;
    let x_1858 : u32 = u_xlatu44;
    let x_1861 : vec4<f32> = x_1330.x_AdditionalLightsColor[bitcast<i32>(x_1858)];
    let x_1863 : vec3<f32> = (vec3<f32>(x_1856.x, x_1856.y, x_1856.z) * vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
    let x_1864 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
    let x_1866 : f32 = u_xlat20;
    let x_1868 : vec4<f32> = u_xlat11;
    let x_1870 : vec3<f32> = (vec3<f32>(x_1866, x_1866, x_1866) * vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
    let x_1871 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
    let x_1873 : vec4<f32> = u_xlat4;
    let x_1875 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1873.x, x_1873.y, x_1873.z), x_1875);
    let x_1877 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1877, 0.0f, 1.0f);
    let x_1879 : f32 = u_xlat44;
    let x_1881 : f32 = u_xlat3.x;
    u_xlat44 = (x_1879 * x_1881);
    let x_1883 : f32 = u_xlat44;
    let x_1885 : vec4<f32> = u_xlat11;
    let x_1887 : vec3<f32> = (vec3<f32>(x_1883, x_1883, x_1883) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
    let x_1888 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
    let x_1890 : vec3<f32> = u_xlat23;
    let x_1891 : f32 = u_xlat49;
    let x_1894 : vec3<f32> = u_xlat17;
    u_xlat23 = ((x_1890 * vec3<f32>(x_1891, x_1891, x_1891)) + x_1894);
    let x_1896 : vec3<f32> = u_xlat23;
    let x_1897 : vec3<f32> = u_xlat23;
    u_xlat44 = dot(x_1896, x_1897);
    let x_1899 : f32 = u_xlat44;
    u_xlat44 = max(x_1899, 1.17549435e-37f);
    let x_1901 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1901);
    let x_1903 : f32 = u_xlat44;
    let x_1905 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1903, x_1903, x_1903) * x_1905);
    let x_1907 : vec4<f32> = u_xlat4;
    let x_1909 : vec3<f32> = u_xlat23;
    u_xlat44 = dot(vec3<f32>(x_1907.x, x_1907.y, x_1907.z), x_1909);
    let x_1911 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1911, 0.0f, 1.0f);
    let x_1913 : vec3<f32> = u_xlat10;
    let x_1914 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1913, x_1914);
    let x_1918 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1918, 0.0f, 1.0f);
    let x_1921 : f32 = u_xlat44;
    let x_1922 : f32 = u_xlat44;
    u_xlat44 = (x_1921 * x_1922);
    let x_1924 : f32 = u_xlat44;
    let x_1926 : f32 = u_xlat9.x;
    u_xlat44 = ((x_1924 * x_1926) + 1.000010014f);
    let x_1930 : f32 = u_xlat3.x;
    let x_1932 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1930 * x_1932);
    let x_1935 : f32 = u_xlat44;
    let x_1936 : f32 = u_xlat44;
    u_xlat44 = (x_1935 * x_1936);
    let x_1939 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1939, 0.100000001f);
    let x_1942 : f32 = u_xlat44;
    let x_1944 : f32 = u_xlat3.x;
    u_xlat44 = (x_1942 * x_1944);
    let x_1946 : f32 = u_xlat47;
    let x_1947 : f32 = u_xlat44;
    u_xlat44 = (x_1946 * x_1947);
    let x_1949 : f32 = u_xlat46;
    let x_1950 : f32 = u_xlat44;
    u_xlat44 = (x_1949 / x_1950);
    let x_1952 : f32 = u_xlat44;
    let x_1955 : vec3<f32> = u_xlat2;
    u_xlat23 = ((vec3<f32>(x_1952, x_1952, x_1952) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1955);
    let x_1957 : vec3<f32> = u_xlat23;
    let x_1958 : vec4<f32> = u_xlat11;
    let x_1961 : vec4<f32> = u_xlat8;
    let x_1963 : vec3<f32> = ((x_1957 * vec3<f32>(x_1958.x, x_1958.y, x_1958.z)) + vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
    let x_1964 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1963.x, x_1963.y, x_1963.z, x_1964.w);

    continuing {
      let x_1966 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1966 + bitcast<u32>(1i));
    }
  }
  let x_1968 : vec4<f32> = u_xlat5;
  let x_1970 : vec4<f32> = u_xlat6;
  let x_1973 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1968.x, x_1968.y, x_1968.z) * vec3<f32>(x_1970.x, x_1970.x, x_1970.x)) + vec3<f32>(x_1973.x, x_1973.y, x_1973.z));
  let x_1976 : vec4<f32> = u_xlat8;
  let x_1978 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1976.x, x_1976.y, x_1976.z) + x_1978);
  let x_1980 : vec4<f32> = vs_INTERP4;
  let x_1982 : vec3<f32> = u_xlat0;
  let x_1984 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1980.w, x_1980.w, x_1980.w) * x_1982) + x_1984);
  let x_1987 : f32 = u_xlat15.x;
  let x_1989 : f32 = u_xlat15.x;
  u_xlat42 = (x_1987 * -(x_1989));
  let x_1992 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1992);
  let x_1994 : vec3<f32> = u_xlat0;
  let x_1997 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1994 + -(vec3<f32>(x_1997.x, x_1997.y, x_1997.z)));
  let x_2003 : f32 = u_xlat42;
  let x_2005 : vec3<f32> = u_xlat0;
  let x_2008 : vec4<f32> = x_66.unity_FogColor;
  let x_2010 : vec3<f32> = ((vec3<f32>(x_2003, x_2003, x_2003) * x_2005) + vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
  let x_2011 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
  let x_2013 : bool = u_xlatb29;
  if (x_2013) {
    let x_2018 : f32 = u_xlat1.x;
    x_2014 = x_2018;
  } else {
    x_2014 = 1.0f;
  }
  let x_2020 : f32 = x_2014;
  SV_Target0.w = x_2020;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  main_1();
  return main_out(SV_Target0);
}

