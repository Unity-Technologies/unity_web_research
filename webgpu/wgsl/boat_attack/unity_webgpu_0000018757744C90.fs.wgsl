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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_159 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_607 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_811 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1066 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1174 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_552 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var x_690 : f32;
  var x_702 : vec3<f32>;
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
  var x_1490 : f32;
  var x_1503 : f32;
  var x_1565 : f32;
  var x_1576 : vec3<f32>;
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
  let x_347 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_343.z, x_343.w), x_346);
  u_xlat4 = x_347;
  let x_352 : vec4<f32> = vs_TEXCOORD0;
  let x_355 : f32 = x_44.x_GlobalMipBias.x;
  let x_356 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_352.z, x_352.w), x_355);
  u_xlat5 = vec3<f32>(x_356.x, x_356.y, x_356.z);
  let x_358 : vec4<f32> = u_xlat4;
  let x_362 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : vec3<f32> = u_xlat14;
  let x_367 : vec4<f32> = u_xlat4;
  u_xlat41 = dot(x_366, vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : f32 = u_xlat41;
  u_xlat41 = (x_370 + 0.5f);
  let x_373 : f32 = u_xlat41;
  let x_375 : vec3<f32> = u_xlat5;
  let x_376 : vec3<f32> = (vec3<f32>(x_373, x_373, x_373) * x_375);
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat4.w;
  u_xlat41 = max(x_380, 0.0001f);
  let x_383 : vec4<f32> = u_xlat4;
  let x_385 : f32 = u_xlat41;
  let x_387 : vec3<f32> = (vec3<f32>(x_383.x, x_383.y, x_383.z) / vec3<f32>(x_385, x_385, x_385));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_392 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_393 : vec2<f32> = vec2<f32>(x_392.x, x_392.y);
  let x_397 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_393.x, x_393.y));
  let x_398 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_397.x, x_397.y, x_398.z);
  let x_400 : vec3<f32> = u_xlat5;
  let x_402 : vec4<f32> = hlslcc_FragCoord;
  let x_404 : vec2<f32> = (vec2<f32>(x_400.x, x_400.y) * vec2<f32>(x_402.x, x_402.y));
  let x_405 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_404.x, x_404.y, x_405.z);
  let x_408 : f32 = u_xlat5.y;
  let x_411 : f32 = x_44.x_ScaleBiasRt.x;
  let x_414 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat41 = ((x_408 * x_411) + x_414);
  let x_416 : f32 = u_xlat41;
  u_xlat5.z = (-(x_416) + 1.0f);
  let x_420 : f32 = u_xlat1;
  u_xlat41 = ((-(x_420) * 0.959999979f) + 0.959999979f);
  let x_426 : f32 = u_xlat41;
  u_xlat42 = (-(x_426) + 1.0f);
  let x_429 : vec4<f32> = u_xlat0;
  let x_431 : f32 = u_xlat41;
  u_xlat6 = (vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_431, x_431, x_431));
  let x_434 : vec4<f32> = u_xlat0;
  let x_438 : vec3<f32> = (vec3<f32>(x_434.x, x_434.y, x_434.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : f32 = u_xlat1;
  let x_443 : vec4<f32> = u_xlat0;
  let x_448 : vec3<f32> = ((vec3<f32>(x_441, x_441, x_441) * vec3<f32>(x_443.x, x_443.y, x_443.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_452 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_452) + 1.0f);
  let x_455 : f32 = u_xlat1;
  let x_456 : f32 = u_xlat1;
  u_xlat41 = (x_455 * x_456);
  let x_458 : f32 = u_xlat41;
  u_xlat41 = max(x_458, 0.0078125f);
  let x_462 : f32 = u_xlat41;
  let x_463 : f32 = u_xlat41;
  u_xlat43 = (x_462 * x_463);
  let x_467 : f32 = u_xlat0.w;
  let x_468 : f32 = u_xlat42;
  u_xlat39 = (x_467 + x_468);
  let x_470 : f32 = u_xlat39;
  u_xlat39 = clamp(x_470, 0.0f, 1.0f);
  let x_472 : f32 = u_xlat41;
  u_xlat42 = ((x_472 * 4.0f) + 2.0f);
  let x_480 : vec3<f32> = u_xlat5;
  let x_483 : f32 = x_44.x_GlobalMipBias.x;
  let x_484 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_480.x, x_480.z), x_483);
  u_xlat5.x = x_484.x;
  let x_489 : f32 = u_xlat5.x;
  u_xlat18 = (x_489 + -1.0f);
  let x_492 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_493 : f32 = u_xlat18;
  u_xlat18 = ((x_492 * x_493) + 1.0f);
  let x_497 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_497, 1.0f);
  let x_501 : vec4<f32> = u_xlat2;
  let x_502 : vec2<f32> = vec2<f32>(x_501.x, x_501.y);
  let x_504 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_502.x, x_502.y, x_504);
  let x_516 : vec3<f32> = txVec0;
  let x_518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_516.xy, x_516.z);
  u_xlat2.x = x_518;
  let x_521 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_521) + 1.0f);
  let x_526 : f32 = u_xlat2.x;
  let x_528 : f32 = x_159.x_MainLightShadowParams.x;
  let x_531 : f32 = u_xlat15.x;
  u_xlat2.x = ((x_526 * x_528) + x_531);
  let x_538 : f32 = u_xlat2.z;
  u_xlatb15.x = (0.0f >= x_538);
  let x_543 : f32 = u_xlat2.z;
  u_xlatb28 = (x_543 >= 1.0f);
  let x_545 : bool = u_xlatb28;
  let x_547 : bool = u_xlatb15.x;
  u_xlatb15.x = (x_545 | x_547);
  let x_551 : bool = u_xlatb15.x;
  if (x_551) {
    x_552 = 1.0f;
  } else {
    let x_557 : f32 = u_xlat2.x;
    x_552 = x_557;
  }
  let x_558 : f32 = x_552;
  u_xlat2.x = x_558;
  let x_561 : vec3<f32> = vs_TEXCOORD7;
  let x_563 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_565 : vec3<f32> = (x_561 + -(x_563));
  let x_566 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat7;
  let x_570 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_568.x, x_568.y, x_568.z), vec3<f32>(x_570.x, x_570.y, x_570.z));
  let x_575 : f32 = u_xlat15.x;
  let x_577 : f32 = x_159.x_MainLightShadowParams.z;
  let x_580 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_575 * x_577) + x_580);
  let x_584 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_584, 0.0f, 1.0f);
  let x_590 : f32 = u_xlat2.x;
  u_xlat28.x = (-(x_590) + 1.0f);
  let x_595 : f32 = u_xlat15.x;
  let x_597 : f32 = u_xlat28.x;
  let x_600 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_595 * x_597) + x_600);
  let x_609 : f32 = x_607.x_MainLightCookieTextureFormat;
  u_xlatb15.x = !((x_609 == -1.0f));
  let x_613 : bool = u_xlatb15.x;
  if (x_613) {
    let x_616 : vec3<f32> = vs_TEXCOORD7;
    let x_619 : vec4<f32> = x_607.x_MainLightWorldToLight[1i];
    let x_621 : vec2<f32> = (vec2<f32>(x_616.y, x_616.y) * vec2<f32>(x_619.x, x_619.y));
    let x_622 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_621.x, x_621.y, x_622.z);
    let x_625 : vec4<f32> = x_607.x_MainLightWorldToLight[0i];
    let x_627 : vec3<f32> = vs_TEXCOORD7;
    let x_630 : vec3<f32> = u_xlat15;
    let x_632 : vec2<f32> = ((vec2<f32>(x_625.x, x_625.y) * vec2<f32>(x_627.x, x_627.x)) + vec2<f32>(x_630.x, x_630.y));
    let x_633 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_632.x, x_632.y, x_633.z);
    let x_636 : vec4<f32> = x_607.x_MainLightWorldToLight[2i];
    let x_638 : vec3<f32> = vs_TEXCOORD7;
    let x_641 : vec3<f32> = u_xlat15;
    let x_643 : vec2<f32> = ((vec2<f32>(x_636.x, x_636.y) * vec2<f32>(x_638.z, x_638.z)) + vec2<f32>(x_641.x, x_641.y));
    let x_644 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_643.x, x_643.y, x_644.z);
    let x_646 : vec3<f32> = u_xlat15;
    let x_649 : vec4<f32> = x_607.x_MainLightWorldToLight[3i];
    let x_651 : vec2<f32> = (vec2<f32>(x_646.x, x_646.y) + vec2<f32>(x_649.x, x_649.y));
    let x_652 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_651.x, x_651.y, x_652.z);
    let x_654 : vec3<f32> = u_xlat15;
    let x_658 : vec2<f32> = ((vec2<f32>(x_654.x, x_654.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_659 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_658.x, x_658.y, x_659.z);
    let x_666 : vec3<f32> = u_xlat15;
    let x_669 : f32 = x_44.x_GlobalMipBias.x;
    let x_670 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_666.x, x_666.y), x_669);
    u_xlat7 = x_670;
    let x_672 : f32 = x_607.x_MainLightCookieTextureFormat;
    let x_674 : f32 = x_607.x_MainLightCookieTextureFormat;
    let x_676 : f32 = x_607.x_MainLightCookieTextureFormat;
    let x_678 : f32 = x_607.x_MainLightCookieTextureFormat;
    let x_679 : vec4<f32> = vec4<f32>(x_672, x_674, x_676, x_678);
    let x_686 : vec4<bool> = (vec4<f32>(x_679.x, x_679.y, x_679.z, x_679.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb15 = vec2<bool>(x_686.x, x_686.y);
    let x_689 : bool = u_xlatb15.y;
    if (x_689) {
      let x_694 : f32 = u_xlat7.w;
      x_690 = x_694;
    } else {
      let x_697 : f32 = u_xlat7.x;
      x_690 = x_697;
    }
    let x_698 : f32 = x_690;
    u_xlat28.x = x_698;
    let x_701 : bool = u_xlatb15.x;
    if (x_701) {
      let x_705 : vec4<f32> = u_xlat7;
      x_702 = vec3<f32>(x_705.x, x_705.y, x_705.z);
    } else {
      let x_708 : vec2<f32> = u_xlat28;
      x_702 = vec3<f32>(x_708.x, x_708.x, x_708.x);
    }
    let x_710 : vec3<f32> = x_702;
    let x_711 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_717 : vec4<f32> = u_xlat7;
  let x_720 : vec4<f32> = x_44.x_MainLightColor;
  let x_722 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) * vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : f32 = u_xlat18;
  let x_727 : vec4<f32> = u_xlat7;
  let x_729 : vec3<f32> = (vec3<f32>(x_725, x_725, x_725) * vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec3<f32> = u_xlat3;
  let x_734 : vec3<f32> = u_xlat14;
  u_xlat15.x = dot(-(x_732), x_734);
  let x_738 : f32 = u_xlat15.x;
  let x_740 : f32 = u_xlat15.x;
  u_xlat15.x = (x_738 + x_740);
  let x_744 : vec3<f32> = u_xlat14;
  let x_745 : vec3<f32> = u_xlat15;
  let x_749 : vec3<f32> = u_xlat3;
  let x_751 : vec3<f32> = ((x_744 * -(vec3<f32>(x_745.x, x_745.x, x_745.x))) + -(x_749));
  let x_752 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec3<f32> = u_xlat14;
  let x_755 : vec3<f32> = u_xlat3;
  u_xlat15.x = dot(x_754, x_755);
  let x_759 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_759, 0.0f, 1.0f);
  let x_763 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_763) + 1.0f);
  let x_768 : f32 = u_xlat15.x;
  let x_770 : f32 = u_xlat15.x;
  u_xlat15.x = (x_768 * x_770);
  let x_774 : f32 = u_xlat15.x;
  let x_776 : f32 = u_xlat15.x;
  u_xlat15.x = (x_774 * x_776);
  let x_779 : f32 = u_xlat1;
  u_xlat28.x = ((-(x_779) * 0.699999988f) + 1.700000048f);
  let x_786 : f32 = u_xlat1;
  let x_788 : f32 = u_xlat28.x;
  u_xlat1 = (x_786 * x_788);
  let x_790 : f32 = u_xlat1;
  u_xlat1 = (x_790 * 6.0f);
  let x_801 : vec4<f32> = u_xlat8;
  let x_803 : f32 = u_xlat1;
  let x_804 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_801.x, x_801.y, x_801.z), x_803);
  u_xlat8 = x_804;
  let x_806 : f32 = u_xlat8.w;
  u_xlat1 = (x_806 + -1.0f);
  let x_813 : f32 = x_811.unity_SpecCube0_HDR.w;
  let x_814 : f32 = u_xlat1;
  u_xlat1 = ((x_813 * x_814) + 1.0f);
  let x_817 : f32 = u_xlat1;
  u_xlat1 = max(x_817, 0.0f);
  let x_819 : f32 = u_xlat1;
  u_xlat1 = log2(x_819);
  let x_821 : f32 = u_xlat1;
  let x_823 : f32 = x_811.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_821 * x_823);
  let x_825 : f32 = u_xlat1;
  u_xlat1 = exp2(x_825);
  let x_827 : f32 = u_xlat1;
  let x_829 : f32 = x_811.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_827 * x_829);
  let x_831 : vec4<f32> = u_xlat8;
  let x_833 : f32 = u_xlat1;
  let x_835 : vec3<f32> = (vec3<f32>(x_831.x, x_831.y, x_831.z) * vec3<f32>(x_833, x_833, x_833));
  let x_836 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : f32 = u_xlat41;
  let x_840 : f32 = u_xlat41;
  u_xlat28 = ((vec2<f32>(x_838, x_838) * vec2<f32>(x_840, x_840)) + vec2<f32>(-1.0f, 1.0f));
  let x_846 : f32 = u_xlat28.y;
  u_xlat1 = (1.0f / x_846);
  let x_849 : vec4<f32> = u_xlat0;
  let x_852 : f32 = u_xlat39;
  u_xlat9 = (-(vec3<f32>(x_849.x, x_849.y, x_849.z)) + vec3<f32>(x_852, x_852, x_852));
  let x_855 : vec3<f32> = u_xlat15;
  let x_857 : vec3<f32> = u_xlat9;
  let x_859 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_855.x, x_855.x, x_855.x) * x_857) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : f32 = u_xlat1;
  let x_864 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_862, x_862, x_862) * x_864);
  let x_866 : vec4<f32> = u_xlat8;
  let x_868 : vec3<f32> = u_xlat9;
  let x_869 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) * x_868);
  let x_870 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec4<f32> = u_xlat4;
  let x_874 : vec3<f32> = u_xlat6;
  let x_876 : vec4<f32> = u_xlat8;
  let x_878 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.y, x_872.z) * x_874) + vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_879 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_882 : f32 = u_xlat2.x;
  let x_884 : f32 = x_811.unity_LightData.z;
  u_xlat39 = (x_882 * x_884);
  let x_886 : vec3<f32> = u_xlat14;
  let x_888 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_886, vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : f32 = u_xlat1;
  u_xlat1 = clamp(x_891, 0.0f, 1.0f);
  let x_893 : f32 = u_xlat39;
  let x_894 : f32 = u_xlat1;
  u_xlat39 = (x_893 * x_894);
  let x_896 : f32 = u_xlat39;
  let x_898 : vec4<f32> = u_xlat7;
  let x_900 : vec3<f32> = (vec3<f32>(x_896, x_896, x_896) * vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_900.z);
  let x_903 : vec3<f32> = u_xlat3;
  let x_905 : vec4<f32> = x_44.x_MainLightPosition;
  let x_907 : vec3<f32> = (x_903 + vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat7;
  let x_912 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_910.x, x_910.y, x_910.z), vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : f32 = u_xlat39;
  u_xlat39 = max(x_915, 1.17549435e-37f);
  let x_918 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_918);
  let x_920 : f32 = u_xlat39;
  let x_922 : vec4<f32> = u_xlat7;
  let x_924 : vec3<f32> = (vec3<f32>(x_920, x_920, x_920) * vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec3<f32> = u_xlat14;
  let x_928 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(x_927, vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_931 : f32 = u_xlat39;
  u_xlat39 = clamp(x_931, 0.0f, 1.0f);
  let x_934 : vec4<f32> = x_44.x_MainLightPosition;
  let x_936 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : f32 = u_xlat1;
  u_xlat1 = clamp(x_939, 0.0f, 1.0f);
  let x_941 : f32 = u_xlat39;
  let x_942 : f32 = u_xlat39;
  u_xlat39 = (x_941 * x_942);
  let x_944 : f32 = u_xlat39;
  let x_946 : f32 = u_xlat28.x;
  u_xlat39 = ((x_944 * x_946) + 1.000010014f);
  let x_950 : f32 = u_xlat1;
  let x_951 : f32 = u_xlat1;
  u_xlat1 = (x_950 * x_951);
  let x_953 : f32 = u_xlat39;
  let x_954 : f32 = u_xlat39;
  u_xlat39 = (x_953 * x_954);
  let x_956 : f32 = u_xlat1;
  u_xlat1 = max(x_956, 0.100000001f);
  let x_959 : f32 = u_xlat39;
  let x_960 : f32 = u_xlat1;
  u_xlat39 = (x_959 * x_960);
  let x_962 : f32 = u_xlat42;
  let x_963 : f32 = u_xlat39;
  u_xlat39 = (x_962 * x_963);
  let x_965 : f32 = u_xlat43;
  let x_966 : f32 = u_xlat39;
  u_xlat39 = (x_965 / x_966);
  let x_968 : vec4<f32> = u_xlat0;
  let x_970 : f32 = u_xlat39;
  let x_973 : vec3<f32> = u_xlat6;
  let x_974 : vec3<f32> = ((vec3<f32>(x_968.x, x_968.y, x_968.z) * vec3<f32>(x_970, x_970, x_970)) + x_973);
  let x_975 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : vec4<f32> = u_xlat2;
  let x_979 : vec4<f32> = u_xlat7;
  let x_981 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.w) * vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_981.z);
  let x_985 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_987 : f32 = x_811.unity_LightData.y;
  u_xlat39 = min(x_985, x_987);
  let x_990 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_990));
  let x_995 : f32 = x_607.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_997 : f32 = x_607.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_999 : f32 = x_607.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1001 : f32 = x_607.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1002 : vec4<f32> = vec4<f32>(x_995, x_997, x_999, x_1001);
  let x_1009 : vec4<bool> = (vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1002.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb31 = vec2<bool>(x_1009.x, x_1009.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1020 : u32 = u_xlatu_loop_1;
    let x_1021 : u32 = u_xlatu39;
    if ((x_1020 < x_1021)) {
    } else {
      break;
    }
    let x_1024 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1024 >> 2u);
    let x_1027 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1027 & 3u));
    let x_1031 : u32 = u_xlatu45;
    let x_1034 : vec4<f32> = x_811.unity_LightIndices[bitcast<i32>(x_1031)];
    let x_1044 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1049 : vec4<u32> = indexable[x_1044];
    u_xlat45 = dot(x_1034, bitcast<vec4<f32>>(x_1049));
    let x_1052 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1052));
    let x_1055 : vec3<f32> = vs_TEXCOORD7;
    let x_1067 : u32 = u_xlatu45;
    let x_1070 : vec4<f32> = x_1066.x_AdditionalLightsPosition[bitcast<i32>(x_1067)];
    let x_1073 : u32 = u_xlatu45;
    let x_1076 : vec4<f32> = x_1066.x_AdditionalLightsPosition[bitcast<i32>(x_1073)];
    let x_1078 : vec3<f32> = ((-(x_1055) * vec3<f32>(x_1070.w, x_1070.w, x_1070.w)) + vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
    let x_1079 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
    let x_1082 : vec4<f32> = u_xlat8;
    let x_1084 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1082.x, x_1082.y, x_1082.z), vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
    let x_1087 : f32 = u_xlat46;
    u_xlat46 = max(x_1087, 6.10351562e-05f);
    let x_1091 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1091);
    let x_1093 : f32 = u_xlat47;
    let x_1095 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1093, x_1093, x_1093) * vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
    let x_1099 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1099);
    let x_1101 : f32 = u_xlat46;
    let x_1102 : u32 = u_xlatu45;
    let x_1105 : f32 = x_1066.x_AdditionalLightsAttenuation[bitcast<i32>(x_1102)].x;
    u_xlat46 = (x_1101 * x_1105);
    let x_1107 : f32 = u_xlat46;
    let x_1109 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1107) * x_1109) + 1.0f);
    let x_1112 : f32 = u_xlat46;
    u_xlat46 = max(x_1112, 0.0f);
    let x_1114 : f32 = u_xlat46;
    let x_1115 : f32 = u_xlat46;
    u_xlat46 = (x_1114 * x_1115);
    let x_1117 : f32 = u_xlat46;
    let x_1118 : f32 = u_xlat48;
    u_xlat46 = (x_1117 * x_1118);
    let x_1120 : u32 = u_xlatu45;
    let x_1123 : vec4<f32> = x_1066.x_AdditionalLightsSpotDir[bitcast<i32>(x_1120)];
    let x_1125 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1123.x, x_1123.y, x_1123.z), x_1125);
    let x_1127 : f32 = u_xlat48;
    let x_1128 : u32 = u_xlatu45;
    let x_1131 : f32 = x_1066.x_AdditionalLightsAttenuation[bitcast<i32>(x_1128)].z;
    let x_1133 : u32 = u_xlatu45;
    let x_1136 : f32 = x_1066.x_AdditionalLightsAttenuation[bitcast<i32>(x_1133)].w;
    u_xlat48 = ((x_1127 * x_1131) + x_1136);
    let x_1138 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1138, 0.0f, 1.0f);
    let x_1140 : f32 = u_xlat48;
    let x_1141 : f32 = u_xlat48;
    u_xlat48 = (x_1140 * x_1141);
    let x_1143 : f32 = u_xlat46;
    let x_1144 : f32 = u_xlat48;
    u_xlat46 = (x_1143 * x_1144);
    let x_1147 : u32 = u_xlatu45;
    u_xlatu48 = (x_1147 >> 5u);
    let x_1150 : u32 = u_xlatu45;
    u_xlati10 = (1i << bitcast<u32>((bitcast<i32>(x_1150) & 31i)));
    let x_1156 : i32 = u_xlati10;
    let x_1158 : u32 = u_xlatu48;
    let x_1161 : f32 = x_607.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1158)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_1156) & bitcast<u32>(x_1161)));
    let x_1165 : i32 = u_xlati48;
    if ((x_1165 != 0i)) {
      let x_1175 : u32 = u_xlatu45;
      let x_1178 : f32 = x_1174.x_AdditionalLightsLightTypes[bitcast<i32>(x_1175)].el;
      u_xlati48 = i32(x_1178);
      let x_1180 : i32 = u_xlati48;
      u_xlati10 = select(1i, 0i, (x_1180 != 0i));
      let x_1184 : u32 = u_xlatu45;
      u_xlati23 = (bitcast<i32>(x_1184) << bitcast<u32>(2i));
      let x_1187 : i32 = u_xlati10;
      if ((x_1187 != 0i)) {
        let x_1192 : vec3<f32> = vs_TEXCOORD7;
        let x_1194 : i32 = u_xlati23;
        let x_1197 : i32 = u_xlati23;
        let x_1201 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[((x_1194 + 1i) / 4i)][((x_1197 + 1i) % 4i)];
        let x_1203 : vec3<f32> = (vec3<f32>(x_1192.y, x_1192.y, x_1192.y) * vec3<f32>(x_1201.x, x_1201.y, x_1201.w));
        let x_1204 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1203.x, x_1204.y, x_1203.y, x_1203.z);
        let x_1206 : i32 = u_xlati23;
        let x_1208 : i32 = u_xlati23;
        let x_1211 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[(x_1206 / 4i)][(x_1208 % 4i)];
        let x_1213 : vec3<f32> = vs_TEXCOORD7;
        let x_1216 : vec4<f32> = u_xlat10;
        let x_1218 : vec3<f32> = ((vec3<f32>(x_1211.x, x_1211.y, x_1211.w) * vec3<f32>(x_1213.x, x_1213.x, x_1213.x)) + vec3<f32>(x_1216.x, x_1216.z, x_1216.w));
        let x_1219 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1218.x, x_1219.y, x_1218.y, x_1218.z);
        let x_1221 : i32 = u_xlati23;
        let x_1224 : i32 = u_xlati23;
        let x_1228 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[((x_1221 + 2i) / 4i)][((x_1224 + 2i) % 4i)];
        let x_1230 : vec3<f32> = vs_TEXCOORD7;
        let x_1233 : vec4<f32> = u_xlat10;
        let x_1235 : vec3<f32> = ((vec3<f32>(x_1228.x, x_1228.y, x_1228.w) * vec3<f32>(x_1230.z, x_1230.z, x_1230.z)) + vec3<f32>(x_1233.x, x_1233.z, x_1233.w));
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1235.x, x_1236.y, x_1235.y, x_1235.z);
        let x_1238 : vec4<f32> = u_xlat10;
        let x_1240 : i32 = u_xlati23;
        let x_1243 : i32 = u_xlati23;
        let x_1247 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[((x_1240 + 3i) / 4i)][((x_1243 + 3i) % 4i)];
        let x_1249 : vec3<f32> = (vec3<f32>(x_1238.x, x_1238.z, x_1238.w) + vec3<f32>(x_1247.x, x_1247.y, x_1247.w));
        let x_1250 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1249.x, x_1250.y, x_1249.y, x_1249.z);
        let x_1252 : vec4<f32> = u_xlat10;
        let x_1254 : vec4<f32> = u_xlat10;
        let x_1256 : vec2<f32> = (vec2<f32>(x_1252.x, x_1252.z) / vec2<f32>(x_1254.w, x_1254.w));
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1256.x, x_1257.y, x_1256.y, x_1257.w);
        let x_1259 : vec4<f32> = u_xlat10;
        let x_1262 : vec2<f32> = ((vec2<f32>(x_1259.x, x_1259.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1263 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1262.x, x_1263.y, x_1262.y, x_1263.w);
        let x_1265 : vec4<f32> = u_xlat10;
        let x_1269 : vec2<f32> = clamp(vec2<f32>(x_1265.x, x_1265.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1270 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1269.x, x_1270.y, x_1269.y, x_1270.w);
        let x_1272 : u32 = u_xlatu45;
        let x_1275 : vec4<f32> = x_1174.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1272)];
        let x_1277 : vec4<f32> = u_xlat10;
        let x_1280 : u32 = u_xlatu45;
        let x_1283 : vec4<f32> = x_1174.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1280)];
        let x_1285 : vec2<f32> = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1277.x, x_1277.z)) + vec2<f32>(x_1283.z, x_1283.w));
        let x_1286 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1286.w);
      } else {
        let x_1290 : i32 = u_xlati48;
        u_xlatb48 = (x_1290 == 1i);
        let x_1292 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1292);
        let x_1294 : i32 = u_xlati48;
        if ((x_1294 != 0i)) {
          let x_1299 : vec3<f32> = vs_TEXCOORD7;
          let x_1301 : i32 = u_xlati23;
          let x_1304 : i32 = u_xlati23;
          let x_1308 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[((x_1301 + 1i) / 4i)][((x_1304 + 1i) % 4i)];
          let x_1310 : vec2<f32> = (vec2<f32>(x_1299.y, x_1299.y) * vec2<f32>(x_1308.x, x_1308.y));
          let x_1311 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1311.w);
          let x_1313 : i32 = u_xlati23;
          let x_1315 : i32 = u_xlati23;
          let x_1318 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[(x_1313 / 4i)][(x_1315 % 4i)];
          let x_1320 : vec3<f32> = vs_TEXCOORD7;
          let x_1323 : vec4<f32> = u_xlat11;
          let x_1325 : vec2<f32> = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(x_1320.x, x_1320.x)) + vec2<f32>(x_1323.x, x_1323.y));
          let x_1326 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1325.x, x_1325.y, x_1326.z, x_1326.w);
          let x_1328 : i32 = u_xlati23;
          let x_1331 : i32 = u_xlati23;
          let x_1335 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[((x_1328 + 2i) / 4i)][((x_1331 + 2i) % 4i)];
          let x_1337 : vec3<f32> = vs_TEXCOORD7;
          let x_1340 : vec4<f32> = u_xlat11;
          let x_1342 : vec2<f32> = ((vec2<f32>(x_1335.x, x_1335.y) * vec2<f32>(x_1337.z, x_1337.z)) + vec2<f32>(x_1340.x, x_1340.y));
          let x_1343 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
          let x_1345 : vec4<f32> = u_xlat11;
          let x_1347 : i32 = u_xlati23;
          let x_1350 : i32 = u_xlati23;
          let x_1354 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[((x_1347 + 3i) / 4i)][((x_1350 + 3i) % 4i)];
          let x_1356 : vec2<f32> = (vec2<f32>(x_1345.x, x_1345.y) + vec2<f32>(x_1354.x, x_1354.y));
          let x_1357 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
          let x_1359 : vec4<f32> = u_xlat11;
          let x_1362 : vec2<f32> = ((vec2<f32>(x_1359.x, x_1359.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1363 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1362.x, x_1362.y, x_1363.z, x_1363.w);
          let x_1365 : vec4<f32> = u_xlat11;
          let x_1367 : vec2<f32> = fract(vec2<f32>(x_1365.x, x_1365.y));
          let x_1368 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
          let x_1370 : u32 = u_xlatu45;
          let x_1373 : vec4<f32> = x_1174.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1370)];
          let x_1375 : vec4<f32> = u_xlat11;
          let x_1378 : u32 = u_xlatu45;
          let x_1381 : vec4<f32> = x_1174.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1378)];
          let x_1383 : vec2<f32> = ((vec2<f32>(x_1373.x, x_1373.y) * vec2<f32>(x_1375.x, x_1375.y)) + vec2<f32>(x_1381.z, x_1381.w));
          let x_1384 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1383.x, x_1384.y, x_1383.y, x_1384.w);
        } else {
          let x_1387 : vec3<f32> = vs_TEXCOORD7;
          let x_1389 : i32 = u_xlati23;
          let x_1392 : i32 = u_xlati23;
          let x_1396 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[((x_1389 + 1i) / 4i)][((x_1392 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1387.y, x_1387.y, x_1387.y, x_1387.y) * x_1396);
          let x_1398 : i32 = u_xlati23;
          let x_1400 : i32 = u_xlati23;
          let x_1403 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[(x_1398 / 4i)][(x_1400 % 4i)];
          let x_1404 : vec3<f32> = vs_TEXCOORD7;
          let x_1407 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1403 * vec4<f32>(x_1404.x, x_1404.x, x_1404.x, x_1404.x)) + x_1407);
          let x_1409 : i32 = u_xlati23;
          let x_1412 : i32 = u_xlati23;
          let x_1416 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[((x_1409 + 2i) / 4i)][((x_1412 + 2i) % 4i)];
          let x_1417 : vec3<f32> = vs_TEXCOORD7;
          let x_1420 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1416 * vec4<f32>(x_1417.z, x_1417.z, x_1417.z, x_1417.z)) + x_1420);
          let x_1422 : vec4<f32> = u_xlat11;
          let x_1423 : i32 = u_xlati23;
          let x_1426 : i32 = u_xlati23;
          let x_1430 : vec4<f32> = x_1174.x_AdditionalLightsWorldToLights[((x_1423 + 3i) / 4i)][((x_1426 + 3i) % 4i)];
          u_xlat11 = (x_1422 + x_1430);
          let x_1432 : vec4<f32> = u_xlat11;
          let x_1434 : vec4<f32> = u_xlat11;
          let x_1436 : vec3<f32> = (vec3<f32>(x_1432.x, x_1432.y, x_1432.z) / vec3<f32>(x_1434.w, x_1434.w, x_1434.w));
          let x_1437 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
          let x_1439 : vec4<f32> = u_xlat11;
          let x_1441 : vec4<f32> = u_xlat11;
          u_xlat48 = dot(vec3<f32>(x_1439.x, x_1439.y, x_1439.z), vec3<f32>(x_1441.x, x_1441.y, x_1441.z));
          let x_1444 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1444);
          let x_1446 : f32 = u_xlat48;
          let x_1448 : vec4<f32> = u_xlat11;
          let x_1450 : vec3<f32> = (vec3<f32>(x_1446, x_1446, x_1446) * vec3<f32>(x_1448.x, x_1448.y, x_1448.z));
          let x_1451 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
          let x_1453 : vec4<f32> = u_xlat11;
          u_xlat48 = dot(abs(vec3<f32>(x_1453.x, x_1453.y, x_1453.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1458 : f32 = u_xlat48;
          u_xlat48 = max(x_1458, 0.000001f);
          let x_1461 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1461);
          let x_1464 : f32 = u_xlat48;
          let x_1466 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_1464, x_1464, x_1464) * vec3<f32>(x_1466.z, x_1466.x, x_1466.y));
          let x_1470 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1470);
          let x_1474 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1474, 0.0f, 1.0f);
          let x_1480 : vec3<f32> = u_xlat12;
          let x_1483 : vec4<bool> = (vec4<f32>(x_1480.y, x_1480.y, x_1480.z, x_1480.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1484 : vec2<bool> = vec2<bool>(x_1483.x, x_1483.z);
          let x_1485 : vec3<bool> = u_xlatb23;
          u_xlatb23 = vec3<bool>(x_1484.x, x_1485.y, x_1484.y);
          let x_1489 : bool = u_xlatb23.x;
          if (x_1489) {
            let x_1494 : f32 = u_xlat12.x;
            x_1490 = x_1494;
          } else {
            let x_1497 : f32 = u_xlat12.x;
            x_1490 = -(x_1497);
          }
          let x_1499 : f32 = x_1490;
          u_xlat23.x = x_1499;
          let x_1502 : bool = u_xlatb23.z;
          if (x_1502) {
            let x_1507 : f32 = u_xlat12.x;
            x_1503 = x_1507;
          } else {
            let x_1510 : f32 = u_xlat12.x;
            x_1503 = -(x_1510);
          }
          let x_1512 : f32 = x_1503;
          u_xlat23.z = x_1512;
          let x_1514 : vec4<f32> = u_xlat11;
          let x_1516 : f32 = u_xlat48;
          let x_1519 : vec3<f32> = u_xlat23;
          let x_1521 : vec2<f32> = ((vec2<f32>(x_1514.x, x_1514.y) * vec2<f32>(x_1516, x_1516)) + vec2<f32>(x_1519.x, x_1519.z));
          let x_1522 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1521.x, x_1522.y, x_1521.y);
          let x_1524 : vec3<f32> = u_xlat23;
          let x_1527 : vec2<f32> = ((vec2<f32>(x_1524.x, x_1524.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1528 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1527.x, x_1528.y, x_1527.y);
          let x_1530 : vec3<f32> = u_xlat23;
          let x_1534 : vec2<f32> = clamp(vec2<f32>(x_1530.x, x_1530.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1535 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1534.x, x_1535.y, x_1534.y);
          let x_1537 : u32 = u_xlatu45;
          let x_1540 : vec4<f32> = x_1174.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1537)];
          let x_1542 : vec3<f32> = u_xlat23;
          let x_1545 : u32 = u_xlatu45;
          let x_1548 : vec4<f32> = x_1174.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1545)];
          let x_1550 : vec2<f32> = ((vec2<f32>(x_1540.x, x_1540.y) * vec2<f32>(x_1542.x, x_1542.z)) + vec2<f32>(x_1548.z, x_1548.w));
          let x_1551 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1550.x, x_1551.y, x_1550.y, x_1551.w);
        }
      }
      let x_1558 : vec4<f32> = u_xlat10;
      let x_1561 : f32 = x_44.x_GlobalMipBias.x;
      let x_1562 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1558.x, x_1558.z), x_1561);
      u_xlat10 = x_1562;
      let x_1564 : bool = u_xlatb31.y;
      if (x_1564) {
        let x_1569 : f32 = u_xlat10.w;
        x_1565 = x_1569;
      } else {
        let x_1572 : f32 = u_xlat10.x;
        x_1565 = x_1572;
      }
      let x_1573 : f32 = x_1565;
      u_xlat48 = x_1573;
      let x_1575 : bool = u_xlatb31.x;
      if (x_1575) {
        let x_1579 : vec4<f32> = u_xlat10;
        x_1576 = vec3<f32>(x_1579.x, x_1579.y, x_1579.z);
      } else {
        let x_1582 : f32 = u_xlat48;
        x_1576 = vec3<f32>(x_1582, x_1582, x_1582);
      }
      let x_1584 : vec3<f32> = x_1576;
      let x_1585 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_1591 : vec4<f32> = u_xlat10;
    let x_1593 : u32 = u_xlatu45;
    let x_1596 : vec4<f32> = x_1066.x_AdditionalLightsColor[bitcast<i32>(x_1593)];
    let x_1598 : vec3<f32> = (vec3<f32>(x_1591.x, x_1591.y, x_1591.z) * vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
    let x_1599 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
    let x_1601 : f32 = u_xlat18;
    let x_1603 : vec4<f32> = u_xlat10;
    let x_1605 : vec3<f32> = (vec3<f32>(x_1601, x_1601, x_1601) * vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
    let x_1606 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
    let x_1608 : vec3<f32> = u_xlat14;
    let x_1609 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1608, x_1609);
    let x_1611 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1611, 0.0f, 1.0f);
    let x_1613 : f32 = u_xlat45;
    let x_1614 : f32 = u_xlat46;
    u_xlat45 = (x_1613 * x_1614);
    let x_1616 : f32 = u_xlat45;
    let x_1618 : vec4<f32> = u_xlat10;
    let x_1620 : vec3<f32> = (vec3<f32>(x_1616, x_1616, x_1616) * vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
    let x_1621 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
    let x_1623 : vec4<f32> = u_xlat8;
    let x_1625 : f32 = u_xlat47;
    let x_1628 : vec3<f32> = u_xlat3;
    let x_1629 : vec3<f32> = ((vec3<f32>(x_1623.x, x_1623.y, x_1623.z) * vec3<f32>(x_1625, x_1625, x_1625)) + x_1628);
    let x_1630 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1629.x, x_1629.y, x_1629.z, x_1630.w);
    let x_1632 : vec4<f32> = u_xlat8;
    let x_1634 : vec4<f32> = u_xlat8;
    u_xlat45 = dot(vec3<f32>(x_1632.x, x_1632.y, x_1632.z), vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
    let x_1637 : f32 = u_xlat45;
    u_xlat45 = max(x_1637, 1.17549435e-37f);
    let x_1639 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1639);
    let x_1641 : f32 = u_xlat45;
    let x_1643 : vec4<f32> = u_xlat8;
    let x_1645 : vec3<f32> = (vec3<f32>(x_1641, x_1641, x_1641) * vec3<f32>(x_1643.x, x_1643.y, x_1643.z));
    let x_1646 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
    let x_1648 : vec3<f32> = u_xlat14;
    let x_1649 : vec4<f32> = u_xlat8;
    u_xlat45 = dot(x_1648, vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
    let x_1652 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1652, 0.0f, 1.0f);
    let x_1654 : vec3<f32> = u_xlat9;
    let x_1655 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(x_1654, vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
    let x_1658 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1658, 0.0f, 1.0f);
    let x_1660 : f32 = u_xlat45;
    let x_1661 : f32 = u_xlat45;
    u_xlat45 = (x_1660 * x_1661);
    let x_1663 : f32 = u_xlat45;
    let x_1665 : f32 = u_xlat28.x;
    u_xlat45 = ((x_1663 * x_1665) + 1.000010014f);
    let x_1668 : f32 = u_xlat46;
    let x_1669 : f32 = u_xlat46;
    u_xlat46 = (x_1668 * x_1669);
    let x_1671 : f32 = u_xlat45;
    let x_1672 : f32 = u_xlat45;
    u_xlat45 = (x_1671 * x_1672);
    let x_1674 : f32 = u_xlat46;
    u_xlat46 = max(x_1674, 0.100000001f);
    let x_1676 : f32 = u_xlat45;
    let x_1677 : f32 = u_xlat46;
    u_xlat45 = (x_1676 * x_1677);
    let x_1679 : f32 = u_xlat42;
    let x_1680 : f32 = u_xlat45;
    u_xlat45 = (x_1679 * x_1680);
    let x_1682 : f32 = u_xlat43;
    let x_1683 : f32 = u_xlat45;
    u_xlat45 = (x_1682 / x_1683);
    let x_1685 : vec4<f32> = u_xlat0;
    let x_1687 : f32 = u_xlat45;
    let x_1690 : vec3<f32> = u_xlat6;
    let x_1691 : vec3<f32> = ((vec3<f32>(x_1685.x, x_1685.y, x_1685.z) * vec3<f32>(x_1687, x_1687, x_1687)) + x_1690);
    let x_1692 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
    let x_1694 : vec4<f32> = u_xlat8;
    let x_1696 : vec4<f32> = u_xlat10;
    let x_1699 : vec4<f32> = u_xlat7;
    let x_1701 : vec3<f32> = ((vec3<f32>(x_1694.x, x_1694.y, x_1694.z) * vec3<f32>(x_1696.x, x_1696.y, x_1696.z)) + vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
    let x_1702 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);

    continuing {
      let x_1704 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1704 + bitcast<u32>(1i));
    }
  }
  let x_1706 : vec4<f32> = u_xlat4;
  let x_1708 : vec3<f32> = u_xlat5;
  let x_1711 : vec4<f32> = u_xlat2;
  let x_1713 : vec3<f32> = ((vec3<f32>(x_1706.x, x_1706.y, x_1706.z) * vec3<f32>(x_1708.x, x_1708.x, x_1708.x)) + vec3<f32>(x_1711.x, x_1711.y, x_1711.w));
  let x_1714 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
  let x_1718 : vec4<f32> = u_xlat7;
  let x_1720 : vec4<f32> = u_xlat0;
  let x_1722 : vec3<f32> = (vec3<f32>(x_1718.x, x_1718.y, x_1718.z) + vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
  let x_1723 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
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

