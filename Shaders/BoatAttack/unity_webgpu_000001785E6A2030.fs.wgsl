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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_143 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_536 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_671 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_849 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_963 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_485 : f32;
  var u_xlat25 : f32;
  var x_620 : f32;
  var x_631 : vec3<f32>;
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
  var x_1284 : f32;
  var x_1297 : f32;
  var u_xlat41 : f32;
  var x_1359 : f32;
  var x_1370 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb11 : bool;
  var x_1517 : f32;
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
  let x_376 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_373, x_375);
  let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.z);
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_382 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_383 : vec2<f32> = vec2<f32>(x_382.x, x_382.y);
  let x_387 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_383.x, x_383.y));
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
  let x_390 : vec4<f32> = u_xlat5;
  let x_392 : vec4<f32> = hlslcc_FragCoord;
  let x_394 : vec2<f32> = (vec2<f32>(x_390.x, x_390.y) * vec2<f32>(x_392.x, x_392.y));
  let x_395 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
  let x_399 : f32 = u_xlat5.y;
  let x_402 : f32 = x_44.x_ScaleBiasRt.x;
  let x_405 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat36 = ((x_399 * x_402) + x_405);
  let x_407 : f32 = u_xlat36;
  u_xlat5.z = (-(x_407) + 1.0f);
  let x_416 : vec4<f32> = u_xlat5;
  let x_419 : f32 = x_44.x_GlobalMipBias.x;
  let x_420 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_416.x, x_416.z), x_419);
  u_xlat36 = x_420.x;
  let x_423 : f32 = u_xlat36;
  u_xlat37 = (x_423 + -1.0f);
  let x_426 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_427 : f32 = u_xlat37;
  u_xlat37 = ((x_426 * x_427) + 1.0f);
  let x_430 : f32 = u_xlat36;
  u_xlat36 = min(x_430, 1.0f);
  let x_433 : vec4<f32> = u_xlat3;
  let x_434 : vec2<f32> = vec2<f32>(x_433.x, x_433.y);
  let x_436 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_434.x, x_434.y, x_436);
  let x_448 : vec3<f32> = txVec0;
  let x_450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_448.xy, x_448.z);
  u_xlat3.x = x_450;
  let x_454 : f32 = x_143.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_454) + 1.0f);
  let x_459 : f32 = u_xlat3.x;
  let x_461 : f32 = x_143.x_MainLightShadowParams.x;
  let x_464 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_459 * x_461) + x_464);
  let x_471 : f32 = u_xlat3.z;
  u_xlatb14.x = (0.0f >= x_471);
  let x_476 : f32 = u_xlat3.z;
  u_xlatb25 = (x_476 >= 1.0f);
  let x_478 : bool = u_xlatb25;
  let x_480 : bool = u_xlatb14.x;
  u_xlatb14.x = (x_478 | x_480);
  let x_484 : bool = u_xlatb14.x;
  if (x_484) {
    x_485 = 1.0f;
  } else {
    let x_490 : f32 = u_xlat3.x;
    x_485 = x_490;
  }
  let x_491 : f32 = x_485;
  u_xlat3.x = x_491;
  let x_493 : vec3<f32> = vs_TEXCOORD1;
  let x_495 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_497 : vec3<f32> = (x_493 + -(x_495));
  let x_498 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat5;
  let x_502 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(vec3<f32>(x_500.x, x_500.y, x_500.z), vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_507 : f32 = u_xlat14.x;
  let x_509 : f32 = x_143.x_MainLightShadowParams.z;
  let x_512 : f32 = x_143.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_507 * x_509) + x_512);
  let x_516 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_516, 0.0f, 1.0f);
  let x_521 : f32 = u_xlat3.x;
  u_xlat25 = (-(x_521) + 1.0f);
  let x_525 : f32 = u_xlat14.x;
  let x_526 : f32 = u_xlat25;
  let x_529 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_525 * x_526) + x_529);
  let x_538 : f32 = x_536.x_MainLightCookieTextureFormat;
  u_xlatb14.x = !((x_538 == -1.0f));
  let x_542 : bool = u_xlatb14.x;
  if (x_542) {
    let x_545 : vec3<f32> = vs_TEXCOORD1;
    let x_548 : vec4<f32> = x_536.x_MainLightWorldToLight[1i];
    let x_550 : vec2<f32> = (vec2<f32>(x_545.y, x_545.y) * vec2<f32>(x_548.x, x_548.y));
    let x_551 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_550.x, x_550.y, x_551.z);
    let x_554 : vec4<f32> = x_536.x_MainLightWorldToLight[0i];
    let x_556 : vec3<f32> = vs_TEXCOORD1;
    let x_559 : vec3<f32> = u_xlat14;
    let x_561 : vec2<f32> = ((vec2<f32>(x_554.x, x_554.y) * vec2<f32>(x_556.x, x_556.x)) + vec2<f32>(x_559.x, x_559.y));
    let x_562 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_561.x, x_561.y, x_562.z);
    let x_565 : vec4<f32> = x_536.x_MainLightWorldToLight[2i];
    let x_567 : vec3<f32> = vs_TEXCOORD1;
    let x_570 : vec3<f32> = u_xlat14;
    let x_572 : vec2<f32> = ((vec2<f32>(x_565.x, x_565.y) * vec2<f32>(x_567.z, x_567.z)) + vec2<f32>(x_570.x, x_570.y));
    let x_573 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_572.x, x_572.y, x_573.z);
    let x_575 : vec3<f32> = u_xlat14;
    let x_578 : vec4<f32> = x_536.x_MainLightWorldToLight[3i];
    let x_580 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) + vec2<f32>(x_578.x, x_578.y));
    let x_581 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_580.x, x_580.y, x_581.z);
    let x_583 : vec3<f32> = u_xlat14;
    let x_588 : vec2<f32> = ((vec2<f32>(x_583.x, x_583.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_589 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_588.x, x_588.y, x_589.z);
    let x_596 : vec3<f32> = u_xlat14;
    let x_599 : f32 = x_44.x_GlobalMipBias.x;
    let x_600 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_596.x, x_596.y), x_599);
    u_xlat5 = x_600;
    let x_602 : f32 = x_536.x_MainLightCookieTextureFormat;
    let x_604 : f32 = x_536.x_MainLightCookieTextureFormat;
    let x_606 : f32 = x_536.x_MainLightCookieTextureFormat;
    let x_608 : f32 = x_536.x_MainLightCookieTextureFormat;
    let x_609 : vec4<f32> = vec4<f32>(x_602, x_604, x_606, x_608);
    let x_616 : vec4<bool> = (vec4<f32>(x_609.x, x_609.y, x_609.z, x_609.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb14 = vec2<bool>(x_616.x, x_616.y);
    let x_619 : bool = u_xlatb14.y;
    if (x_619) {
      let x_624 : f32 = u_xlat5.w;
      x_620 = x_624;
    } else {
      let x_627 : f32 = u_xlat5.x;
      x_620 = x_627;
    }
    let x_628 : f32 = x_620;
    u_xlat25 = x_628;
    let x_630 : bool = u_xlatb14.x;
    if (x_630) {
      let x_634 : vec4<f32> = u_xlat5;
      x_631 = vec3<f32>(x_634.x, x_634.y, x_634.z);
    } else {
      let x_637 : f32 = u_xlat25;
      x_631 = vec3<f32>(x_637, x_637, x_637);
    }
    let x_639 : vec3<f32> = x_631;
    let x_640 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_646 : vec4<f32> = u_xlat5;
  let x_649 : vec4<f32> = x_44.x_MainLightColor;
  let x_651 : vec3<f32> = (vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : f32 = u_xlat37;
  let x_656 : vec4<f32> = u_xlat5;
  let x_658 : vec3<f32> = (vec3<f32>(x_654, x_654, x_654) * vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : f32 = u_xlat36;
  let x_663 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec3<f32>(x_661, x_661, x_661) * vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_667 : f32 = u_xlat3.x;
  let x_673 : f32 = x_671.unity_LightData.z;
  u_xlat3.x = (x_667 * x_673);
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : vec4<f32> = u_xlat5;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.x, x_676.x) * vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec3<f32> = u_xlat2;
  let x_685 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat3.x = dot(x_683, vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_690 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_690, 0.0f, 1.0f);
  let x_693 : vec4<f32> = u_xlat3;
  let x_695 : vec4<f32> = u_xlat4;
  let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.x, x_693.x) * vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_701 : f32 = u_xlat0.x;
  u_xlat3.x = ((x_701 * 10.0f) + 1.0f);
  let x_707 : f32 = u_xlat3.x;
  u_xlat3.x = exp2(x_707);
  let x_710 : vec3<f32> = u_xlat1;
  let x_711 : f32 = u_xlat34;
  let x_715 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_710 * vec3<f32>(x_711, x_711, x_711)) + vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_719 : vec3<f32> = u_xlat6;
  let x_720 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_719, x_720);
  let x_722 : f32 = u_xlat38;
  u_xlat38 = max(x_722, 1.17549435e-37f);
  let x_724 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_724);
  let x_726 : f32 = u_xlat38;
  let x_728 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_726, x_726, x_726) * x_728);
  let x_730 : vec3<f32> = u_xlat2;
  let x_731 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_730, x_731);
  let x_733 : f32 = u_xlat38;
  u_xlat38 = clamp(x_733, 0.0f, 1.0f);
  let x_735 : f32 = u_xlat38;
  u_xlat38 = log2(x_735);
  let x_738 : f32 = u_xlat3.x;
  let x_739 : f32 = u_xlat38;
  u_xlat38 = (x_738 * x_739);
  let x_741 : f32 = u_xlat38;
  u_xlat38 = exp2(x_741);
  let x_743 : f32 = u_xlat38;
  let x_746 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_743, x_743, x_743) * vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat4;
  let x_751 : vec3<f32> = u_xlat6;
  let x_752 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) * x_751);
  let x_753 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat5;
  let x_757 : vec4<f32> = u_xlat0;
  let x_760 : vec4<f32> = u_xlat4;
  let x_762 : vec3<f32> = ((vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_757.y, x_757.z, x_757.w)) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_766 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_768 : f32 = x_671.unity_LightData.y;
  u_xlat5.x = min(x_766, x_768);
  let x_773 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_773));
  let x_778 : f32 = x_536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_780 : f32 = x_536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_782 : f32 = x_536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_784 : f32 = x_536.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_785 : vec4<f32> = vec4<f32>(x_778, x_780, x_782, x_784);
  let x_791 : vec4<bool> = (vec4<f32>(x_785.x, x_785.y, x_785.z, x_785.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb16 = vec2<bool>(x_791.x, x_791.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_802 : u32 = u_xlatu_loop_1;
    let x_803 : u32 = u_xlatu5;
    if ((x_802 < x_803)) {
    } else {
      break;
    }
    let x_806 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_806 >> 2u);
    let x_809 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_809 & 3u));
    let x_813 : u32 = u_xlatu39;
    let x_816 : vec4<f32> = x_671.unity_LightIndices[bitcast<i32>(x_813)];
    let x_826 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_831 : vec4<u32> = indexable[x_826];
    u_xlat39 = dot(x_816, bitcast<vec4<f32>>(x_831));
    let x_834 : f32 = u_xlat39;
    u_xlatu39 = bitcast<u32>(i32(x_834));
    let x_838 : vec3<f32> = vs_TEXCOORD1;
    let x_850 : u32 = u_xlatu39;
    let x_853 : vec4<f32> = x_849.x_AdditionalLightsPosition[bitcast<i32>(x_850)];
    let x_856 : u32 = u_xlatu39;
    let x_859 : vec4<f32> = x_849.x_AdditionalLightsPosition[bitcast<i32>(x_856)];
    u_xlat7 = ((-(x_838) * vec3<f32>(x_853.w, x_853.w, x_853.w)) + vec3<f32>(x_859.x, x_859.y, x_859.z));
    let x_863 : vec3<f32> = u_xlat7;
    let x_864 : vec3<f32> = u_xlat7;
    u_xlat40 = dot(x_863, x_864);
    let x_866 : f32 = u_xlat40;
    u_xlat40 = max(x_866, 6.10351562e-05f);
    let x_870 : f32 = u_xlat40;
    u_xlat8.x = inverseSqrt(x_870);
    let x_873 : vec3<f32> = u_xlat7;
    let x_874 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_873 * vec3<f32>(x_874.x, x_874.x, x_874.x));
    let x_877 : f32 = u_xlat40;
    u_xlat8.x = (1.0f / x_877);
    let x_880 : f32 = u_xlat40;
    let x_881 : u32 = u_xlatu39;
    let x_884 : f32 = x_849.x_AdditionalLightsAttenuation[bitcast<i32>(x_881)].x;
    u_xlat40 = (x_880 * x_884);
    let x_886 : f32 = u_xlat40;
    let x_888 : f32 = u_xlat40;
    u_xlat40 = ((-(x_886) * x_888) + 1.0f);
    let x_891 : f32 = u_xlat40;
    u_xlat40 = max(x_891, 0.0f);
    let x_893 : f32 = u_xlat40;
    let x_894 : f32 = u_xlat40;
    u_xlat40 = (x_893 * x_894);
    let x_896 : f32 = u_xlat40;
    let x_898 : f32 = u_xlat8.x;
    u_xlat40 = (x_896 * x_898);
    let x_900 : u32 = u_xlatu39;
    let x_903 : vec4<f32> = x_849.x_AdditionalLightsSpotDir[bitcast<i32>(x_900)];
    let x_905 : vec3<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_903.x, x_903.y, x_903.z), x_905);
    let x_909 : f32 = u_xlat8.x;
    let x_910 : u32 = u_xlatu39;
    let x_913 : f32 = x_849.x_AdditionalLightsAttenuation[bitcast<i32>(x_910)].z;
    let x_915 : u32 = u_xlatu39;
    let x_918 : f32 = x_849.x_AdditionalLightsAttenuation[bitcast<i32>(x_915)].w;
    u_xlat8.x = ((x_909 * x_913) + x_918);
    let x_922 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_922, 0.0f, 1.0f);
    let x_926 : f32 = u_xlat8.x;
    let x_928 : f32 = u_xlat8.x;
    u_xlat8.x = (x_926 * x_928);
    let x_931 : f32 = u_xlat40;
    let x_933 : f32 = u_xlat8.x;
    u_xlat40 = (x_931 * x_933);
    let x_936 : u32 = u_xlatu39;
    u_xlatu8 = (x_936 >> 5u);
    let x_939 : u32 = u_xlatu39;
    u_xlati19 = (1i << bitcast<u32>((bitcast<i32>(x_939) & 31i)));
    let x_945 : i32 = u_xlati19;
    let x_947 : u32 = u_xlatu8;
    let x_950 : f32 = x_536.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_947)].el;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_945) & bitcast<u32>(x_950)));
    let x_954 : i32 = u_xlati8;
    if ((x_954 != 0i)) {
      let x_964 : u32 = u_xlatu39;
      let x_967 : f32 = x_963.x_AdditionalLightsLightTypes[bitcast<i32>(x_964)].el;
      u_xlati8 = i32(x_967);
      let x_969 : i32 = u_xlati8;
      u_xlati19 = select(1i, 0i, (x_969 != 0i));
      let x_973 : u32 = u_xlatu39;
      u_xlati30 = (bitcast<i32>(x_973) << bitcast<u32>(2i));
      let x_976 : i32 = u_xlati19;
      if ((x_976 != 0i)) {
        let x_981 : vec3<f32> = vs_TEXCOORD1;
        let x_983 : i32 = u_xlati30;
        let x_986 : i32 = u_xlati30;
        let x_990 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_983 + 1i) / 4i)][((x_986 + 1i) % 4i)];
        let x_992 : vec3<f32> = (vec3<f32>(x_981.y, x_981.y, x_981.y) * vec3<f32>(x_990.x, x_990.y, x_990.w));
        let x_993 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
        let x_995 : i32 = u_xlati30;
        let x_997 : i32 = u_xlati30;
        let x_1000 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[(x_995 / 4i)][(x_997 % 4i)];
        let x_1002 : vec3<f32> = vs_TEXCOORD1;
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1007 : vec3<f32> = ((vec3<f32>(x_1000.x, x_1000.y, x_1000.w) * vec3<f32>(x_1002.x, x_1002.x, x_1002.x)) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1010 : i32 = u_xlati30;
        let x_1013 : i32 = u_xlati30;
        let x_1017 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1010 + 2i) / 4i)][((x_1013 + 2i) % 4i)];
        let x_1019 : vec3<f32> = vs_TEXCOORD1;
        let x_1022 : vec4<f32> = u_xlat9;
        let x_1024 : vec3<f32> = ((vec3<f32>(x_1017.x, x_1017.y, x_1017.w) * vec3<f32>(x_1019.z, x_1019.z, x_1019.z)) + vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
        let x_1025 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1029 : i32 = u_xlati30;
        let x_1032 : i32 = u_xlati30;
        let x_1036 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1029 + 3i) / 4i)][((x_1032 + 3i) % 4i)];
        let x_1038 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) + vec3<f32>(x_1036.x, x_1036.y, x_1036.w));
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1046 : vec2<f32> = (vec2<f32>(x_1042.x, x_1042.y) / vec2<f32>(x_1044.z, x_1044.z));
        let x_1047 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1046.x, x_1047.y, x_1046.y);
        let x_1049 : vec3<f32> = u_xlat19;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1053 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1052.x, x_1053.y, x_1052.y);
        let x_1055 : vec3<f32> = u_xlat19;
        let x_1059 : vec2<f32> = clamp(vec2<f32>(x_1055.x, x_1055.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1060 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1059.x, x_1060.y, x_1059.y);
        let x_1062 : u32 = u_xlatu39;
        let x_1065 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1062)];
        let x_1067 : vec3<f32> = u_xlat19;
        let x_1070 : u32 = u_xlatu39;
        let x_1073 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1070)];
        let x_1075 : vec2<f32> = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1067.x, x_1067.z)) + vec2<f32>(x_1073.z, x_1073.w));
        let x_1076 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1075.x, x_1076.y, x_1075.y);
      } else {
        let x_1080 : i32 = u_xlati8;
        u_xlatb8 = (x_1080 == 1i);
        let x_1082 : bool = u_xlatb8;
        u_xlati8 = select(0i, 1i, x_1082);
        let x_1084 : i32 = u_xlati8;
        if ((x_1084 != 0i)) {
          let x_1088 : vec3<f32> = vs_TEXCOORD1;
          let x_1090 : i32 = u_xlati30;
          let x_1093 : i32 = u_xlati30;
          let x_1097 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1090 + 1i) / 4i)][((x_1093 + 1i) % 4i)];
          let x_1099 : vec2<f32> = (vec2<f32>(x_1088.y, x_1088.y) * vec2<f32>(x_1097.x, x_1097.y));
          let x_1100 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
          let x_1102 : i32 = u_xlati30;
          let x_1104 : i32 = u_xlati30;
          let x_1107 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[(x_1102 / 4i)][(x_1104 % 4i)];
          let x_1109 : vec3<f32> = vs_TEXCOORD1;
          let x_1112 : vec4<f32> = u_xlat9;
          let x_1114 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(x_1109.x, x_1109.x)) + vec2<f32>(x_1112.x, x_1112.y));
          let x_1115 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
          let x_1117 : i32 = u_xlati30;
          let x_1120 : i32 = u_xlati30;
          let x_1124 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1117 + 2i) / 4i)][((x_1120 + 2i) % 4i)];
          let x_1126 : vec3<f32> = vs_TEXCOORD1;
          let x_1129 : vec4<f32> = u_xlat9;
          let x_1131 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(x_1126.z, x_1126.z)) + vec2<f32>(x_1129.x, x_1129.y));
          let x_1132 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
          let x_1134 : vec4<f32> = u_xlat9;
          let x_1136 : i32 = u_xlati30;
          let x_1139 : i32 = u_xlati30;
          let x_1143 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1136 + 3i) / 4i)][((x_1139 + 3i) % 4i)];
          let x_1145 : vec2<f32> = (vec2<f32>(x_1134.x, x_1134.y) + vec2<f32>(x_1143.x, x_1143.y));
          let x_1146 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
          let x_1148 : vec4<f32> = u_xlat9;
          let x_1151 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1152 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
          let x_1154 : vec4<f32> = u_xlat9;
          let x_1156 : vec2<f32> = fract(vec2<f32>(x_1154.x, x_1154.y));
          let x_1157 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1157.w);
          let x_1159 : u32 = u_xlatu39;
          let x_1162 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1159)];
          let x_1164 : vec4<f32> = u_xlat9;
          let x_1167 : u32 = u_xlatu39;
          let x_1170 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1167)];
          let x_1172 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1170.z, x_1170.w));
          let x_1173 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1172.x, x_1173.y, x_1172.y);
        } else {
          let x_1176 : vec3<f32> = vs_TEXCOORD1;
          let x_1178 : i32 = u_xlati30;
          let x_1181 : i32 = u_xlati30;
          let x_1185 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1178 + 1i) / 4i)][((x_1181 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1176.y, x_1176.y, x_1176.y, x_1176.y) * x_1185);
          let x_1187 : i32 = u_xlati30;
          let x_1189 : i32 = u_xlati30;
          let x_1192 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[(x_1187 / 4i)][(x_1189 % 4i)];
          let x_1193 : vec3<f32> = vs_TEXCOORD1;
          let x_1196 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1192 * vec4<f32>(x_1193.x, x_1193.x, x_1193.x, x_1193.x)) + x_1196);
          let x_1198 : i32 = u_xlati30;
          let x_1201 : i32 = u_xlati30;
          let x_1205 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1198 + 2i) / 4i)][((x_1201 + 2i) % 4i)];
          let x_1206 : vec3<f32> = vs_TEXCOORD1;
          let x_1209 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1205 * vec4<f32>(x_1206.z, x_1206.z, x_1206.z, x_1206.z)) + x_1209);
          let x_1211 : vec4<f32> = u_xlat9;
          let x_1212 : i32 = u_xlati30;
          let x_1215 : i32 = u_xlati30;
          let x_1219 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1212 + 3i) / 4i)][((x_1215 + 3i) % 4i)];
          u_xlat9 = (x_1211 + x_1219);
          let x_1221 : vec4<f32> = u_xlat9;
          let x_1223 : vec4<f32> = u_xlat9;
          let x_1225 : vec3<f32> = (vec3<f32>(x_1221.x, x_1221.y, x_1221.z) / vec3<f32>(x_1223.w, x_1223.w, x_1223.w));
          let x_1226 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
          let x_1228 : vec4<f32> = u_xlat9;
          let x_1230 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_1228.x, x_1228.y, x_1228.z), vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
          let x_1235 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_1235);
          let x_1238 : vec4<f32> = u_xlat8;
          let x_1240 : vec4<f32> = u_xlat9;
          let x_1242 : vec3<f32> = (vec3<f32>(x_1238.x, x_1238.x, x_1238.x) * vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
          let x_1243 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
          let x_1245 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_1245.x, x_1245.y, x_1245.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1252 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_1252, 0.000001f);
          let x_1257 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_1257);
          let x_1261 : vec4<f32> = u_xlat8;
          let x_1263 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1261.x, x_1261.x, x_1261.x) * vec3<f32>(x_1263.z, x_1263.x, x_1263.y));
          let x_1267 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1267);
          let x_1271 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1271, 0.0f, 1.0f);
          let x_1275 : vec3<f32> = u_xlat10;
          let x_1278 : vec4<bool> = (vec4<f32>(x_1275.y, x_1275.z, x_1275.y, x_1275.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb31 = vec2<bool>(x_1278.x, x_1278.y);
          let x_1283 : bool = u_xlatb31.x;
          if (x_1283) {
            let x_1288 : f32 = u_xlat10.x;
            x_1284 = x_1288;
          } else {
            let x_1291 : f32 = u_xlat10.x;
            x_1284 = -(x_1291);
          }
          let x_1293 : f32 = x_1284;
          u_xlat31.x = x_1293;
          let x_1296 : bool = u_xlatb31.y;
          if (x_1296) {
            let x_1301 : f32 = u_xlat10.x;
            x_1297 = x_1301;
          } else {
            let x_1304 : f32 = u_xlat10.x;
            x_1297 = -(x_1304);
          }
          let x_1306 : f32 = x_1297;
          u_xlat31.y = x_1306;
          let x_1308 : vec4<f32> = u_xlat9;
          let x_1310 : vec4<f32> = u_xlat8;
          let x_1313 : vec2<f32> = u_xlat31;
          let x_1314 : vec2<f32> = ((vec2<f32>(x_1308.x, x_1308.y) * vec2<f32>(x_1310.x, x_1310.x)) + x_1313);
          let x_1315 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1314.x, x_1315.y, x_1314.y, x_1315.w);
          let x_1317 : vec4<f32> = u_xlat8;
          let x_1320 : vec2<f32> = ((vec2<f32>(x_1317.x, x_1317.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1321 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1320.x, x_1321.y, x_1320.y, x_1321.w);
          let x_1323 : vec4<f32> = u_xlat8;
          let x_1327 : vec2<f32> = clamp(vec2<f32>(x_1323.x, x_1323.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1328 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1327.x, x_1328.y, x_1327.y, x_1328.w);
          let x_1330 : u32 = u_xlatu39;
          let x_1333 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1330)];
          let x_1335 : vec4<f32> = u_xlat8;
          let x_1338 : u32 = u_xlatu39;
          let x_1341 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1338)];
          let x_1343 : vec2<f32> = ((vec2<f32>(x_1333.x, x_1333.y) * vec2<f32>(x_1335.x, x_1335.z)) + vec2<f32>(x_1341.z, x_1341.w));
          let x_1344 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1343.x, x_1344.y, x_1343.y);
        }
      }
      let x_1351 : vec3<f32> = u_xlat19;
      let x_1354 : f32 = x_44.x_GlobalMipBias.x;
      let x_1355 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1351.x, x_1351.z), x_1354);
      u_xlat8 = x_1355;
      let x_1358 : bool = u_xlatb16.y;
      if (x_1358) {
        let x_1363 : f32 = u_xlat8.w;
        x_1359 = x_1363;
      } else {
        let x_1366 : f32 = u_xlat8.x;
        x_1359 = x_1366;
      }
      let x_1367 : f32 = x_1359;
      u_xlat41 = x_1367;
      let x_1369 : bool = u_xlatb16.x;
      if (x_1369) {
        let x_1373 : vec4<f32> = u_xlat8;
        x_1370 = vec3<f32>(x_1373.x, x_1373.y, x_1373.z);
      } else {
        let x_1376 : f32 = u_xlat41;
        x_1370 = vec3<f32>(x_1376, x_1376, x_1376);
      }
      let x_1378 : vec3<f32> = x_1370;
      let x_1379 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1385 : vec4<f32> = u_xlat8;
    let x_1387 : u32 = u_xlatu39;
    let x_1390 : vec4<f32> = x_849.x_AdditionalLightsColor[bitcast<i32>(x_1387)];
    let x_1392 : vec3<f32> = (vec3<f32>(x_1385.x, x_1385.y, x_1385.z) * vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
    let x_1393 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
    let x_1395 : f32 = u_xlat37;
    let x_1397 : vec4<f32> = u_xlat8;
    let x_1399 : vec3<f32> = (vec3<f32>(x_1395, x_1395, x_1395) * vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
    let x_1400 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
    let x_1402 : f32 = u_xlat40;
    let x_1404 : vec4<f32> = u_xlat8;
    let x_1406 : vec3<f32> = (vec3<f32>(x_1402, x_1402, x_1402) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
    let x_1407 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
    let x_1409 : vec3<f32> = u_xlat2;
    let x_1410 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_1409, x_1410);
    let x_1412 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1412, 0.0f, 1.0f);
    let x_1414 : f32 = u_xlat39;
    let x_1416 : vec4<f32> = u_xlat8;
    let x_1418 : vec3<f32> = (vec3<f32>(x_1414, x_1414, x_1414) * vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
    let x_1419 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
    let x_1421 : vec3<f32> = u_xlat1;
    let x_1422 : f32 = u_xlat34;
    let x_1425 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1421 * vec3<f32>(x_1422, x_1422, x_1422)) + x_1425);
    let x_1427 : vec3<f32> = u_xlat7;
    let x_1428 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_1427, x_1428);
    let x_1430 : f32 = u_xlat39;
    u_xlat39 = max(x_1430, 1.17549435e-37f);
    let x_1432 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1432);
    let x_1434 : f32 = u_xlat39;
    let x_1436 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1434, x_1434, x_1434) * x_1436);
    let x_1438 : vec3<f32> = u_xlat2;
    let x_1439 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_1438, x_1439);
    let x_1441 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1441, 0.0f, 1.0f);
    let x_1443 : f32 = u_xlat39;
    u_xlat39 = log2(x_1443);
    let x_1446 : f32 = u_xlat3.x;
    let x_1447 : f32 = u_xlat39;
    u_xlat39 = (x_1446 * x_1447);
    let x_1449 : f32 = u_xlat39;
    u_xlat39 = exp2(x_1449);
    let x_1451 : f32 = u_xlat39;
    let x_1454 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1451, x_1451, x_1451) * vec3<f32>(x_1454.x, x_1454.y, x_1454.z));
    let x_1457 : vec3<f32> = u_xlat7;
    let x_1458 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1457 * vec3<f32>(x_1458.x, x_1458.y, x_1458.z));
    let x_1461 : vec4<f32> = u_xlat9;
    let x_1463 : vec4<f32> = u_xlat0;
    let x_1466 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1461.x, x_1461.y, x_1461.z) * vec3<f32>(x_1463.y, x_1463.z, x_1463.w)) + x_1466);
    let x_1468 : vec3<f32> = u_xlat6;
    let x_1469 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1468 + x_1469);

    continuing {
      let x_1471 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1471 + bitcast<u32>(1i));
    }
  }
  let x_1474 : vec3<f32> = u_xlat14;
  let x_1475 : vec4<f32> = u_xlat0;
  let x_1478 : vec4<f32> = u_xlat4;
  u_xlat11 = ((x_1474 * vec3<f32>(x_1475.y, x_1475.z, x_1475.w)) + vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
  let x_1481 : vec3<f32> = u_xlat6;
  let x_1482 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_1481 + x_1482);
  let x_1484 : f32 = u_xlat35;
  let x_1485 : f32 = u_xlat35;
  u_xlat1.x = (x_1484 * -(x_1485));
  let x_1490 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1490);
  let x_1493 : vec3<f32> = u_xlat11;
  let x_1496 : vec4<f32> = x_44.unity_FogColor;
  u_xlat11 = (x_1493 + -(vec3<f32>(x_1496.x, x_1496.y, x_1496.z)));
  let x_1502 : vec3<f32> = u_xlat1;
  let x_1504 : vec3<f32> = u_xlat11;
  let x_1507 : vec4<f32> = x_44.unity_FogColor;
  let x_1509 : vec3<f32> = ((vec3<f32>(x_1502.x, x_1502.x, x_1502.x) * x_1504) + vec3<f32>(x_1507.x, x_1507.y, x_1507.z));
  let x_1510 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1514 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1514 == 1.0f);
  let x_1516 : bool = u_xlatb11;
  if (x_1516) {
    let x_1521 : f32 = u_xlat0.x;
    x_1517 = x_1521;
  } else {
    x_1517 = 1.0f;
  }
  let x_1523 : f32 = x_1517;
  SV_Target0.w = x_1523;
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

