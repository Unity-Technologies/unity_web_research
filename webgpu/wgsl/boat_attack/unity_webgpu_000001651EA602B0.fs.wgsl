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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(3) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_159 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_569 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_774 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1029 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1137 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb14 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat27 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat15 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat43 : f32;
  var u_xlat39 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb15 : vec2<bool>;
  var u_xlatb28 : bool;
  var x_514 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var x_653 : f32;
  var x_665 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu39 : u32;
  var u_xlatb31 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati46 : i32;
  var u_xlat45 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlatu48 : u32;
  var u_xlati10 : i32;
  var u_xlati48 : i32;
  var u_xlati23 : i32;
  var u_xlat10 : vec4<f32>;
  var u_xlatb48 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb23 : vec3<bool>;
  var u_xlat23 : vec3<f32>;
  var x_1453 : f32;
  var x_1466 : f32;
  var x_1528 : f32;
  var x_1539 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_70 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD7;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_82 : vec3<f32> = (-(x_76) + x_81);
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat27 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat27;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : bool = u_xlatb14;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb14;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb14;
  if (x_128) {
    let x_133 : f32 = u_xlat2.z;
    x_129 = x_133;
  } else {
    let x_137 : f32 = x_44.unity_MatrixV[2i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.z = x_138;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  let x_143 : vec3<f32> = vs_TEXCOORD3;
  u_xlat14.x = dot(x_142, x_143);
  let x_147 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_147);
  let x_150 : vec3<f32> = u_xlat14;
  let x_152 : vec3<f32> = vs_TEXCOORD3;
  u_xlat14 = (vec3<f32>(x_150.x, x_150.x, x_150.x) * x_152);
  let x_154 : vec3<f32> = vs_TEXCOORD7;
  let x_162 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_165 : vec3<f32> = (x_154 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD7;
  let x_171 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_169 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD7;
  let x_181 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_186 : vec3<f32> = vs_TEXCOORD7;
  let x_189 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : vec4<f32> = u_xlat4;
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec3<f32> = u_xlat5;
  let x_206 : vec3<f32> = u_xlat5;
  u_xlat2.z = dot(x_205, x_206);
  let x_209 : vec3<f32> = u_xlat6;
  let x_210 : vec3<f32> = u_xlat6;
  u_xlat2.w = dot(x_209, x_210);
  let x_216 : vec4<f32> = u_xlat2;
  let x_219 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_216 < x_219);
  let x_222 : bool = u_xlatb2.x;
  u_xlat4.x = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb2.y;
  u_xlat4.y = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb2.z;
  u_xlat4.z = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb2.w;
  u_xlat4.w = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_238);
  let x_244 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_244);
  let x_248 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_248);
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(x_253.y, x_253.z, x_253.w));
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat2;
  let x_261 : vec3<f32> = max(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_261.z);
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(x_264, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_272 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_272) + 4.0f);
  let x_279 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_279);
  let x_283 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_283) << bitcast<u32>(2i));
  let x_287 : vec3<f32> = vs_TEXCOORD7;
  let x_289 : i32 = u_xlati2;
  let x_292 : i32 = u_xlati2;
  let x_296 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_289 + 1i) / 4i)][((x_292 + 1i) % 4i)];
  u_xlat15 = (vec3<f32>(x_287.y, x_287.y, x_287.y) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : i32 = u_xlati2;
  let x_301 : i32 = u_xlati2;
  let x_304 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_299 / 4i)][(x_301 % 4i)];
  let x_306 : vec3<f32> = vs_TEXCOORD7;
  let x_309 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.x, x_306.x, x_306.x)) + x_309);
  let x_311 : i32 = u_xlati2;
  let x_314 : i32 = u_xlati2;
  let x_318 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_311 + 2i) / 4i)][((x_314 + 2i) % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD7;
  let x_323 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + x_323);
  let x_325 : vec3<f32> = u_xlat15;
  let x_326 : i32 = u_xlati2;
  let x_329 : i32 = u_xlati2;
  let x_333 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_326 + 3i) / 4i)][((x_329 + 3i) % 4i)];
  let x_335 : vec3<f32> = (x_325 + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_343 : vec4<f32> = vs_TEXCOORD0;
  let x_346 : f32 = x_44.x_GlobalMipBias.x;
  let x_347 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_343.z, x_343.w), x_346);
  let x_348 : vec3<f32> = vec3<f32>(x_347.x, x_347.y, x_347.z);
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_353 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_354 : vec2<f32> = vec2<f32>(x_353.x, x_353.y);
  let x_358 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_354.x, x_354.y));
  let x_359 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_358.x, x_358.y, x_359.z);
  let x_361 : vec3<f32> = u_xlat5;
  let x_363 : vec4<f32> = hlslcc_FragCoord;
  let x_365 : vec2<f32> = (vec2<f32>(x_361.x, x_361.y) * vec2<f32>(x_363.x, x_363.y));
  let x_366 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_365.x, x_365.y, x_366.z);
  let x_370 : f32 = u_xlat5.y;
  let x_373 : f32 = x_44.x_ScaleBiasRt.x;
  let x_376 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat41 = ((x_370 * x_373) + x_376);
  let x_378 : f32 = u_xlat41;
  u_xlat5.z = (-(x_378) + 1.0f);
  let x_382 : f32 = u_xlat1;
  u_xlat41 = ((-(x_382) * 0.959999979f) + 0.959999979f);
  let x_388 : f32 = u_xlat41;
  u_xlat42 = (-(x_388) + 1.0f);
  let x_391 : vec4<f32> = u_xlat0;
  let x_393 : f32 = u_xlat41;
  u_xlat6 = (vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393, x_393, x_393));
  let x_396 : vec4<f32> = u_xlat0;
  let x_400 : vec3<f32> = (vec3<f32>(x_396.x, x_396.y, x_396.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_401 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : f32 = u_xlat1;
  let x_405 : vec4<f32> = u_xlat0;
  let x_410 : vec3<f32> = ((vec3<f32>(x_403, x_403, x_403) * vec3<f32>(x_405.x, x_405.y, x_405.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_411 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat1;
  let x_418 : f32 = u_xlat1;
  u_xlat41 = (x_417 * x_418);
  let x_420 : f32 = u_xlat41;
  u_xlat41 = max(x_420, 0.0078125f);
  let x_424 : f32 = u_xlat41;
  let x_425 : f32 = u_xlat41;
  u_xlat43 = (x_424 * x_425);
  let x_429 : f32 = u_xlat0.w;
  let x_430 : f32 = u_xlat42;
  u_xlat39 = (x_429 + x_430);
  let x_432 : f32 = u_xlat39;
  u_xlat39 = clamp(x_432, 0.0f, 1.0f);
  let x_434 : f32 = u_xlat41;
  u_xlat42 = ((x_434 * 4.0f) + 2.0f);
  let x_442 : vec3<f32> = u_xlat5;
  let x_445 : f32 = x_44.x_GlobalMipBias.x;
  let x_446 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_442.x, x_442.z), x_445);
  u_xlat5.x = x_446.x;
  let x_451 : f32 = u_xlat5.x;
  u_xlat18 = (x_451 + -1.0f);
  let x_454 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_455 : f32 = u_xlat18;
  u_xlat18 = ((x_454 * x_455) + 1.0f);
  let x_459 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_459, 1.0f);
  let x_463 : vec4<f32> = u_xlat2;
  let x_464 : vec2<f32> = vec2<f32>(x_463.x, x_463.y);
  let x_466 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_464.x, x_464.y, x_466);
  let x_478 : vec3<f32> = txVec0;
  let x_480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_478.xy, x_478.z);
  u_xlat2.x = x_480;
  let x_483 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_483) + 1.0f);
  let x_488 : f32 = u_xlat2.x;
  let x_490 : f32 = x_159.x_MainLightShadowParams.x;
  let x_493 : f32 = u_xlat15.x;
  u_xlat2.x = ((x_488 * x_490) + x_493);
  let x_500 : f32 = u_xlat2.z;
  u_xlatb15.x = (0.0f >= x_500);
  let x_505 : f32 = u_xlat2.z;
  u_xlatb28 = (x_505 >= 1.0f);
  let x_507 : bool = u_xlatb28;
  let x_509 : bool = u_xlatb15.x;
  u_xlatb15.x = (x_507 | x_509);
  let x_513 : bool = u_xlatb15.x;
  if (x_513) {
    x_514 = 1.0f;
  } else {
    let x_519 : f32 = u_xlat2.x;
    x_514 = x_519;
  }
  let x_520 : f32 = x_514;
  u_xlat2.x = x_520;
  let x_523 : vec3<f32> = vs_TEXCOORD7;
  let x_525 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_527 : vec3<f32> = (x_523 + -(x_525));
  let x_528 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec4<f32> = u_xlat7;
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_530.x, x_530.y, x_530.z), vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_537 : f32 = u_xlat15.x;
  let x_539 : f32 = x_159.x_MainLightShadowParams.z;
  let x_542 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_537 * x_539) + x_542);
  let x_546 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_546, 0.0f, 1.0f);
  let x_552 : f32 = u_xlat2.x;
  u_xlat28.x = (-(x_552) + 1.0f);
  let x_557 : f32 = u_xlat15.x;
  let x_559 : f32 = u_xlat28.x;
  let x_562 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_557 * x_559) + x_562);
  let x_571 : f32 = x_569.x_MainLightCookieTextureFormat;
  u_xlatb15.x = !((x_571 == -1.0f));
  let x_575 : bool = u_xlatb15.x;
  if (x_575) {
    let x_578 : vec3<f32> = vs_TEXCOORD7;
    let x_581 : vec4<f32> = x_569.x_MainLightWorldToLight[1i];
    let x_583 : vec2<f32> = (vec2<f32>(x_578.y, x_578.y) * vec2<f32>(x_581.x, x_581.y));
    let x_584 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_583.x, x_583.y, x_584.z);
    let x_587 : vec4<f32> = x_569.x_MainLightWorldToLight[0i];
    let x_589 : vec3<f32> = vs_TEXCOORD7;
    let x_592 : vec3<f32> = u_xlat15;
    let x_594 : vec2<f32> = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_589.x, x_589.x)) + vec2<f32>(x_592.x, x_592.y));
    let x_595 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_594.x, x_594.y, x_595.z);
    let x_598 : vec4<f32> = x_569.x_MainLightWorldToLight[2i];
    let x_600 : vec3<f32> = vs_TEXCOORD7;
    let x_603 : vec3<f32> = u_xlat15;
    let x_605 : vec2<f32> = ((vec2<f32>(x_598.x, x_598.y) * vec2<f32>(x_600.z, x_600.z)) + vec2<f32>(x_603.x, x_603.y));
    let x_606 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_605.x, x_605.y, x_606.z);
    let x_608 : vec3<f32> = u_xlat15;
    let x_611 : vec4<f32> = x_569.x_MainLightWorldToLight[3i];
    let x_613 : vec2<f32> = (vec2<f32>(x_608.x, x_608.y) + vec2<f32>(x_611.x, x_611.y));
    let x_614 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_613.x, x_613.y, x_614.z);
    let x_616 : vec3<f32> = u_xlat15;
    let x_621 : vec2<f32> = ((vec2<f32>(x_616.x, x_616.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_622 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_621.x, x_621.y, x_622.z);
    let x_629 : vec3<f32> = u_xlat15;
    let x_632 : f32 = x_44.x_GlobalMipBias.x;
    let x_633 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_629.x, x_629.y), x_632);
    u_xlat7 = x_633;
    let x_635 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_637 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_639 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_641 : f32 = x_569.x_MainLightCookieTextureFormat;
    let x_642 : vec4<f32> = vec4<f32>(x_635, x_637, x_639, x_641);
    let x_649 : vec4<bool> = (vec4<f32>(x_642.x, x_642.y, x_642.z, x_642.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb15 = vec2<bool>(x_649.x, x_649.y);
    let x_652 : bool = u_xlatb15.y;
    if (x_652) {
      let x_657 : f32 = u_xlat7.w;
      x_653 = x_657;
    } else {
      let x_660 : f32 = u_xlat7.x;
      x_653 = x_660;
    }
    let x_661 : f32 = x_653;
    u_xlat28.x = x_661;
    let x_664 : bool = u_xlatb15.x;
    if (x_664) {
      let x_668 : vec4<f32> = u_xlat7;
      x_665 = vec3<f32>(x_668.x, x_668.y, x_668.z);
    } else {
      let x_671 : vec2<f32> = u_xlat28;
      x_665 = vec3<f32>(x_671.x, x_671.x, x_671.x);
    }
    let x_673 : vec3<f32> = x_665;
    let x_674 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_680 : vec4<f32> = u_xlat7;
  let x_683 : vec4<f32> = x_44.x_MainLightColor;
  let x_685 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : f32 = u_xlat18;
  let x_690 : vec4<f32> = u_xlat7;
  let x_692 : vec3<f32> = (vec3<f32>(x_688, x_688, x_688) * vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = u_xlat3;
  let x_697 : vec3<f32> = u_xlat14;
  u_xlat15.x = dot(-(x_695), x_697);
  let x_701 : f32 = u_xlat15.x;
  let x_703 : f32 = u_xlat15.x;
  u_xlat15.x = (x_701 + x_703);
  let x_707 : vec3<f32> = u_xlat14;
  let x_708 : vec3<f32> = u_xlat15;
  let x_712 : vec3<f32> = u_xlat3;
  let x_714 : vec3<f32> = ((x_707 * -(vec3<f32>(x_708.x, x_708.x, x_708.x))) + -(x_712));
  let x_715 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec3<f32> = u_xlat14;
  let x_718 : vec3<f32> = u_xlat3;
  u_xlat15.x = dot(x_717, x_718);
  let x_722 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_722, 0.0f, 1.0f);
  let x_726 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_726) + 1.0f);
  let x_731 : f32 = u_xlat15.x;
  let x_733 : f32 = u_xlat15.x;
  u_xlat15.x = (x_731 * x_733);
  let x_737 : f32 = u_xlat15.x;
  let x_739 : f32 = u_xlat15.x;
  u_xlat15.x = (x_737 * x_739);
  let x_742 : f32 = u_xlat1;
  u_xlat28.x = ((-(x_742) * 0.699999988f) + 1.700000048f);
  let x_749 : f32 = u_xlat1;
  let x_751 : f32 = u_xlat28.x;
  u_xlat1 = (x_749 * x_751);
  let x_753 : f32 = u_xlat1;
  u_xlat1 = (x_753 * 6.0f);
  let x_764 : vec4<f32> = u_xlat8;
  let x_766 : f32 = u_xlat1;
  let x_767 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_764.x, x_764.y, x_764.z), x_766);
  u_xlat8 = x_767;
  let x_769 : f32 = u_xlat8.w;
  u_xlat1 = (x_769 + -1.0f);
  let x_776 : f32 = x_774.unity_SpecCube0_HDR.w;
  let x_777 : f32 = u_xlat1;
  u_xlat1 = ((x_776 * x_777) + 1.0f);
  let x_780 : f32 = u_xlat1;
  u_xlat1 = max(x_780, 0.0f);
  let x_782 : f32 = u_xlat1;
  u_xlat1 = log2(x_782);
  let x_784 : f32 = u_xlat1;
  let x_786 : f32 = x_774.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_784 * x_786);
  let x_788 : f32 = u_xlat1;
  u_xlat1 = exp2(x_788);
  let x_790 : f32 = u_xlat1;
  let x_792 : f32 = x_774.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_790 * x_792);
  let x_794 : vec4<f32> = u_xlat8;
  let x_796 : f32 = u_xlat1;
  let x_798 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_796, x_796, x_796));
  let x_799 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : f32 = u_xlat41;
  let x_803 : f32 = u_xlat41;
  u_xlat28 = ((vec2<f32>(x_801, x_801) * vec2<f32>(x_803, x_803)) + vec2<f32>(-1.0f, 1.0f));
  let x_809 : f32 = u_xlat28.y;
  u_xlat1 = (1.0f / x_809);
  let x_812 : vec4<f32> = u_xlat0;
  let x_815 : f32 = u_xlat39;
  u_xlat9 = (-(vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(x_815, x_815, x_815));
  let x_818 : vec3<f32> = u_xlat15;
  let x_820 : vec3<f32> = u_xlat9;
  let x_822 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_818.x, x_818.x, x_818.x) * x_820) + vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat1;
  let x_827 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_825, x_825, x_825) * x_827);
  let x_829 : vec4<f32> = u_xlat8;
  let x_831 : vec3<f32> = u_xlat9;
  let x_832 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) * x_831);
  let x_833 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat4;
  let x_837 : vec3<f32> = u_xlat6;
  let x_839 : vec4<f32> = u_xlat8;
  let x_841 : vec3<f32> = ((vec3<f32>(x_835.x, x_835.y, x_835.z) * x_837) + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_845 : f32 = u_xlat2.x;
  let x_847 : f32 = x_774.unity_LightData.z;
  u_xlat39 = (x_845 * x_847);
  let x_849 : vec3<f32> = u_xlat14;
  let x_851 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_849, vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : f32 = u_xlat1;
  u_xlat1 = clamp(x_854, 0.0f, 1.0f);
  let x_856 : f32 = u_xlat39;
  let x_857 : f32 = u_xlat1;
  u_xlat39 = (x_856 * x_857);
  let x_859 : f32 = u_xlat39;
  let x_861 : vec4<f32> = u_xlat7;
  let x_863 : vec3<f32> = (vec3<f32>(x_859, x_859, x_859) * vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_863.x, x_863.y, x_864.z, x_863.z);
  let x_866 : vec3<f32> = u_xlat3;
  let x_868 : vec4<f32> = x_44.x_MainLightPosition;
  let x_870 : vec3<f32> = (x_866 + vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat7;
  let x_875 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_873.x, x_873.y, x_873.z), vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : f32 = u_xlat39;
  u_xlat39 = max(x_878, 1.17549435e-37f);
  let x_881 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_881);
  let x_883 : f32 = u_xlat39;
  let x_885 : vec4<f32> = u_xlat7;
  let x_887 : vec3<f32> = (vec3<f32>(x_883, x_883, x_883) * vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec3<f32> = u_xlat14;
  let x_891 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(x_890, vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : f32 = u_xlat39;
  u_xlat39 = clamp(x_894, 0.0f, 1.0f);
  let x_897 : vec4<f32> = x_44.x_MainLightPosition;
  let x_899 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_897.x, x_897.y, x_897.z), vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : f32 = u_xlat1;
  u_xlat1 = clamp(x_902, 0.0f, 1.0f);
  let x_904 : f32 = u_xlat39;
  let x_905 : f32 = u_xlat39;
  u_xlat39 = (x_904 * x_905);
  let x_907 : f32 = u_xlat39;
  let x_909 : f32 = u_xlat28.x;
  u_xlat39 = ((x_907 * x_909) + 1.000010014f);
  let x_913 : f32 = u_xlat1;
  let x_914 : f32 = u_xlat1;
  u_xlat1 = (x_913 * x_914);
  let x_916 : f32 = u_xlat39;
  let x_917 : f32 = u_xlat39;
  u_xlat39 = (x_916 * x_917);
  let x_919 : f32 = u_xlat1;
  u_xlat1 = max(x_919, 0.100000001f);
  let x_922 : f32 = u_xlat39;
  let x_923 : f32 = u_xlat1;
  u_xlat39 = (x_922 * x_923);
  let x_925 : f32 = u_xlat42;
  let x_926 : f32 = u_xlat39;
  u_xlat39 = (x_925 * x_926);
  let x_928 : f32 = u_xlat43;
  let x_929 : f32 = u_xlat39;
  u_xlat39 = (x_928 / x_929);
  let x_931 : vec4<f32> = u_xlat0;
  let x_933 : f32 = u_xlat39;
  let x_936 : vec3<f32> = u_xlat6;
  let x_937 : vec3<f32> = ((vec3<f32>(x_931.x, x_931.y, x_931.z) * vec3<f32>(x_933, x_933, x_933)) + x_936);
  let x_938 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat2;
  let x_942 : vec4<f32> = u_xlat7;
  let x_944 : vec3<f32> = (vec3<f32>(x_940.x, x_940.y, x_940.w) * vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_944.z);
  let x_948 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_950 : f32 = x_774.unity_LightData.y;
  u_xlat39 = min(x_948, x_950);
  let x_953 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_953));
  let x_958 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_960 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_962 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_964 : f32 = x_569.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_965 : vec4<f32> = vec4<f32>(x_958, x_960, x_962, x_964);
  let x_972 : vec4<bool> = (vec4<f32>(x_965.x, x_965.y, x_965.z, x_965.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb31 = vec2<bool>(x_972.x, x_972.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_983 : u32 = u_xlatu_loop_1;
    let x_984 : u32 = u_xlatu39;
    if ((x_983 < x_984)) {
    } else {
      break;
    }
    let x_987 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_987 >> 2u);
    let x_990 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_990 & 3u));
    let x_994 : u32 = u_xlatu45;
    let x_997 : vec4<f32> = x_774.unity_LightIndices[bitcast<i32>(x_994)];
    let x_1007 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1012 : vec4<u32> = indexable[x_1007];
    u_xlat45 = dot(x_997, bitcast<vec4<f32>>(x_1012));
    let x_1015 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1015));
    let x_1018 : vec3<f32> = vs_TEXCOORD7;
    let x_1030 : u32 = u_xlatu45;
    let x_1033 : vec4<f32> = x_1029.x_AdditionalLightsPosition[bitcast<i32>(x_1030)];
    let x_1036 : u32 = u_xlatu45;
    let x_1039 : vec4<f32> = x_1029.x_AdditionalLightsPosition[bitcast<i32>(x_1036)];
    let x_1041 : vec3<f32> = ((-(x_1018) * vec3<f32>(x_1033.w, x_1033.w, x_1033.w)) + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
    let x_1042 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
    let x_1045 : vec4<f32> = u_xlat8;
    let x_1047 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1045.x, x_1045.y, x_1045.z), vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
    let x_1050 : f32 = u_xlat46;
    u_xlat46 = max(x_1050, 6.10351562e-05f);
    let x_1054 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1054);
    let x_1056 : f32 = u_xlat47;
    let x_1058 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1056, x_1056, x_1056) * vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
    let x_1062 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1062);
    let x_1064 : f32 = u_xlat46;
    let x_1065 : u32 = u_xlatu45;
    let x_1068 : f32 = x_1029.x_AdditionalLightsAttenuation[bitcast<i32>(x_1065)].x;
    u_xlat46 = (x_1064 * x_1068);
    let x_1070 : f32 = u_xlat46;
    let x_1072 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1070) * x_1072) + 1.0f);
    let x_1075 : f32 = u_xlat46;
    u_xlat46 = max(x_1075, 0.0f);
    let x_1077 : f32 = u_xlat46;
    let x_1078 : f32 = u_xlat46;
    u_xlat46 = (x_1077 * x_1078);
    let x_1080 : f32 = u_xlat46;
    let x_1081 : f32 = u_xlat48;
    u_xlat46 = (x_1080 * x_1081);
    let x_1083 : u32 = u_xlatu45;
    let x_1086 : vec4<f32> = x_1029.x_AdditionalLightsSpotDir[bitcast<i32>(x_1083)];
    let x_1088 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1086.x, x_1086.y, x_1086.z), x_1088);
    let x_1090 : f32 = u_xlat48;
    let x_1091 : u32 = u_xlatu45;
    let x_1094 : f32 = x_1029.x_AdditionalLightsAttenuation[bitcast<i32>(x_1091)].z;
    let x_1096 : u32 = u_xlatu45;
    let x_1099 : f32 = x_1029.x_AdditionalLightsAttenuation[bitcast<i32>(x_1096)].w;
    u_xlat48 = ((x_1090 * x_1094) + x_1099);
    let x_1101 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1101, 0.0f, 1.0f);
    let x_1103 : f32 = u_xlat48;
    let x_1104 : f32 = u_xlat48;
    u_xlat48 = (x_1103 * x_1104);
    let x_1106 : f32 = u_xlat46;
    let x_1107 : f32 = u_xlat48;
    u_xlat46 = (x_1106 * x_1107);
    let x_1110 : u32 = u_xlatu45;
    u_xlatu48 = (x_1110 >> 5u);
    let x_1113 : u32 = u_xlatu45;
    u_xlati10 = (1i << bitcast<u32>((bitcast<i32>(x_1113) & 31i)));
    let x_1119 : i32 = u_xlati10;
    let x_1121 : u32 = u_xlatu48;
    let x_1124 : f32 = x_569.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1121)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_1119) & bitcast<u32>(x_1124)));
    let x_1128 : i32 = u_xlati48;
    if ((x_1128 != 0i)) {
      let x_1138 : u32 = u_xlatu45;
      let x_1141 : f32 = x_1137.x_AdditionalLightsLightTypes[bitcast<i32>(x_1138)].el;
      u_xlati48 = i32(x_1141);
      let x_1143 : i32 = u_xlati48;
      u_xlati10 = select(1i, 0i, (x_1143 != 0i));
      let x_1147 : u32 = u_xlatu45;
      u_xlati23 = (bitcast<i32>(x_1147) << bitcast<u32>(2i));
      let x_1150 : i32 = u_xlati10;
      if ((x_1150 != 0i)) {
        let x_1155 : vec3<f32> = vs_TEXCOORD7;
        let x_1157 : i32 = u_xlati23;
        let x_1160 : i32 = u_xlati23;
        let x_1164 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[((x_1157 + 1i) / 4i)][((x_1160 + 1i) % 4i)];
        let x_1166 : vec3<f32> = (vec3<f32>(x_1155.y, x_1155.y, x_1155.y) * vec3<f32>(x_1164.x, x_1164.y, x_1164.w));
        let x_1167 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1166.z);
        let x_1169 : i32 = u_xlati23;
        let x_1171 : i32 = u_xlati23;
        let x_1174 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[(x_1169 / 4i)][(x_1171 % 4i)];
        let x_1176 : vec3<f32> = vs_TEXCOORD7;
        let x_1179 : vec4<f32> = u_xlat10;
        let x_1181 : vec3<f32> = ((vec3<f32>(x_1174.x, x_1174.y, x_1174.w) * vec3<f32>(x_1176.x, x_1176.x, x_1176.x)) + vec3<f32>(x_1179.x, x_1179.z, x_1179.w));
        let x_1182 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1181.x, x_1182.y, x_1181.y, x_1181.z);
        let x_1184 : i32 = u_xlati23;
        let x_1187 : i32 = u_xlati23;
        let x_1191 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[((x_1184 + 2i) / 4i)][((x_1187 + 2i) % 4i)];
        let x_1193 : vec3<f32> = vs_TEXCOORD7;
        let x_1196 : vec4<f32> = u_xlat10;
        let x_1198 : vec3<f32> = ((vec3<f32>(x_1191.x, x_1191.y, x_1191.w) * vec3<f32>(x_1193.z, x_1193.z, x_1193.z)) + vec3<f32>(x_1196.x, x_1196.z, x_1196.w));
        let x_1199 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1198.x, x_1199.y, x_1198.y, x_1198.z);
        let x_1201 : vec4<f32> = u_xlat10;
        let x_1203 : i32 = u_xlati23;
        let x_1206 : i32 = u_xlati23;
        let x_1210 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[((x_1203 + 3i) / 4i)][((x_1206 + 3i) % 4i)];
        let x_1212 : vec3<f32> = (vec3<f32>(x_1201.x, x_1201.z, x_1201.w) + vec3<f32>(x_1210.x, x_1210.y, x_1210.w));
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1212.x, x_1213.y, x_1212.y, x_1212.z);
        let x_1215 : vec4<f32> = u_xlat10;
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1219 : vec2<f32> = (vec2<f32>(x_1215.x, x_1215.z) / vec2<f32>(x_1217.w, x_1217.w));
        let x_1220 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1219.x, x_1220.y, x_1219.y, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat10;
        let x_1225 : vec2<f32> = ((vec2<f32>(x_1222.x, x_1222.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1226 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1225.x, x_1226.y, x_1225.y, x_1226.w);
        let x_1228 : vec4<f32> = u_xlat10;
        let x_1232 : vec2<f32> = clamp(vec2<f32>(x_1228.x, x_1228.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1233 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1232.x, x_1233.y, x_1232.y, x_1233.w);
        let x_1235 : u32 = u_xlatu45;
        let x_1238 : vec4<f32> = x_1137.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1235)];
        let x_1240 : vec4<f32> = u_xlat10;
        let x_1243 : u32 = u_xlatu45;
        let x_1246 : vec4<f32> = x_1137.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1243)];
        let x_1248 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1240.x, x_1240.z)) + vec2<f32>(x_1246.z, x_1246.w));
        let x_1249 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1248.x, x_1249.y, x_1248.y, x_1249.w);
      } else {
        let x_1253 : i32 = u_xlati48;
        u_xlatb48 = (x_1253 == 1i);
        let x_1255 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1255);
        let x_1257 : i32 = u_xlati48;
        if ((x_1257 != 0i)) {
          let x_1262 : vec3<f32> = vs_TEXCOORD7;
          let x_1264 : i32 = u_xlati23;
          let x_1267 : i32 = u_xlati23;
          let x_1271 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[((x_1264 + 1i) / 4i)][((x_1267 + 1i) % 4i)];
          let x_1273 : vec2<f32> = (vec2<f32>(x_1262.y, x_1262.y) * vec2<f32>(x_1271.x, x_1271.y));
          let x_1274 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1273.x, x_1273.y, x_1274.z, x_1274.w);
          let x_1276 : i32 = u_xlati23;
          let x_1278 : i32 = u_xlati23;
          let x_1281 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[(x_1276 / 4i)][(x_1278 % 4i)];
          let x_1283 : vec3<f32> = vs_TEXCOORD7;
          let x_1286 : vec4<f32> = u_xlat11;
          let x_1288 : vec2<f32> = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(x_1283.x, x_1283.x)) + vec2<f32>(x_1286.x, x_1286.y));
          let x_1289 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
          let x_1291 : i32 = u_xlati23;
          let x_1294 : i32 = u_xlati23;
          let x_1298 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[((x_1291 + 2i) / 4i)][((x_1294 + 2i) % 4i)];
          let x_1300 : vec3<f32> = vs_TEXCOORD7;
          let x_1303 : vec4<f32> = u_xlat11;
          let x_1305 : vec2<f32> = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1300.z, x_1300.z)) + vec2<f32>(x_1303.x, x_1303.y));
          let x_1306 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1305.x, x_1305.y, x_1306.z, x_1306.w);
          let x_1308 : vec4<f32> = u_xlat11;
          let x_1310 : i32 = u_xlati23;
          let x_1313 : i32 = u_xlati23;
          let x_1317 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[((x_1310 + 3i) / 4i)][((x_1313 + 3i) % 4i)];
          let x_1319 : vec2<f32> = (vec2<f32>(x_1308.x, x_1308.y) + vec2<f32>(x_1317.x, x_1317.y));
          let x_1320 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1319.x, x_1319.y, x_1320.z, x_1320.w);
          let x_1322 : vec4<f32> = u_xlat11;
          let x_1325 : vec2<f32> = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1326 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1325.x, x_1325.y, x_1326.z, x_1326.w);
          let x_1328 : vec4<f32> = u_xlat11;
          let x_1330 : vec2<f32> = fract(vec2<f32>(x_1328.x, x_1328.y));
          let x_1331 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1331.w);
          let x_1333 : u32 = u_xlatu45;
          let x_1336 : vec4<f32> = x_1137.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1333)];
          let x_1338 : vec4<f32> = u_xlat11;
          let x_1341 : u32 = u_xlatu45;
          let x_1344 : vec4<f32> = x_1137.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1341)];
          let x_1346 : vec2<f32> = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1338.x, x_1338.y)) + vec2<f32>(x_1344.z, x_1344.w));
          let x_1347 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1346.x, x_1347.y, x_1346.y, x_1347.w);
        } else {
          let x_1350 : vec3<f32> = vs_TEXCOORD7;
          let x_1352 : i32 = u_xlati23;
          let x_1355 : i32 = u_xlati23;
          let x_1359 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[((x_1352 + 1i) / 4i)][((x_1355 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1350.y, x_1350.y, x_1350.y, x_1350.y) * x_1359);
          let x_1361 : i32 = u_xlati23;
          let x_1363 : i32 = u_xlati23;
          let x_1366 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[(x_1361 / 4i)][(x_1363 % 4i)];
          let x_1367 : vec3<f32> = vs_TEXCOORD7;
          let x_1370 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1366 * vec4<f32>(x_1367.x, x_1367.x, x_1367.x, x_1367.x)) + x_1370);
          let x_1372 : i32 = u_xlati23;
          let x_1375 : i32 = u_xlati23;
          let x_1379 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[((x_1372 + 2i) / 4i)][((x_1375 + 2i) % 4i)];
          let x_1380 : vec3<f32> = vs_TEXCOORD7;
          let x_1383 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1379 * vec4<f32>(x_1380.z, x_1380.z, x_1380.z, x_1380.z)) + x_1383);
          let x_1385 : vec4<f32> = u_xlat11;
          let x_1386 : i32 = u_xlati23;
          let x_1389 : i32 = u_xlati23;
          let x_1393 : vec4<f32> = x_1137.x_AdditionalLightsWorldToLights[((x_1386 + 3i) / 4i)][((x_1389 + 3i) % 4i)];
          u_xlat11 = (x_1385 + x_1393);
          let x_1395 : vec4<f32> = u_xlat11;
          let x_1397 : vec4<f32> = u_xlat11;
          let x_1399 : vec3<f32> = (vec3<f32>(x_1395.x, x_1395.y, x_1395.z) / vec3<f32>(x_1397.w, x_1397.w, x_1397.w));
          let x_1400 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
          let x_1402 : vec4<f32> = u_xlat11;
          let x_1404 : vec4<f32> = u_xlat11;
          u_xlat48 = dot(vec3<f32>(x_1402.x, x_1402.y, x_1402.z), vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
          let x_1407 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1407);
          let x_1409 : f32 = u_xlat48;
          let x_1411 : vec4<f32> = u_xlat11;
          let x_1413 : vec3<f32> = (vec3<f32>(x_1409, x_1409, x_1409) * vec3<f32>(x_1411.x, x_1411.y, x_1411.z));
          let x_1414 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
          let x_1416 : vec4<f32> = u_xlat11;
          u_xlat48 = dot(abs(vec3<f32>(x_1416.x, x_1416.y, x_1416.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1421 : f32 = u_xlat48;
          u_xlat48 = max(x_1421, 0.000001f);
          let x_1424 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1424);
          let x_1427 : f32 = u_xlat48;
          let x_1429 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_1427, x_1427, x_1427) * vec3<f32>(x_1429.z, x_1429.x, x_1429.y));
          let x_1433 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1433);
          let x_1437 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1437, 0.0f, 1.0f);
          let x_1443 : vec3<f32> = u_xlat12;
          let x_1446 : vec4<bool> = (vec4<f32>(x_1443.y, x_1443.y, x_1443.z, x_1443.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1447 : vec2<bool> = vec2<bool>(x_1446.x, x_1446.z);
          let x_1448 : vec3<bool> = u_xlatb23;
          u_xlatb23 = vec3<bool>(x_1447.x, x_1448.y, x_1447.y);
          let x_1452 : bool = u_xlatb23.x;
          if (x_1452) {
            let x_1457 : f32 = u_xlat12.x;
            x_1453 = x_1457;
          } else {
            let x_1460 : f32 = u_xlat12.x;
            x_1453 = -(x_1460);
          }
          let x_1462 : f32 = x_1453;
          u_xlat23.x = x_1462;
          let x_1465 : bool = u_xlatb23.z;
          if (x_1465) {
            let x_1470 : f32 = u_xlat12.x;
            x_1466 = x_1470;
          } else {
            let x_1473 : f32 = u_xlat12.x;
            x_1466 = -(x_1473);
          }
          let x_1475 : f32 = x_1466;
          u_xlat23.z = x_1475;
          let x_1477 : vec4<f32> = u_xlat11;
          let x_1479 : f32 = u_xlat48;
          let x_1482 : vec3<f32> = u_xlat23;
          let x_1484 : vec2<f32> = ((vec2<f32>(x_1477.x, x_1477.y) * vec2<f32>(x_1479, x_1479)) + vec2<f32>(x_1482.x, x_1482.z));
          let x_1485 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1484.x, x_1485.y, x_1484.y);
          let x_1487 : vec3<f32> = u_xlat23;
          let x_1490 : vec2<f32> = ((vec2<f32>(x_1487.x, x_1487.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1491 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1490.x, x_1491.y, x_1490.y);
          let x_1493 : vec3<f32> = u_xlat23;
          let x_1497 : vec2<f32> = clamp(vec2<f32>(x_1493.x, x_1493.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1498 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1497.x, x_1498.y, x_1497.y);
          let x_1500 : u32 = u_xlatu45;
          let x_1503 : vec4<f32> = x_1137.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1500)];
          let x_1505 : vec3<f32> = u_xlat23;
          let x_1508 : u32 = u_xlatu45;
          let x_1511 : vec4<f32> = x_1137.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1508)];
          let x_1513 : vec2<f32> = ((vec2<f32>(x_1503.x, x_1503.y) * vec2<f32>(x_1505.x, x_1505.z)) + vec2<f32>(x_1511.z, x_1511.w));
          let x_1514 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1513.x, x_1514.y, x_1513.y, x_1514.w);
        }
      }
      let x_1521 : vec4<f32> = u_xlat10;
      let x_1524 : f32 = x_44.x_GlobalMipBias.x;
      let x_1525 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1521.x, x_1521.z), x_1524);
      u_xlat10 = x_1525;
      let x_1527 : bool = u_xlatb31.y;
      if (x_1527) {
        let x_1532 : f32 = u_xlat10.w;
        x_1528 = x_1532;
      } else {
        let x_1535 : f32 = u_xlat10.x;
        x_1528 = x_1535;
      }
      let x_1536 : f32 = x_1528;
      u_xlat48 = x_1536;
      let x_1538 : bool = u_xlatb31.x;
      if (x_1538) {
        let x_1542 : vec4<f32> = u_xlat10;
        x_1539 = vec3<f32>(x_1542.x, x_1542.y, x_1542.z);
      } else {
        let x_1545 : f32 = u_xlat48;
        x_1539 = vec3<f32>(x_1545, x_1545, x_1545);
      }
      let x_1547 : vec3<f32> = x_1539;
      let x_1548 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_1554 : vec4<f32> = u_xlat10;
    let x_1556 : u32 = u_xlatu45;
    let x_1559 : vec4<f32> = x_1029.x_AdditionalLightsColor[bitcast<i32>(x_1556)];
    let x_1561 : vec3<f32> = (vec3<f32>(x_1554.x, x_1554.y, x_1554.z) * vec3<f32>(x_1559.x, x_1559.y, x_1559.z));
    let x_1562 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);
    let x_1564 : f32 = u_xlat18;
    let x_1566 : vec4<f32> = u_xlat10;
    let x_1568 : vec3<f32> = (vec3<f32>(x_1564, x_1564, x_1564) * vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
    let x_1569 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
    let x_1571 : vec3<f32> = u_xlat14;
    let x_1572 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1571, x_1572);
    let x_1574 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1574, 0.0f, 1.0f);
    let x_1576 : f32 = u_xlat45;
    let x_1577 : f32 = u_xlat46;
    u_xlat45 = (x_1576 * x_1577);
    let x_1579 : f32 = u_xlat45;
    let x_1581 : vec4<f32> = u_xlat10;
    let x_1583 : vec3<f32> = (vec3<f32>(x_1579, x_1579, x_1579) * vec3<f32>(x_1581.x, x_1581.y, x_1581.z));
    let x_1584 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1584.w);
    let x_1586 : vec4<f32> = u_xlat8;
    let x_1588 : f32 = u_xlat47;
    let x_1591 : vec3<f32> = u_xlat3;
    let x_1592 : vec3<f32> = ((vec3<f32>(x_1586.x, x_1586.y, x_1586.z) * vec3<f32>(x_1588, x_1588, x_1588)) + x_1591);
    let x_1593 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
    let x_1595 : vec4<f32> = u_xlat8;
    let x_1597 : vec4<f32> = u_xlat8;
    u_xlat45 = dot(vec3<f32>(x_1595.x, x_1595.y, x_1595.z), vec3<f32>(x_1597.x, x_1597.y, x_1597.z));
    let x_1600 : f32 = u_xlat45;
    u_xlat45 = max(x_1600, 1.17549435e-37f);
    let x_1602 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1602);
    let x_1604 : f32 = u_xlat45;
    let x_1606 : vec4<f32> = u_xlat8;
    let x_1608 : vec3<f32> = (vec3<f32>(x_1604, x_1604, x_1604) * vec3<f32>(x_1606.x, x_1606.y, x_1606.z));
    let x_1609 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1609.w);
    let x_1611 : vec3<f32> = u_xlat14;
    let x_1612 : vec4<f32> = u_xlat8;
    u_xlat45 = dot(x_1611, vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
    let x_1615 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1615, 0.0f, 1.0f);
    let x_1617 : vec3<f32> = u_xlat9;
    let x_1618 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(x_1617, vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
    let x_1621 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1621, 0.0f, 1.0f);
    let x_1623 : f32 = u_xlat45;
    let x_1624 : f32 = u_xlat45;
    u_xlat45 = (x_1623 * x_1624);
    let x_1626 : f32 = u_xlat45;
    let x_1628 : f32 = u_xlat28.x;
    u_xlat45 = ((x_1626 * x_1628) + 1.000010014f);
    let x_1631 : f32 = u_xlat46;
    let x_1632 : f32 = u_xlat46;
    u_xlat46 = (x_1631 * x_1632);
    let x_1634 : f32 = u_xlat45;
    let x_1635 : f32 = u_xlat45;
    u_xlat45 = (x_1634 * x_1635);
    let x_1637 : f32 = u_xlat46;
    u_xlat46 = max(x_1637, 0.100000001f);
    let x_1639 : f32 = u_xlat45;
    let x_1640 : f32 = u_xlat46;
    u_xlat45 = (x_1639 * x_1640);
    let x_1642 : f32 = u_xlat42;
    let x_1643 : f32 = u_xlat45;
    u_xlat45 = (x_1642 * x_1643);
    let x_1645 : f32 = u_xlat43;
    let x_1646 : f32 = u_xlat45;
    u_xlat45 = (x_1645 / x_1646);
    let x_1648 : vec4<f32> = u_xlat0;
    let x_1650 : f32 = u_xlat45;
    let x_1653 : vec3<f32> = u_xlat6;
    let x_1654 : vec3<f32> = ((vec3<f32>(x_1648.x, x_1648.y, x_1648.z) * vec3<f32>(x_1650, x_1650, x_1650)) + x_1653);
    let x_1655 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1654.x, x_1654.y, x_1654.z, x_1655.w);
    let x_1657 : vec4<f32> = u_xlat8;
    let x_1659 : vec4<f32> = u_xlat10;
    let x_1662 : vec4<f32> = u_xlat7;
    let x_1664 : vec3<f32> = ((vec3<f32>(x_1657.x, x_1657.y, x_1657.z) * vec3<f32>(x_1659.x, x_1659.y, x_1659.z)) + vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
    let x_1665 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);

    continuing {
      let x_1667 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1667 + bitcast<u32>(1i));
    }
  }
  let x_1669 : vec4<f32> = u_xlat4;
  let x_1671 : vec3<f32> = u_xlat5;
  let x_1674 : vec4<f32> = u_xlat2;
  let x_1676 : vec3<f32> = ((vec3<f32>(x_1669.x, x_1669.y, x_1669.z) * vec3<f32>(x_1671.x, x_1671.x, x_1671.x)) + vec3<f32>(x_1674.x, x_1674.y, x_1674.w));
  let x_1677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
  let x_1681 : vec4<f32> = u_xlat7;
  let x_1683 : vec4<f32> = u_xlat0;
  let x_1685 : vec3<f32> = (vec3<f32>(x_1681.x, x_1681.y, x_1681.z) + vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

