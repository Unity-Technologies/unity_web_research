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
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_143 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_576 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_710 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_888 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1002 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlat35 : f32;
  var u_xlatu35 : u32;
  var u_xlati35 : i32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb14 : vec2<bool>;
  var u_xlatb25 : bool;
  var x_525 : f32;
  var u_xlat25 : f32;
  var x_659 : f32;
  var x_670 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlatu5 : u32;
  var u_xlatb16 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati7 : i32;
  var u_xlat39 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu8 : u32;
  var u_xlati19 : i32;
  var u_xlati8 : i32;
  var u_xlati30 : i32;
  var u_xlat9 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlatb31 : vec2<bool>;
  var u_xlat31 : vec2<f32>;
  var x_1323 : f32;
  var x_1336 : f32;
  var u_xlat41 : f32;
  var x_1398 : f32;
  var x_1409 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb11 : bool;
  var x_1556 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat12;
  let x_83 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat12;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat12 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_107;
  let x_110 : bool = u_xlatb1;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat12;
    x_111 = x_114;
  } else {
    let x_116 : vec3<f32> = u_xlat2;
    x_111 = x_116;
  }
  let x_117 : vec3<f32> = x_111;
  u_xlat1 = x_117;
  let x_120 : vec3<f32> = vs_TEXCOORD2;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  u_xlat34 = dot(x_120, x_121);
  let x_123 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_123);
  let x_125 : f32 = u_xlat34;
  let x_127 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_125, x_125, x_125) * x_127);
  let x_129 : vec3<f32> = u_xlat1;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat34 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat34;
  u_xlat34 = max(x_132, 1.17549435e-37f);
  let x_135 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_135);
  let x_138 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec4<f32> = x_143.x_CascadeShadowSplitSpheres0;
  let x_148 : vec3<f32> = (x_138 + -(vec3<f32>(x_145.x, x_145.y, x_145.z)));
  let x_149 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_152 : vec3<f32> = vs_TEXCOORD1;
  let x_154 : vec4<f32> = x_143.x_CascadeShadowSplitSpheres1;
  let x_157 : vec3<f32> = (x_152 + -(vec3<f32>(x_154.x, x_154.y, x_154.z)));
  let x_158 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec3<f32> = vs_TEXCOORD1;
  let x_164 : vec4<f32> = x_143.x_CascadeShadowSplitSpheres2;
  let x_167 : vec3<f32> = (x_161 + -(vec3<f32>(x_164.x, x_164.y, x_164.z)));
  let x_168 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec3<f32> = vs_TEXCOORD1;
  let x_174 : vec4<f32> = x_143.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_171 + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_178 : vec4<f32> = u_xlat3;
  let x_180 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_184 : vec4<f32> = u_xlat4;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : vec4<f32> = u_xlat5;
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec3<f32> = u_xlat6;
  let x_197 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_196, x_197);
  let x_203 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = x_143.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_203 < x_206);
  let x_209 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_209);
  let x_213 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_213);
  let x_217 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_225);
  let x_231 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_231);
  let x_235 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_235);
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) + vec3<f32>(x_240.y, x_240.z, x_240.w));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat3;
  let x_248 : vec3<f32> = max(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_249.x, x_248.x, x_248.y, x_248.z);
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(x_252, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_258 : f32 = u_xlat35;
  u_xlat35 = (-(x_258) + 4.0f);
  let x_263 : f32 = u_xlat35;
  u_xlatu35 = u32(x_263);
  let x_267 : u32 = u_xlatu35;
  u_xlati35 = (bitcast<i32>(x_267) << bitcast<u32>(2i));
  let x_270 : vec3<f32> = vs_TEXCOORD1;
  let x_272 : i32 = u_xlati35;
  let x_275 : i32 = u_xlati35;
  let x_279 : vec4<f32> = x_143.x_MainLightWorldToShadow[((x_272 + 1i) / 4i)][((x_275 + 1i) % 4i)];
  let x_281 : vec3<f32> = (vec3<f32>(x_270.y, x_270.y, x_270.y) * vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : i32 = u_xlati35;
  let x_286 : i32 = u_xlati35;
  let x_289 : vec4<f32> = x_143.x_MainLightWorldToShadow[(x_284 / 4i)][(x_286 % 4i)];
  let x_291 : vec3<f32> = vs_TEXCOORD1;
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : vec3<f32> = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(x_291.x, x_291.x, x_291.x)) + vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : i32 = u_xlati35;
  let x_302 : i32 = u_xlati35;
  let x_306 : vec4<f32> = x_143.x_MainLightWorldToShadow[((x_299 + 2i) / 4i)][((x_302 + 2i) % 4i)];
  let x_308 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : vec4<f32> = u_xlat3;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.z, x_308.z, x_308.z)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat3;
  let x_318 : i32 = u_xlati35;
  let x_321 : i32 = u_xlati35;
  let x_325 : vec4<f32> = x_143.x_MainLightWorldToShadow[((x_318 + 3i) / 4i)][((x_321 + 3i) % 4i)];
  let x_327 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : f32 = vs_TEXCOORD1.y;
  let x_333 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat35 = (x_331 * x_333);
  let x_336 : f32 = x_44.unity_MatrixV[0i].z;
  let x_338 : f32 = vs_TEXCOORD1.x;
  let x_340 : f32 = u_xlat35;
  u_xlat35 = ((x_336 * x_338) + x_340);
  let x_343 : f32 = x_44.unity_MatrixV[2i].z;
  let x_345 : f32 = vs_TEXCOORD1.z;
  let x_347 : f32 = u_xlat35;
  u_xlat35 = ((x_343 * x_345) + x_347);
  let x_349 : f32 = u_xlat35;
  let x_351 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat35 = (x_349 + x_351);
  let x_353 : f32 = u_xlat35;
  let x_357 : f32 = x_44.x_ProjectionParams.y;
  u_xlat35 = (-(x_353) + -(x_357));
  let x_360 : f32 = u_xlat35;
  u_xlat35 = max(x_360, 0.0f);
  let x_362 : f32 = u_xlat35;
  let x_365 : f32 = x_44.unity_FogParams.x;
  u_xlat35 = (x_362 * x_365);
  let x_373 : vec2<f32> = vs_TEXCOORD7;
  let x_375 : f32 = x_44.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_373, x_375);
  u_xlat4 = x_376;
  let x_381 : vec2<f32> = vs_TEXCOORD7;
  let x_383 : f32 = x_44.x_GlobalMipBias.x;
  let x_384 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_381, x_383);
  let x_385 : vec3<f32> = vec3<f32>(x_384.x, x_384.y, x_384.z);
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat4;
  let x_392 : vec3<f32> = (vec3<f32>(x_388.x, x_388.y, x_388.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_393 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_396 : vec3<f32> = u_xlat2;
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(x_396, vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : f32 = u_xlat36;
  u_xlat36 = (x_400 + 0.5f);
  let x_403 : f32 = u_xlat36;
  let x_405 : vec4<f32> = u_xlat5;
  let x_407 : vec3<f32> = (vec3<f32>(x_403, x_403, x_403) * vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_411 : f32 = u_xlat4.w;
  u_xlat36 = max(x_411, 0.0001f);
  let x_414 : vec4<f32> = u_xlat4;
  let x_416 : f32 = u_xlat36;
  let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) / vec3<f32>(x_416, x_416, x_416));
  let x_419 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_423 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_424 : vec2<f32> = vec2<f32>(x_423.x, x_423.y);
  let x_428 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_424.x, x_424.y));
  let x_429 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat5;
  let x_433 : vec4<f32> = hlslcc_FragCoord;
  let x_435 : vec2<f32> = (vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_433.x, x_433.y));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
  let x_439 : f32 = u_xlat5.y;
  let x_442 : f32 = x_44.x_ScaleBiasRt.x;
  let x_445 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_439 * x_442) + x_445);
  let x_447 : f32 = u_xlat36;
  u_xlat5.z = (-(x_447) + 1.0f);
  let x_456 : vec4<f32> = u_xlat5;
  let x_459 : f32 = x_44.x_GlobalMipBias.x;
  let x_460 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_456.x, x_456.z), x_459);
  u_xlat36 = x_460.x;
  let x_463 : f32 = u_xlat36;
  u_xlat37 = (x_463 + -1.0f);
  let x_466 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_467 : f32 = u_xlat37;
  u_xlat37 = ((x_466 * x_467) + 1.0f);
  let x_470 : f32 = u_xlat36;
  u_xlat36 = min(x_470, 1.0f);
  let x_473 : vec4<f32> = u_xlat3;
  let x_474 : vec2<f32> = vec2<f32>(x_473.x, x_473.y);
  let x_476 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_474.x, x_474.y, x_476);
  let x_488 : vec3<f32> = txVec0;
  let x_490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_488.xy, x_488.z);
  u_xlat3.x = x_490;
  let x_494 : f32 = x_143.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_494) + 1.0f);
  let x_499 : f32 = u_xlat3.x;
  let x_501 : f32 = x_143.x_MainLightShadowParams.x;
  let x_504 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_499 * x_501) + x_504);
  let x_511 : f32 = u_xlat3.z;
  u_xlatb14.x = (0.0f >= x_511);
  let x_516 : f32 = u_xlat3.z;
  u_xlatb25 = (x_516 >= 1.0f);
  let x_518 : bool = u_xlatb25;
  let x_520 : bool = u_xlatb14.x;
  u_xlatb14.x = (x_518 | x_520);
  let x_524 : bool = u_xlatb14.x;
  if (x_524) {
    x_525 = 1.0f;
  } else {
    let x_530 : f32 = u_xlat3.x;
    x_525 = x_530;
  }
  let x_531 : f32 = x_525;
  u_xlat3.x = x_531;
  let x_533 : vec3<f32> = vs_TEXCOORD1;
  let x_535 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_537 : vec3<f32> = (x_533 + -(x_535));
  let x_538 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat5;
  let x_542 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_547 : f32 = u_xlat14.x;
  let x_549 : f32 = x_143.x_MainLightShadowParams.z;
  let x_552 : f32 = x_143.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_547 * x_549) + x_552);
  let x_556 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_556, 0.0f, 1.0f);
  let x_561 : f32 = u_xlat3.x;
  u_xlat25 = (-(x_561) + 1.0f);
  let x_565 : f32 = u_xlat14.x;
  let x_566 : f32 = u_xlat25;
  let x_569 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_565 * x_566) + x_569);
  let x_578 : f32 = x_576.x_MainLightCookieTextureFormat;
  u_xlatb14.x = !((x_578 == -1.0f));
  let x_582 : bool = u_xlatb14.x;
  if (x_582) {
    let x_585 : vec3<f32> = vs_TEXCOORD1;
    let x_588 : vec4<f32> = x_576.x_MainLightWorldToLight[1i];
    let x_590 : vec2<f32> = (vec2<f32>(x_585.y, x_585.y) * vec2<f32>(x_588.x, x_588.y));
    let x_591 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_590.x, x_590.y, x_591.z);
    let x_594 : vec4<f32> = x_576.x_MainLightWorldToLight[0i];
    let x_596 : vec3<f32> = vs_TEXCOORD1;
    let x_599 : vec3<f32> = u_xlat14;
    let x_601 : vec2<f32> = ((vec2<f32>(x_594.x, x_594.y) * vec2<f32>(x_596.x, x_596.x)) + vec2<f32>(x_599.x, x_599.y));
    let x_602 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_601.x, x_601.y, x_602.z);
    let x_605 : vec4<f32> = x_576.x_MainLightWorldToLight[2i];
    let x_607 : vec3<f32> = vs_TEXCOORD1;
    let x_610 : vec3<f32> = u_xlat14;
    let x_612 : vec2<f32> = ((vec2<f32>(x_605.x, x_605.y) * vec2<f32>(x_607.z, x_607.z)) + vec2<f32>(x_610.x, x_610.y));
    let x_613 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_612.x, x_612.y, x_613.z);
    let x_615 : vec3<f32> = u_xlat14;
    let x_618 : vec4<f32> = x_576.x_MainLightWorldToLight[3i];
    let x_620 : vec2<f32> = (vec2<f32>(x_615.x, x_615.y) + vec2<f32>(x_618.x, x_618.y));
    let x_621 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_620.x, x_620.y, x_621.z);
    let x_623 : vec3<f32> = u_xlat14;
    let x_627 : vec2<f32> = ((vec2<f32>(x_623.x, x_623.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_628 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_627.x, x_627.y, x_628.z);
    let x_635 : vec3<f32> = u_xlat14;
    let x_638 : f32 = x_44.x_GlobalMipBias.x;
    let x_639 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_635.x, x_635.y), x_638);
    u_xlat5 = x_639;
    let x_641 : f32 = x_576.x_MainLightCookieTextureFormat;
    let x_643 : f32 = x_576.x_MainLightCookieTextureFormat;
    let x_645 : f32 = x_576.x_MainLightCookieTextureFormat;
    let x_647 : f32 = x_576.x_MainLightCookieTextureFormat;
    let x_648 : vec4<f32> = vec4<f32>(x_641, x_643, x_645, x_647);
    let x_655 : vec4<bool> = (vec4<f32>(x_648.x, x_648.y, x_648.z, x_648.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb14 = vec2<bool>(x_655.x, x_655.y);
    let x_658 : bool = u_xlatb14.y;
    if (x_658) {
      let x_663 : f32 = u_xlat5.w;
      x_659 = x_663;
    } else {
      let x_666 : f32 = u_xlat5.x;
      x_659 = x_666;
    }
    let x_667 : f32 = x_659;
    u_xlat25 = x_667;
    let x_669 : bool = u_xlatb14.x;
    if (x_669) {
      let x_673 : vec4<f32> = u_xlat5;
      x_670 = vec3<f32>(x_673.x, x_673.y, x_673.z);
    } else {
      let x_676 : f32 = u_xlat25;
      x_670 = vec3<f32>(x_676, x_676, x_676);
    }
    let x_678 : vec3<f32> = x_670;
    let x_679 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_685 : vec4<f32> = u_xlat5;
  let x_688 : vec4<f32> = x_44.x_MainLightColor;
  let x_690 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) * vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : f32 = u_xlat37;
  let x_695 : vec4<f32> = u_xlat5;
  let x_697 : vec3<f32> = (vec3<f32>(x_693, x_693, x_693) * vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : f32 = u_xlat36;
  let x_702 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec3<f32>(x_700, x_700, x_700) * vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_706 : f32 = u_xlat3.x;
  let x_712 : f32 = x_710.unity_LightData.z;
  u_xlat3.x = (x_706 * x_712);
  let x_715 : vec4<f32> = u_xlat3;
  let x_717 : vec4<f32> = u_xlat5;
  let x_719 : vec3<f32> = (vec3<f32>(x_715.x, x_715.x, x_715.x) * vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec3<f32> = u_xlat2;
  let x_724 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat3.x = dot(x_722, vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_729 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_729, 0.0f, 1.0f);
  let x_732 : vec4<f32> = u_xlat3;
  let x_734 : vec4<f32> = u_xlat4;
  let x_736 : vec3<f32> = (vec3<f32>(x_732.x, x_732.x, x_732.x) * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_740 : f32 = u_xlat0.x;
  u_xlat3.x = ((x_740 * 10.0f) + 1.0f);
  let x_746 : f32 = u_xlat3.x;
  u_xlat3.x = exp2(x_746);
  let x_749 : vec3<f32> = u_xlat1;
  let x_750 : f32 = u_xlat34;
  let x_754 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_749 * vec3<f32>(x_750, x_750, x_750)) + vec3<f32>(x_754.x, x_754.y, x_754.z));
  let x_758 : vec3<f32> = u_xlat6;
  let x_759 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_758, x_759);
  let x_761 : f32 = u_xlat38;
  u_xlat38 = max(x_761, 1.17549435e-37f);
  let x_763 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_763);
  let x_765 : f32 = u_xlat38;
  let x_767 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_765, x_765, x_765) * x_767);
  let x_769 : vec3<f32> = u_xlat2;
  let x_770 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_769, x_770);
  let x_772 : f32 = u_xlat38;
  u_xlat38 = clamp(x_772, 0.0f, 1.0f);
  let x_774 : f32 = u_xlat38;
  u_xlat38 = log2(x_774);
  let x_777 : f32 = u_xlat3.x;
  let x_778 : f32 = u_xlat38;
  u_xlat38 = (x_777 * x_778);
  let x_780 : f32 = u_xlat38;
  u_xlat38 = exp2(x_780);
  let x_782 : f32 = u_xlat38;
  let x_785 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_782, x_782, x_782) * vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat4;
  let x_790 : vec3<f32> = u_xlat6;
  let x_791 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) * x_790);
  let x_792 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec4<f32> = u_xlat5;
  let x_796 : vec4<f32> = u_xlat0;
  let x_799 : vec4<f32> = u_xlat4;
  let x_801 : vec3<f32> = ((vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_796.y, x_796.z, x_796.w)) + vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_805 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_807 : f32 = x_710.unity_LightData.y;
  u_xlat5.x = min(x_805, x_807);
  let x_812 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_812));
  let x_817 : f32 = x_576.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_819 : f32 = x_576.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_821 : f32 = x_576.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_823 : f32 = x_576.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_824 : vec4<f32> = vec4<f32>(x_817, x_819, x_821, x_823);
  let x_830 : vec4<bool> = (vec4<f32>(x_824.x, x_824.y, x_824.z, x_824.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb16 = vec2<bool>(x_830.x, x_830.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_841 : u32 = u_xlatu_loop_1;
    let x_842 : u32 = u_xlatu5;
    if ((x_841 < x_842)) {
    } else {
      break;
    }
    let x_845 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_845 >> 2u);
    let x_848 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_848 & 3u));
    let x_852 : u32 = u_xlatu39;
    let x_855 : vec4<f32> = x_710.unity_LightIndices[bitcast<i32>(x_852)];
    let x_865 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_870 : vec4<u32> = indexable[x_865];
    u_xlat39 = dot(x_855, bitcast<vec4<f32>>(x_870));
    let x_873 : f32 = u_xlat39;
    u_xlatu39 = bitcast<u32>(i32(x_873));
    let x_877 : vec3<f32> = vs_TEXCOORD1;
    let x_889 : u32 = u_xlatu39;
    let x_892 : vec4<f32> = x_888.x_AdditionalLightsPosition[bitcast<i32>(x_889)];
    let x_895 : u32 = u_xlatu39;
    let x_898 : vec4<f32> = x_888.x_AdditionalLightsPosition[bitcast<i32>(x_895)];
    u_xlat7 = ((-(x_877) * vec3<f32>(x_892.w, x_892.w, x_892.w)) + vec3<f32>(x_898.x, x_898.y, x_898.z));
    let x_902 : vec3<f32> = u_xlat7;
    let x_903 : vec3<f32> = u_xlat7;
    u_xlat40 = dot(x_902, x_903);
    let x_905 : f32 = u_xlat40;
    u_xlat40 = max(x_905, 6.10351562e-05f);
    let x_909 : f32 = u_xlat40;
    u_xlat8.x = inverseSqrt(x_909);
    let x_912 : vec3<f32> = u_xlat7;
    let x_913 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_912 * vec3<f32>(x_913.x, x_913.x, x_913.x));
    let x_916 : f32 = u_xlat40;
    u_xlat8.x = (1.0f / x_916);
    let x_919 : f32 = u_xlat40;
    let x_920 : u32 = u_xlatu39;
    let x_923 : f32 = x_888.x_AdditionalLightsAttenuation[bitcast<i32>(x_920)].x;
    u_xlat40 = (x_919 * x_923);
    let x_925 : f32 = u_xlat40;
    let x_927 : f32 = u_xlat40;
    u_xlat40 = ((-(x_925) * x_927) + 1.0f);
    let x_930 : f32 = u_xlat40;
    u_xlat40 = max(x_930, 0.0f);
    let x_932 : f32 = u_xlat40;
    let x_933 : f32 = u_xlat40;
    u_xlat40 = (x_932 * x_933);
    let x_935 : f32 = u_xlat40;
    let x_937 : f32 = u_xlat8.x;
    u_xlat40 = (x_935 * x_937);
    let x_939 : u32 = u_xlatu39;
    let x_942 : vec4<f32> = x_888.x_AdditionalLightsSpotDir[bitcast<i32>(x_939)];
    let x_944 : vec3<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_942.x, x_942.y, x_942.z), x_944);
    let x_948 : f32 = u_xlat8.x;
    let x_949 : u32 = u_xlatu39;
    let x_952 : f32 = x_888.x_AdditionalLightsAttenuation[bitcast<i32>(x_949)].z;
    let x_954 : u32 = u_xlatu39;
    let x_957 : f32 = x_888.x_AdditionalLightsAttenuation[bitcast<i32>(x_954)].w;
    u_xlat8.x = ((x_948 * x_952) + x_957);
    let x_961 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_961, 0.0f, 1.0f);
    let x_965 : f32 = u_xlat8.x;
    let x_967 : f32 = u_xlat8.x;
    u_xlat8.x = (x_965 * x_967);
    let x_970 : f32 = u_xlat40;
    let x_972 : f32 = u_xlat8.x;
    u_xlat40 = (x_970 * x_972);
    let x_975 : u32 = u_xlatu39;
    u_xlatu8 = (x_975 >> 5u);
    let x_978 : u32 = u_xlatu39;
    u_xlati19 = (1i << bitcast<u32>((bitcast<i32>(x_978) & 31i)));
    let x_984 : i32 = u_xlati19;
    let x_986 : u32 = u_xlatu8;
    let x_989 : f32 = x_576.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_986)].el;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_984) & bitcast<u32>(x_989)));
    let x_993 : i32 = u_xlati8;
    if ((x_993 != 0i)) {
      let x_1003 : u32 = u_xlatu39;
      let x_1006 : f32 = x_1002.x_AdditionalLightsLightTypes[bitcast<i32>(x_1003)].el;
      u_xlati8 = i32(x_1006);
      let x_1008 : i32 = u_xlati8;
      u_xlati19 = select(1i, 0i, (x_1008 != 0i));
      let x_1012 : u32 = u_xlatu39;
      u_xlati30 = (bitcast<i32>(x_1012) << bitcast<u32>(2i));
      let x_1015 : i32 = u_xlati19;
      if ((x_1015 != 0i)) {
        let x_1020 : vec3<f32> = vs_TEXCOORD1;
        let x_1022 : i32 = u_xlati30;
        let x_1025 : i32 = u_xlati30;
        let x_1029 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[((x_1022 + 1i) / 4i)][((x_1025 + 1i) % 4i)];
        let x_1031 : vec3<f32> = (vec3<f32>(x_1020.y, x_1020.y, x_1020.y) * vec3<f32>(x_1029.x, x_1029.y, x_1029.w));
        let x_1032 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
        let x_1034 : i32 = u_xlati30;
        let x_1036 : i32 = u_xlati30;
        let x_1039 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[(x_1034 / 4i)][(x_1036 % 4i)];
        let x_1041 : vec3<f32> = vs_TEXCOORD1;
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1046 : vec3<f32> = ((vec3<f32>(x_1039.x, x_1039.y, x_1039.w) * vec3<f32>(x_1041.x, x_1041.x, x_1041.x)) + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
        let x_1047 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
        let x_1049 : i32 = u_xlati30;
        let x_1052 : i32 = u_xlati30;
        let x_1056 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[((x_1049 + 2i) / 4i)][((x_1052 + 2i) % 4i)];
        let x_1058 : vec3<f32> = vs_TEXCOORD1;
        let x_1061 : vec4<f32> = u_xlat9;
        let x_1063 : vec3<f32> = ((vec3<f32>(x_1056.x, x_1056.y, x_1056.w) * vec3<f32>(x_1058.z, x_1058.z, x_1058.z)) + vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
        let x_1064 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
        let x_1066 : vec4<f32> = u_xlat9;
        let x_1068 : i32 = u_xlati30;
        let x_1071 : i32 = u_xlati30;
        let x_1075 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[((x_1068 + 3i) / 4i)][((x_1071 + 3i) % 4i)];
        let x_1077 : vec3<f32> = (vec3<f32>(x_1066.x, x_1066.y, x_1066.z) + vec3<f32>(x_1075.x, x_1075.y, x_1075.w));
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1083 : vec4<f32> = u_xlat9;
        let x_1085 : vec2<f32> = (vec2<f32>(x_1081.x, x_1081.y) / vec2<f32>(x_1083.z, x_1083.z));
        let x_1086 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1085.x, x_1086.y, x_1085.y);
        let x_1088 : vec3<f32> = u_xlat19;
        let x_1091 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1092 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1091.x, x_1092.y, x_1091.y);
        let x_1094 : vec3<f32> = u_xlat19;
        let x_1098 : vec2<f32> = clamp(vec2<f32>(x_1094.x, x_1094.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1099 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1098.x, x_1099.y, x_1098.y);
        let x_1101 : u32 = u_xlatu39;
        let x_1104 : vec4<f32> = x_1002.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1101)];
        let x_1106 : vec3<f32> = u_xlat19;
        let x_1109 : u32 = u_xlatu39;
        let x_1112 : vec4<f32> = x_1002.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1109)];
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(x_1106.x, x_1106.z)) + vec2<f32>(x_1112.z, x_1112.w));
        let x_1115 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1114.x, x_1115.y, x_1114.y);
      } else {
        let x_1119 : i32 = u_xlati8;
        u_xlatb8 = (x_1119 == 1i);
        let x_1121 : bool = u_xlatb8;
        u_xlati8 = select(0i, 1i, x_1121);
        let x_1123 : i32 = u_xlati8;
        if ((x_1123 != 0i)) {
          let x_1127 : vec3<f32> = vs_TEXCOORD1;
          let x_1129 : i32 = u_xlati30;
          let x_1132 : i32 = u_xlati30;
          let x_1136 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[((x_1129 + 1i) / 4i)][((x_1132 + 1i) % 4i)];
          let x_1138 : vec2<f32> = (vec2<f32>(x_1127.y, x_1127.y) * vec2<f32>(x_1136.x, x_1136.y));
          let x_1139 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
          let x_1141 : i32 = u_xlati30;
          let x_1143 : i32 = u_xlati30;
          let x_1146 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[(x_1141 / 4i)][(x_1143 % 4i)];
          let x_1148 : vec3<f32> = vs_TEXCOORD1;
          let x_1151 : vec4<f32> = u_xlat9;
          let x_1153 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1148.x, x_1148.x)) + vec2<f32>(x_1151.x, x_1151.y));
          let x_1154 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
          let x_1156 : i32 = u_xlati30;
          let x_1159 : i32 = u_xlati30;
          let x_1163 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[((x_1156 + 2i) / 4i)][((x_1159 + 2i) % 4i)];
          let x_1165 : vec3<f32> = vs_TEXCOORD1;
          let x_1168 : vec4<f32> = u_xlat9;
          let x_1170 : vec2<f32> = ((vec2<f32>(x_1163.x, x_1163.y) * vec2<f32>(x_1165.z, x_1165.z)) + vec2<f32>(x_1168.x, x_1168.y));
          let x_1171 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
          let x_1173 : vec4<f32> = u_xlat9;
          let x_1175 : i32 = u_xlati30;
          let x_1178 : i32 = u_xlati30;
          let x_1182 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[((x_1175 + 3i) / 4i)][((x_1178 + 3i) % 4i)];
          let x_1184 : vec2<f32> = (vec2<f32>(x_1173.x, x_1173.y) + vec2<f32>(x_1182.x, x_1182.y));
          let x_1185 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
          let x_1187 : vec4<f32> = u_xlat9;
          let x_1190 : vec2<f32> = ((vec2<f32>(x_1187.x, x_1187.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1191 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
          let x_1193 : vec4<f32> = u_xlat9;
          let x_1195 : vec2<f32> = fract(vec2<f32>(x_1193.x, x_1193.y));
          let x_1196 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
          let x_1198 : u32 = u_xlatu39;
          let x_1201 : vec4<f32> = x_1002.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1198)];
          let x_1203 : vec4<f32> = u_xlat9;
          let x_1206 : u32 = u_xlatu39;
          let x_1209 : vec4<f32> = x_1002.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1206)];
          let x_1211 : vec2<f32> = ((vec2<f32>(x_1201.x, x_1201.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1209.z, x_1209.w));
          let x_1212 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1211.x, x_1212.y, x_1211.y);
        } else {
          let x_1215 : vec3<f32> = vs_TEXCOORD1;
          let x_1217 : i32 = u_xlati30;
          let x_1220 : i32 = u_xlati30;
          let x_1224 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[((x_1217 + 1i) / 4i)][((x_1220 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1215.y, x_1215.y, x_1215.y, x_1215.y) * x_1224);
          let x_1226 : i32 = u_xlati30;
          let x_1228 : i32 = u_xlati30;
          let x_1231 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[(x_1226 / 4i)][(x_1228 % 4i)];
          let x_1232 : vec3<f32> = vs_TEXCOORD1;
          let x_1235 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1231 * vec4<f32>(x_1232.x, x_1232.x, x_1232.x, x_1232.x)) + x_1235);
          let x_1237 : i32 = u_xlati30;
          let x_1240 : i32 = u_xlati30;
          let x_1244 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[((x_1237 + 2i) / 4i)][((x_1240 + 2i) % 4i)];
          let x_1245 : vec3<f32> = vs_TEXCOORD1;
          let x_1248 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1244 * vec4<f32>(x_1245.z, x_1245.z, x_1245.z, x_1245.z)) + x_1248);
          let x_1250 : vec4<f32> = u_xlat9;
          let x_1251 : i32 = u_xlati30;
          let x_1254 : i32 = u_xlati30;
          let x_1258 : vec4<f32> = x_1002.x_AdditionalLightsWorldToLights[((x_1251 + 3i) / 4i)][((x_1254 + 3i) % 4i)];
          u_xlat9 = (x_1250 + x_1258);
          let x_1260 : vec4<f32> = u_xlat9;
          let x_1262 : vec4<f32> = u_xlat9;
          let x_1264 : vec3<f32> = (vec3<f32>(x_1260.x, x_1260.y, x_1260.z) / vec3<f32>(x_1262.w, x_1262.w, x_1262.w));
          let x_1265 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
          let x_1267 : vec4<f32> = u_xlat9;
          let x_1269 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_1267.x, x_1267.y, x_1267.z), vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
          let x_1274 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_1274);
          let x_1277 : vec4<f32> = u_xlat8;
          let x_1279 : vec4<f32> = u_xlat9;
          let x_1281 : vec3<f32> = (vec3<f32>(x_1277.x, x_1277.x, x_1277.x) * vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
          let x_1282 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
          let x_1284 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_1284.x, x_1284.y, x_1284.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1291 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_1291, 0.000001f);
          let x_1296 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_1296);
          let x_1300 : vec4<f32> = u_xlat8;
          let x_1302 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1300.x, x_1300.x, x_1300.x) * vec3<f32>(x_1302.z, x_1302.x, x_1302.y));
          let x_1306 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1306);
          let x_1310 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1310, 0.0f, 1.0f);
          let x_1314 : vec3<f32> = u_xlat10;
          let x_1317 : vec4<bool> = (vec4<f32>(x_1314.y, x_1314.z, x_1314.y, x_1314.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb31 = vec2<bool>(x_1317.x, x_1317.y);
          let x_1322 : bool = u_xlatb31.x;
          if (x_1322) {
            let x_1327 : f32 = u_xlat10.x;
            x_1323 = x_1327;
          } else {
            let x_1330 : f32 = u_xlat10.x;
            x_1323 = -(x_1330);
          }
          let x_1332 : f32 = x_1323;
          u_xlat31.x = x_1332;
          let x_1335 : bool = u_xlatb31.y;
          if (x_1335) {
            let x_1340 : f32 = u_xlat10.x;
            x_1336 = x_1340;
          } else {
            let x_1343 : f32 = u_xlat10.x;
            x_1336 = -(x_1343);
          }
          let x_1345 : f32 = x_1336;
          u_xlat31.y = x_1345;
          let x_1347 : vec4<f32> = u_xlat9;
          let x_1349 : vec4<f32> = u_xlat8;
          let x_1352 : vec2<f32> = u_xlat31;
          let x_1353 : vec2<f32> = ((vec2<f32>(x_1347.x, x_1347.y) * vec2<f32>(x_1349.x, x_1349.x)) + x_1352);
          let x_1354 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1353.x, x_1354.y, x_1353.y, x_1354.w);
          let x_1356 : vec4<f32> = u_xlat8;
          let x_1359 : vec2<f32> = ((vec2<f32>(x_1356.x, x_1356.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1360 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1359.x, x_1360.y, x_1359.y, x_1360.w);
          let x_1362 : vec4<f32> = u_xlat8;
          let x_1366 : vec2<f32> = clamp(vec2<f32>(x_1362.x, x_1362.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1367 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1366.x, x_1367.y, x_1366.y, x_1367.w);
          let x_1369 : u32 = u_xlatu39;
          let x_1372 : vec4<f32> = x_1002.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1369)];
          let x_1374 : vec4<f32> = u_xlat8;
          let x_1377 : u32 = u_xlatu39;
          let x_1380 : vec4<f32> = x_1002.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1377)];
          let x_1382 : vec2<f32> = ((vec2<f32>(x_1372.x, x_1372.y) * vec2<f32>(x_1374.x, x_1374.z)) + vec2<f32>(x_1380.z, x_1380.w));
          let x_1383 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1382.x, x_1383.y, x_1382.y);
        }
      }
      let x_1390 : vec3<f32> = u_xlat19;
      let x_1393 : f32 = x_44.x_GlobalMipBias.x;
      let x_1394 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1390.x, x_1390.z), x_1393);
      u_xlat8 = x_1394;
      let x_1397 : bool = u_xlatb16.y;
      if (x_1397) {
        let x_1402 : f32 = u_xlat8.w;
        x_1398 = x_1402;
      } else {
        let x_1405 : f32 = u_xlat8.x;
        x_1398 = x_1405;
      }
      let x_1406 : f32 = x_1398;
      u_xlat41 = x_1406;
      let x_1408 : bool = u_xlatb16.x;
      if (x_1408) {
        let x_1412 : vec4<f32> = u_xlat8;
        x_1409 = vec3<f32>(x_1412.x, x_1412.y, x_1412.z);
      } else {
        let x_1415 : f32 = u_xlat41;
        x_1409 = vec3<f32>(x_1415, x_1415, x_1415);
      }
      let x_1417 : vec3<f32> = x_1409;
      let x_1418 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1424 : vec4<f32> = u_xlat8;
    let x_1426 : u32 = u_xlatu39;
    let x_1429 : vec4<f32> = x_888.x_AdditionalLightsColor[bitcast<i32>(x_1426)];
    let x_1431 : vec3<f32> = (vec3<f32>(x_1424.x, x_1424.y, x_1424.z) * vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
    let x_1432 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1432.w);
    let x_1434 : f32 = u_xlat37;
    let x_1436 : vec4<f32> = u_xlat8;
    let x_1438 : vec3<f32> = (vec3<f32>(x_1434, x_1434, x_1434) * vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1439 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
    let x_1441 : f32 = u_xlat40;
    let x_1443 : vec4<f32> = u_xlat8;
    let x_1445 : vec3<f32> = (vec3<f32>(x_1441, x_1441, x_1441) * vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
    let x_1446 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
    let x_1448 : vec3<f32> = u_xlat2;
    let x_1449 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_1448, x_1449);
    let x_1451 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1451, 0.0f, 1.0f);
    let x_1453 : f32 = u_xlat39;
    let x_1455 : vec4<f32> = u_xlat8;
    let x_1457 : vec3<f32> = (vec3<f32>(x_1453, x_1453, x_1453) * vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
    let x_1458 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
    let x_1460 : vec3<f32> = u_xlat1;
    let x_1461 : f32 = u_xlat34;
    let x_1464 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1460 * vec3<f32>(x_1461, x_1461, x_1461)) + x_1464);
    let x_1466 : vec3<f32> = u_xlat7;
    let x_1467 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_1466, x_1467);
    let x_1469 : f32 = u_xlat39;
    u_xlat39 = max(x_1469, 1.17549435e-37f);
    let x_1471 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1471);
    let x_1473 : f32 = u_xlat39;
    let x_1475 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1473, x_1473, x_1473) * x_1475);
    let x_1477 : vec3<f32> = u_xlat2;
    let x_1478 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_1477, x_1478);
    let x_1480 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1480, 0.0f, 1.0f);
    let x_1482 : f32 = u_xlat39;
    u_xlat39 = log2(x_1482);
    let x_1485 : f32 = u_xlat3.x;
    let x_1486 : f32 = u_xlat39;
    u_xlat39 = (x_1485 * x_1486);
    let x_1488 : f32 = u_xlat39;
    u_xlat39 = exp2(x_1488);
    let x_1490 : f32 = u_xlat39;
    let x_1493 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1490, x_1490, x_1490) * vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
    let x_1496 : vec3<f32> = u_xlat7;
    let x_1497 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1496 * vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
    let x_1500 : vec4<f32> = u_xlat9;
    let x_1502 : vec4<f32> = u_xlat0;
    let x_1505 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1500.x, x_1500.y, x_1500.z) * vec3<f32>(x_1502.y, x_1502.z, x_1502.w)) + x_1505);
    let x_1507 : vec3<f32> = u_xlat6;
    let x_1508 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1507 + x_1508);

    continuing {
      let x_1510 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1510 + bitcast<u32>(1i));
    }
  }
  let x_1513 : vec3<f32> = u_xlat14;
  let x_1514 : vec4<f32> = u_xlat0;
  let x_1517 : vec4<f32> = u_xlat4;
  u_xlat11 = ((x_1513 * vec3<f32>(x_1514.y, x_1514.z, x_1514.w)) + vec3<f32>(x_1517.x, x_1517.y, x_1517.z));
  let x_1520 : vec3<f32> = u_xlat6;
  let x_1521 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_1520 + x_1521);
  let x_1523 : f32 = u_xlat35;
  let x_1524 : f32 = u_xlat35;
  u_xlat1.x = (x_1523 * -(x_1524));
  let x_1529 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1529);
  let x_1532 : vec3<f32> = u_xlat11;
  let x_1535 : vec4<f32> = x_44.unity_FogColor;
  u_xlat11 = (x_1532 + -(vec3<f32>(x_1535.x, x_1535.y, x_1535.z)));
  let x_1541 : vec3<f32> = u_xlat1;
  let x_1543 : vec3<f32> = u_xlat11;
  let x_1546 : vec4<f32> = x_44.unity_FogColor;
  let x_1548 : vec3<f32> = ((vec3<f32>(x_1541.x, x_1541.x, x_1541.x) * x_1543) + vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
  let x_1549 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
  let x_1553 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1553 == 1.0f);
  let x_1555 : bool = u_xlatb11;
  if (x_1555) {
    let x_1560 : f32 = u_xlat0.x;
    x_1556 = x_1560;
  } else {
    x_1556 = 1.0f;
  }
  let x_1562 : f32 = x_1556;
  SV_Target0.w = x_1562;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

