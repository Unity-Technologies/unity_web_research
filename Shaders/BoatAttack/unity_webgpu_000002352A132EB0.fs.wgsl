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
  x_ScaleBiasRt : vec4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_155 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1823 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2068 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2177 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb19 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat20 : vec3<f32>;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlatb57 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat57 : f32;
  var u_xlatb4 : vec2<bool>;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat22 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat60 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat58 : f32;
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
  var u_xlatb20 : vec2<bool>;
  var u_xlatb38 : bool;
  var x_1771 : f32;
  var u_xlat38 : f32;
  var x_1905 : f32;
  var x_1916 : vec3<f32>;
  var u_xlatu55 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat59 : f32;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var u_xlati59 : i32;
  var u_xlati7 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb59 : bool;
  var u_xlatb7 : vec4<bool>;
  var x_2479 : f32;
  var x_2492 : f32;
  var x_2554 : f32;
  var x_2565 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_2655 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_62 : vec4<f32> = hlslcc_FragCoord;
  let x_66 : f32 = x_43.x_DitheringTextureInvSize;
  let x_68 : vec2<f32> = (vec2<f32>(x_62.x, x_62.y) * vec2<f32>(x_66, x_66));
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_68.x, x_68.y, x_69.z, x_69.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_79 : f32 = x_43.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_76.x, x_76.y), x_79);
  u_xlat1.x = x_80.w;
  let x_95 : f32 = x_92.unity_LODFade.x;
  u_xlatb19 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb19;
  if (x_98) {
    let x_103 : f32 = u_xlat1.x;
    x_99 = abs(x_103);
  } else {
    let x_107 : f32 = u_xlat1.x;
    x_99 = -(abs(x_107));
  }
  let x_110 : f32 = x_99;
  u_xlat1.x = x_110;
  let x_113 : f32 = u_xlat1.x;
  let x_116 : f32 = x_92.unity_LODFade.x;
  u_xlat1.x = (-(x_113) + x_116);
  let x_121 : f32 = u_xlat1.x;
  u_xlatb1 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb1;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_134, x_135);
  let x_139 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_139);
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * x_144);
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_150 : vec3<f32> = vs_TEXCOORD1;
  let x_157 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres0;
  let x_160 : vec3<f32> = (x_150 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_166 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres1;
  let x_169 : vec3<f32> = (x_164 + -(vec3<f32>(x_166.x, x_166.y, x_166.z)));
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec3<f32> = vs_TEXCOORD1;
  let x_176 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres2;
  let x_179 : vec3<f32> = (x_173 + -(vec3<f32>(x_176.x, x_176.y, x_176.z)));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec3<f32> = vs_TEXCOORD1;
  let x_186 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres3;
  let x_189 : vec3<f32> = (x_183 + -(vec3<f32>(x_186.x, x_186.y, x_186.z)));
  let x_190 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_198.x, x_198.y, x_198.z), vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_205 : vec4<f32> = u_xlat4;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_211 : vec4<f32> = u_xlat5;
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_220 : vec4<f32> = u_xlat2;
  let x_223 : vec4<f32> = x_155.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_220 < x_223);
  let x_226 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_242);
  let x_248 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_248);
  let x_252 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_252);
  let x_255 : vec4<f32> = u_xlat2;
  let x_257 : vec4<f32> = u_xlat3;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + vec3<f32>(x_257.y, x_257.z, x_257.w));
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat2;
  let x_265 : vec3<f32> = max(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_266.x, x_265.x, x_265.y, x_265.z);
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_268, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_276 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_276) + 4.0f);
  let x_283 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_283);
  let x_287 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_287) << bitcast<u32>(2i));
  let x_292 : vec3<f32> = vs_TEXCOORD1;
  let x_294 : i32 = u_xlati2;
  let x_297 : i32 = u_xlati2;
  let x_301 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_294 + 1i) / 4i)][((x_297 + 1i) % 4i)];
  u_xlat20 = (vec3<f32>(x_292.y, x_292.y, x_292.y) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : i32 = u_xlati2;
  let x_306 : i32 = u_xlati2;
  let x_309 : vec4<f32> = x_155.x_MainLightWorldToShadow[(x_304 / 4i)][(x_306 % 4i)];
  let x_311 : vec3<f32> = vs_TEXCOORD1;
  let x_314 : vec3<f32> = u_xlat20;
  u_xlat20 = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.x, x_311.x)) + x_314);
  let x_316 : i32 = u_xlati2;
  let x_319 : i32 = u_xlati2;
  let x_323 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_316 + 2i) / 4i)][((x_319 + 2i) % 4i)];
  let x_325 : vec3<f32> = vs_TEXCOORD1;
  let x_328 : vec3<f32> = u_xlat20;
  u_xlat20 = ((vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_325.z, x_325.z, x_325.z)) + x_328);
  let x_330 : vec3<f32> = u_xlat20;
  let x_331 : i32 = u_xlati2;
  let x_334 : i32 = u_xlati2;
  let x_338 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_331 + 3i) / 4i)][((x_334 + 3i) % 4i)];
  let x_340 : vec3<f32> = (x_330 + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  u_xlat1.w = 1.0f;
  let x_346 : vec4<f32> = x_92.unity_SHAr;
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_346, x_347);
  let x_352 : vec4<f32> = x_92.unity_SHAg;
  let x_353 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_352, x_353);
  let x_358 : vec4<f32> = x_92.unity_SHAb;
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_358, x_359);
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_362.y, x_362.z, x_362.z, x_362.x) * vec4<f32>(x_364.x, x_364.y, x_364.z, x_364.z));
  let x_369 : vec4<f32> = x_92.unity_SHBr;
  let x_370 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_369, x_370);
  let x_375 : vec4<f32> = x_92.unity_SHBg;
  let x_376 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_375, x_376);
  let x_381 : vec4<f32> = x_92.unity_SHBb;
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_381, x_382);
  let x_387 : f32 = u_xlat1.y;
  let x_389 : f32 = u_xlat1.y;
  u_xlat55 = (x_387 * x_389);
  let x_392 : f32 = u_xlat1.x;
  let x_394 : f32 = u_xlat1.x;
  let x_396 : f32 = u_xlat55;
  u_xlat55 = ((x_392 * x_394) + -(x_396));
  let x_401 : vec4<f32> = x_92.unity_SHC;
  let x_403 : f32 = u_xlat55;
  let x_406 : vec4<f32> = u_xlat5;
  let x_408 : vec3<f32> = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_403, x_403, x_403)) + vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat3;
  let x_413 : vec4<f32> = u_xlat4;
  let x_415 : vec3<f32> = (vec3<f32>(x_411.x, x_411.y, x_411.z) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat3;
  let x_420 : vec3<f32> = max(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_425 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_426 : vec2<f32> = vec2<f32>(x_425.x, x_425.y);
  let x_430 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_426.x, x_426.y));
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat4;
  let x_435 : vec4<f32> = hlslcc_FragCoord;
  let x_437 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_435.x, x_435.y));
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_441 : f32 = u_xlat4.y;
  let x_444 : f32 = x_43.x_ScaleBiasRt.x;
  let x_447 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_441 * x_444) + x_447);
  let x_449 : f32 = u_xlat55;
  u_xlat4.z = (-(x_449) + 1.0f);
  let x_458 : vec4<f32> = u_xlat4;
  let x_461 : f32 = x_43.x_GlobalMipBias.x;
  let x_462 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_458.x, x_458.z), x_461);
  u_xlat55 = x_462.x;
  let x_465 : f32 = u_xlat55;
  u_xlat56 = (x_465 + -1.0f);
  let x_468 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_469 : f32 = u_xlat56;
  u_xlat56 = ((x_468 * x_469) + 1.0f);
  let x_472 : f32 = u_xlat55;
  u_xlat55 = min(x_472, 1.0f);
  let x_476 : f32 = x_155.x_MainLightShadowParams.y;
  u_xlatb57 = (0.0f < x_476);
  let x_478 : bool = u_xlatb57;
  if (x_478) {
    let x_482 : f32 = x_155.x_MainLightShadowParams.y;
    u_xlatb57 = (x_482 == 1.0f);
    let x_484 : bool = u_xlatb57;
    if (x_484) {
      let x_487 : vec4<f32> = u_xlat2;
      let x_491 : vec4<f32> = x_155.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_487.x, x_487.y, x_487.x, x_487.y) + x_491);
      let x_494 : vec4<f32> = u_xlat4;
      let x_495 : vec2<f32> = vec2<f32>(x_494.x, x_494.y);
      let x_497 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_495.x, x_495.y, x_497);
      let x_509 : vec3<f32> = txVec0;
      let x_511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_509.xy, x_509.z);
      u_xlat5.x = x_511;
      let x_514 : vec4<f32> = u_xlat4;
      let x_515 : vec2<f32> = vec2<f32>(x_514.z, x_514.w);
      let x_517 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_515.x, x_515.y, x_517);
      let x_524 : vec3<f32> = txVec1;
      let x_526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_524.xy, x_524.z);
      u_xlat5.y = x_526;
      let x_528 : vec4<f32> = u_xlat2;
      let x_531 : vec4<f32> = x_155.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_528.x, x_528.y, x_528.x, x_528.y) + x_531);
      let x_534 : vec4<f32> = u_xlat4;
      let x_535 : vec2<f32> = vec2<f32>(x_534.x, x_534.y);
      let x_537 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_535.x, x_535.y, x_537);
      let x_544 : vec3<f32> = txVec2;
      let x_546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_544.xy, x_544.z);
      u_xlat5.z = x_546;
      let x_549 : vec4<f32> = u_xlat4;
      let x_550 : vec2<f32> = vec2<f32>(x_549.z, x_549.w);
      let x_552 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_550.x, x_550.y, x_552);
      let x_559 : vec3<f32> = txVec3;
      let x_561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_559.xy, x_559.z);
      u_xlat5.w = x_561;
      let x_564 : vec4<f32> = u_xlat5;
      u_xlat57 = dot(x_564, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_573 : f32 = x_155.x_MainLightShadowParams.y;
      u_xlatb4.x = (x_573 == 2.0f);
      let x_577 : bool = u_xlatb4.x;
      if (x_577) {
        let x_580 : vec4<f32> = u_xlat2;
        let x_584 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_589 : vec2<f32> = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(x_584.z, x_584.w)) + vec2<f32>(0.5f, 0.5f));
        let x_590 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat4;
        let x_594 : vec2<f32> = floor(vec2<f32>(x_592.x, x_592.y));
        let x_595 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
        let x_599 : vec4<f32> = u_xlat2;
        let x_602 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_605 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_599.x, x_599.y) * vec2<f32>(x_602.z, x_602.w)) + -(vec2<f32>(x_605.x, x_605.y)));
        let x_609 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_609.x, x_609.x, x_609.y, x_609.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_614 : vec4<f32> = u_xlat5;
        let x_616 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_614.x, x_614.x, x_614.z, x_614.z) * vec4<f32>(x_616.x, x_616.x, x_616.z, x_616.z));
        let x_619 : vec4<f32> = u_xlat6;
        let x_623 : vec2<f32> = (vec2<f32>(x_619.y, x_619.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_624 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_623.x, x_624.y, x_623.y, x_624.w);
        let x_626 : vec4<f32> = u_xlat6;
        let x_629 : vec2<f32> = u_xlat40;
        let x_631 : vec2<f32> = ((vec2<f32>(x_626.x, x_626.z) * vec2<f32>(0.5f, 0.5f)) + -(x_629));
        let x_632 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
        let x_635 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_635) + vec2<f32>(1.0f, 1.0f));
        let x_639 : vec2<f32> = u_xlat40;
        let x_641 : vec2<f32> = min(x_639, vec2<f32>(0.0f, 0.0f));
        let x_642 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat7;
        let x_647 : vec4<f32> = u_xlat7;
        let x_650 : vec2<f32> = u_xlat42;
        let x_651 : vec2<f32> = ((-(vec2<f32>(x_644.x, x_644.y)) * vec2<f32>(x_647.x, x_647.y)) + x_650);
        let x_652 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_654 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_654, vec2<f32>(0.0f, 0.0f));
        let x_656 : vec2<f32> = u_xlat40;
        let x_658 : vec2<f32> = u_xlat40;
        let x_660 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_656) * x_658) + vec2<f32>(x_660.y, x_660.w));
        let x_663 : vec4<f32> = u_xlat7;
        let x_665 : vec2<f32> = (vec2<f32>(x_663.x, x_663.y) + vec2<f32>(1.0f, 1.0f));
        let x_666 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
        let x_668 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_668 + vec2<f32>(1.0f, 1.0f));
        let x_671 : vec4<f32> = u_xlat6;
        let x_675 : vec2<f32> = (vec2<f32>(x_671.x, x_671.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_676 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_678 : vec2<f32> = u_xlat42;
        let x_679 : vec2<f32> = (x_678 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_680 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
        let x_682 : vec4<f32> = u_xlat7;
        let x_684 : vec2<f32> = (vec2<f32>(x_682.x, x_682.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_685 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
        let x_688 : vec2<f32> = u_xlat40;
        let x_689 : vec2<f32> = (x_688 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_690 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_692 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_692.y, x_692.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_696 : f32 = u_xlat7.x;
        u_xlat8.z = x_696;
        let x_699 : f32 = u_xlat40.x;
        u_xlat8.w = x_699;
        let x_702 : f32 = u_xlat9.x;
        u_xlat6.z = x_702;
        let x_705 : f32 = u_xlat5.x;
        u_xlat6.w = x_705;
        let x_708 : vec4<f32> = u_xlat6;
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_708.z, x_708.w, x_708.x, x_708.z) + vec4<f32>(x_710.z, x_710.w, x_710.x, x_710.z));
        let x_714 : f32 = u_xlat8.y;
        u_xlat7.z = x_714;
        let x_717 : f32 = u_xlat40.y;
        u_xlat7.w = x_717;
        let x_720 : f32 = u_xlat6.y;
        u_xlat9.z = x_720;
        let x_723 : f32 = u_xlat5.z;
        u_xlat9.w = x_723;
        let x_725 : vec4<f32> = u_xlat7;
        let x_727 : vec4<f32> = u_xlat9;
        let x_729 : vec3<f32> = (vec3<f32>(x_725.z, x_725.y, x_725.w) + vec3<f32>(x_727.z, x_727.y, x_727.w));
        let x_730 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
        let x_732 : vec4<f32> = u_xlat6;
        let x_734 : vec4<f32> = u_xlat10;
        let x_736 : vec3<f32> = (vec3<f32>(x_732.x, x_732.z, x_732.w) / vec3<f32>(x_734.z, x_734.w, x_734.y));
        let x_737 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat6;
        let x_745 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_746 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
        let x_748 : vec4<f32> = u_xlat9;
        let x_750 : vec4<f32> = u_xlat5;
        let x_752 : vec3<f32> = (vec3<f32>(x_748.z, x_748.y, x_748.w) / vec3<f32>(x_750.x, x_750.y, x_750.z));
        let x_753 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat7;
        let x_757 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_758 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
        let x_760 : vec4<f32> = u_xlat6;
        let x_763 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_765 : vec3<f32> = (vec3<f32>(x_760.y, x_760.x, x_760.z) * vec3<f32>(x_763.x, x_763.x, x_763.x));
        let x_766 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
        let x_768 : vec4<f32> = u_xlat7;
        let x_771 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_773 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(x_771.y, x_771.y, x_771.y));
        let x_774 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
        let x_777 : f32 = u_xlat7.x;
        u_xlat6.w = x_777;
        let x_779 : vec4<f32> = u_xlat4;
        let x_782 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_785 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_779.x, x_779.y, x_779.x, x_779.y) * vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y)) + vec4<f32>(x_785.y, x_785.w, x_785.x, x_785.w));
        let x_788 : vec4<f32> = u_xlat4;
        let x_791 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_794 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_788.x, x_788.y) * vec2<f32>(x_791.x, x_791.y)) + vec2<f32>(x_794.z, x_794.w));
        let x_798 : f32 = u_xlat6.y;
        u_xlat7.w = x_798;
        let x_800 : vec4<f32> = u_xlat7;
        let x_801 : vec2<f32> = vec2<f32>(x_800.y, x_800.z);
        let x_802 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_802.x, x_801.x, x_802.z, x_801.y);
        let x_804 : vec4<f32> = u_xlat4;
        let x_807 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_810 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_804.x, x_804.y, x_804.x, x_804.y) * vec4<f32>(x_807.x, x_807.y, x_807.x, x_807.y)) + vec4<f32>(x_810.x, x_810.y, x_810.z, x_810.y));
        let x_813 : vec4<f32> = u_xlat4;
        let x_816 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_819 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_813.x, x_813.y, x_813.x, x_813.y) * vec4<f32>(x_816.x, x_816.y, x_816.x, x_816.y)) + vec4<f32>(x_819.w, x_819.y, x_819.w, x_819.z));
        let x_822 : vec4<f32> = u_xlat4;
        let x_825 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_828 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_822.x, x_822.y, x_822.x, x_822.y) * vec4<f32>(x_825.x, x_825.y, x_825.x, x_825.y)) + vec4<f32>(x_828.x, x_828.w, x_828.z, x_828.w));
        let x_832 : vec4<f32> = u_xlat5;
        let x_834 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_832.x, x_832.x, x_832.x, x_832.y) * vec4<f32>(x_834.z, x_834.w, x_834.y, x_834.z));
        let x_838 : vec4<f32> = u_xlat5;
        let x_840 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_838.y, x_838.y, x_838.z, x_838.z) * x_840);
        let x_843 : f32 = u_xlat5.z;
        let x_845 : f32 = u_xlat10.y;
        u_xlat4.x = (x_843 * x_845);
        let x_849 : vec4<f32> = u_xlat8;
        let x_850 : vec2<f32> = vec2<f32>(x_849.x, x_849.y);
        let x_852 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_850.x, x_850.y, x_852);
        let x_860 : vec3<f32> = txVec4;
        let x_862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_860.xy, x_860.z);
        u_xlat22 = x_862;
        let x_864 : vec4<f32> = u_xlat8;
        let x_865 : vec2<f32> = vec2<f32>(x_864.z, x_864.w);
        let x_867 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec5;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_874.xy, x_874.z);
        u_xlat5.x = x_876;
        let x_879 : f32 = u_xlat5.x;
        let x_881 : f32 = u_xlat11.y;
        u_xlat5.x = (x_879 * x_881);
        let x_885 : f32 = u_xlat11.x;
        let x_886 : f32 = u_xlat22;
        let x_889 : f32 = u_xlat5.x;
        u_xlat22 = ((x_885 * x_886) + x_889);
        let x_892 : vec2<f32> = u_xlat40;
        let x_894 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_892.x, x_892.y, x_894);
        let x_901 : vec3<f32> = txVec6;
        let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_901.xy, x_901.z);
        u_xlat40.x = x_903;
        let x_906 : f32 = u_xlat11.z;
        let x_908 : f32 = u_xlat40.x;
        let x_910 : f32 = u_xlat22;
        u_xlat22 = ((x_906 * x_908) + x_910);
        let x_913 : vec4<f32> = u_xlat7;
        let x_914 : vec2<f32> = vec2<f32>(x_913.x, x_913.y);
        let x_916 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_914.x, x_914.y, x_916);
        let x_923 : vec3<f32> = txVec7;
        let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_923.xy, x_923.z);
        u_xlat40.x = x_925;
        let x_928 : f32 = u_xlat11.w;
        let x_930 : f32 = u_xlat40.x;
        let x_932 : f32 = u_xlat22;
        u_xlat22 = ((x_928 * x_930) + x_932);
        let x_935 : vec4<f32> = u_xlat9;
        let x_936 : vec2<f32> = vec2<f32>(x_935.x, x_935.y);
        let x_938 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_936.x, x_936.y, x_938);
        let x_945 : vec3<f32> = txVec8;
        let x_947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_945.xy, x_945.z);
        u_xlat40.x = x_947;
        let x_950 : f32 = u_xlat12.x;
        let x_952 : f32 = u_xlat40.x;
        let x_954 : f32 = u_xlat22;
        u_xlat22 = ((x_950 * x_952) + x_954);
        let x_957 : vec4<f32> = u_xlat9;
        let x_958 : vec2<f32> = vec2<f32>(x_957.z, x_957.w);
        let x_960 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_958.x, x_958.y, x_960);
        let x_967 : vec3<f32> = txVec9;
        let x_969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_967.xy, x_967.z);
        u_xlat40.x = x_969;
        let x_972 : f32 = u_xlat12.y;
        let x_974 : f32 = u_xlat40.x;
        let x_976 : f32 = u_xlat22;
        u_xlat22 = ((x_972 * x_974) + x_976);
        let x_979 : vec4<f32> = u_xlat7;
        let x_980 : vec2<f32> = vec2<f32>(x_979.z, x_979.w);
        let x_982 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_980.x, x_980.y, x_982);
        let x_989 : vec3<f32> = txVec10;
        let x_991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_989.xy, x_989.z);
        u_xlat40.x = x_991;
        let x_994 : f32 = u_xlat12.z;
        let x_996 : f32 = u_xlat40.x;
        let x_998 : f32 = u_xlat22;
        u_xlat22 = ((x_994 * x_996) + x_998);
        let x_1001 : vec4<f32> = u_xlat6;
        let x_1002 : vec2<f32> = vec2<f32>(x_1001.x, x_1001.y);
        let x_1004 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
        let x_1011 : vec3<f32> = txVec11;
        let x_1013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1011.xy, x_1011.z);
        u_xlat40.x = x_1013;
        let x_1016 : f32 = u_xlat12.w;
        let x_1018 : f32 = u_xlat40.x;
        let x_1020 : f32 = u_xlat22;
        u_xlat22 = ((x_1016 * x_1018) + x_1020);
        let x_1023 : vec4<f32> = u_xlat6;
        let x_1024 : vec2<f32> = vec2<f32>(x_1023.z, x_1023.w);
        let x_1026 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
        let x_1033 : vec3<f32> = txVec12;
        let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1033.xy, x_1033.z);
        u_xlat40.x = x_1035;
        let x_1038 : f32 = u_xlat4.x;
        let x_1040 : f32 = u_xlat40.x;
        let x_1042 : f32 = u_xlat22;
        u_xlat57 = ((x_1038 * x_1040) + x_1042);
      } else {
        let x_1045 : vec4<f32> = u_xlat2;
        let x_1048 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1051 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1048.z, x_1048.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1052 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1054 : vec4<f32> = u_xlat4;
        let x_1056 : vec2<f32> = floor(vec2<f32>(x_1054.x, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat2;
        let x_1062 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.z, x_1062.w)) + -(vec2<f32>(x_1065.x, x_1065.y)));
        let x_1069 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_1069.x, x_1069.x, x_1069.y, x_1069.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1072 : vec4<f32> = u_xlat5;
        let x_1074 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1072.x, x_1072.x, x_1072.z, x_1072.z) * vec4<f32>(x_1074.x, x_1074.x, x_1074.z, x_1074.z));
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1081 : vec2<f32> = (vec2<f32>(x_1077.y, x_1077.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1082 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1082.x, x_1081.x, x_1082.z, x_1081.y);
        let x_1084 : vec4<f32> = u_xlat6;
        let x_1087 : vec2<f32> = u_xlat40;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1087));
        let x_1090 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1089.x, x_1090.y, x_1089.y, x_1090.w);
        let x_1092 : vec2<f32> = u_xlat40;
        let x_1094 : vec2<f32> = (-(x_1092) + vec2<f32>(1.0f, 1.0f));
        let x_1095 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_1097, vec2<f32>(0.0f, 0.0f));
        let x_1099 : vec2<f32> = u_xlat42;
        let x_1101 : vec2<f32> = u_xlat42;
        let x_1103 : vec4<f32> = u_xlat6;
        let x_1105 : vec2<f32> = ((-(x_1099) * x_1101) + vec2<f32>(x_1103.x, x_1103.y));
        let x_1106 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1108 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_1108, vec2<f32>(0.0f, 0.0f));
        let x_1111 : vec2<f32> = u_xlat42;
        let x_1113 : vec2<f32> = u_xlat42;
        let x_1115 : vec4<f32> = u_xlat5;
        let x_1117 : vec2<f32> = ((-(x_1111) * x_1113) + vec2<f32>(x_1115.y, x_1115.w));
        let x_1118 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1117.x, x_1118.y, x_1117.y);
        let x_1120 : vec4<f32> = u_xlat6;
        let x_1123 : vec2<f32> = (vec2<f32>(x_1120.x, x_1120.y) + vec2<f32>(2.0f, 2.0f));
        let x_1124 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1126 : vec3<f32> = u_xlat23;
        let x_1128 : vec2<f32> = (vec2<f32>(x_1126.x, x_1126.z) + vec2<f32>(2.0f, 2.0f));
        let x_1129 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1129.x, x_1128.x, x_1129.z, x_1128.y);
        let x_1132 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1132 * 0.081632003f);
        let x_1136 : vec4<f32> = u_xlat5;
        let x_1139 : vec3<f32> = (vec3<f32>(x_1136.z, x_1136.x, x_1136.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat6;
        let x_1145 : vec2<f32> = (vec2<f32>(x_1142.x, x_1142.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1146 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
        let x_1149 : f32 = u_xlat9.y;
        u_xlat8.x = x_1149;
        let x_1151 : vec2<f32> = u_xlat40;
        let x_1158 : vec2<f32> = ((vec2<f32>(x_1151.x, x_1151.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1159.x, x_1158.x, x_1159.z, x_1158.y);
        let x_1161 : vec2<f32> = u_xlat40;
        let x_1165 : vec2<f32> = ((vec2<f32>(x_1161.x, x_1161.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1166 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1165.x, x_1166.y, x_1165.y, x_1166.w);
        let x_1169 : f32 = u_xlat5.x;
        u_xlat6.y = x_1169;
        let x_1172 : f32 = u_xlat7.y;
        u_xlat6.w = x_1172;
        let x_1174 : vec4<f32> = u_xlat6;
        let x_1175 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1174 + x_1175);
        let x_1177 : vec2<f32> = u_xlat40;
        let x_1180 : vec2<f32> = ((vec2<f32>(x_1177.y, x_1177.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1181 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1181.x, x_1180.x, x_1181.z, x_1180.y);
        let x_1183 : vec2<f32> = u_xlat40;
        let x_1186 : vec2<f32> = ((vec2<f32>(x_1183.y, x_1183.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1187 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1186.x, x_1187.y, x_1186.y, x_1187.w);
        let x_1190 : f32 = u_xlat5.y;
        u_xlat7.y = x_1190;
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1192 + x_1193);
        let x_1195 : vec4<f32> = u_xlat6;
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1195 / x_1196);
        let x_1198 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1198 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1205 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1204 / x_1205);
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1207 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1209 : vec4<f32> = u_xlat6;
        let x_1212 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1209.w, x_1209.x, x_1209.y, x_1209.z) * vec4<f32>(x_1212.x, x_1212.x, x_1212.x, x_1212.x));
        let x_1215 : vec4<f32> = u_xlat7;
        let x_1218 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1215.x, x_1215.w, x_1215.y, x_1215.z) * vec4<f32>(x_1218.y, x_1218.y, x_1218.y, x_1218.y));
        let x_1221 : vec4<f32> = u_xlat6;
        let x_1222 : vec3<f32> = vec3<f32>(x_1221.y, x_1221.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1222.x, x_1223.y, x_1222.y, x_1222.z);
        let x_1226 : f32 = u_xlat7.x;
        u_xlat9.y = x_1226;
        let x_1228 : vec4<f32> = u_xlat4;
        let x_1231 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1228.x, x_1228.y, x_1228.x, x_1228.y) * vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y)) + vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1234.y));
        let x_1237 : vec4<f32> = u_xlat4;
        let x_1240 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1237.x, x_1237.y) * vec2<f32>(x_1240.x, x_1240.y)) + vec2<f32>(x_1243.w, x_1243.y));
        let x_1247 : f32 = u_xlat9.y;
        u_xlat6.y = x_1247;
        let x_1250 : f32 = u_xlat7.z;
        u_xlat9.y = x_1250;
        let x_1252 : vec4<f32> = u_xlat4;
        let x_1255 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1258.y));
        let x_1261 : vec4<f32> = u_xlat4;
        let x_1264 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat9;
        let x_1269 : vec2<f32> = ((vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(x_1264.x, x_1264.y)) + vec2<f32>(x_1267.w, x_1267.y));
        let x_1270 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1269.x, x_1269.y, x_1270.z, x_1270.w);
        let x_1273 : f32 = u_xlat9.y;
        u_xlat6.z = x_1273;
        let x_1276 : vec4<f32> = u_xlat4;
        let x_1279 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.y) * vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y)) + vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.z));
        let x_1286 : f32 = u_xlat7.w;
        u_xlat9.y = x_1286;
        let x_1289 : vec4<f32> = u_xlat4;
        let x_1292 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1295.y));
        let x_1299 : vec4<f32> = u_xlat4;
        let x_1302 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1305.w, x_1305.y));
        let x_1309 : f32 = u_xlat9.y;
        u_xlat6.w = x_1309;
        let x_1312 : vec4<f32> = u_xlat4;
        let x_1315 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1315.x, x_1315.y)) + vec2<f32>(x_1318.x, x_1318.w));
        let x_1321 : vec4<f32> = u_xlat9;
        let x_1322 : vec3<f32> = vec3<f32>(x_1321.x, x_1321.z, x_1321.w);
        let x_1323 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1322.x, x_1323.y, x_1322.y, x_1322.z);
        let x_1325 : vec4<f32> = u_xlat4;
        let x_1328 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y) * vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y)) + vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1331.y));
        let x_1335 : vec4<f32> = u_xlat4;
        let x_1338 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1341 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1335.x, x_1335.y) * vec2<f32>(x_1338.x, x_1338.y)) + vec2<f32>(x_1341.w, x_1341.y));
        let x_1345 : f32 = u_xlat6.x;
        u_xlat7.x = x_1345;
        let x_1347 : vec4<f32> = u_xlat4;
        let x_1350 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1353 : vec4<f32> = u_xlat7;
        let x_1355 : vec2<f32> = ((vec2<f32>(x_1347.x, x_1347.y) * vec2<f32>(x_1350.x, x_1350.y)) + vec2<f32>(x_1353.x, x_1353.y));
        let x_1356 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1355.x, x_1355.y, x_1356.z, x_1356.w);
        let x_1359 : vec4<f32> = u_xlat5;
        let x_1361 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1359.x, x_1359.x, x_1359.x, x_1359.x) * x_1361);
        let x_1364 : vec4<f32> = u_xlat5;
        let x_1366 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1364.y, x_1364.y, x_1364.y, x_1364.y) * x_1366);
        let x_1369 : vec4<f32> = u_xlat5;
        let x_1371 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1369.z, x_1369.z, x_1369.z, x_1369.z) * x_1371);
        let x_1373 : vec4<f32> = u_xlat5;
        let x_1375 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1373.w, x_1373.w, x_1373.w, x_1373.w) * x_1375);
        let x_1378 : vec4<f32> = u_xlat10;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec13;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1388.xy, x_1388.z);
        u_xlat6.x = x_1390;
        let x_1393 : vec4<f32> = u_xlat10;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.z, x_1393.w);
        let x_1396 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1404 : vec3<f32> = txVec14;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1404.xy, x_1404.z);
        u_xlat60 = x_1406;
        let x_1407 : f32 = u_xlat60;
        let x_1409 : f32 = u_xlat15.y;
        u_xlat60 = (x_1407 * x_1409);
        let x_1412 : f32 = u_xlat15.x;
        let x_1414 : f32 = u_xlat6.x;
        let x_1416 : f32 = u_xlat60;
        u_xlat6.x = ((x_1412 * x_1414) + x_1416);
        let x_1420 : vec2<f32> = u_xlat40;
        let x_1422 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec15;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1429.xy, x_1429.z);
        u_xlat40.x = x_1431;
        let x_1434 : f32 = u_xlat15.z;
        let x_1436 : f32 = u_xlat40.x;
        let x_1439 : f32 = u_xlat6.x;
        u_xlat40.x = ((x_1434 * x_1436) + x_1439);
        let x_1443 : vec4<f32> = u_xlat13;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.x, x_1443.y);
        let x_1446 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1454 : vec3<f32> = txVec16;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1454.xy, x_1454.z);
        u_xlat58 = x_1456;
        let x_1458 : f32 = u_xlat15.w;
        let x_1459 : f32 = u_xlat58;
        let x_1462 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1458 * x_1459) + x_1462);
        let x_1466 : vec4<f32> = u_xlat11;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec17;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1476.xy, x_1476.z);
        u_xlat58 = x_1478;
        let x_1480 : f32 = u_xlat16.x;
        let x_1481 : f32 = u_xlat58;
        let x_1484 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1480 * x_1481) + x_1484);
        let x_1488 : vec4<f32> = u_xlat11;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.z, x_1488.w);
        let x_1491 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec18;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1498.xy, x_1498.z);
        u_xlat58 = x_1500;
        let x_1502 : f32 = u_xlat16.y;
        let x_1503 : f32 = u_xlat58;
        let x_1506 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1502 * x_1503) + x_1506);
        let x_1510 : vec4<f32> = u_xlat12;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.x, x_1510.y);
        let x_1513 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec19;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat58 = x_1522;
        let x_1524 : f32 = u_xlat16.z;
        let x_1525 : f32 = u_xlat58;
        let x_1528 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1524 * x_1525) + x_1528);
        let x_1532 : vec4<f32> = u_xlat13;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.z, x_1532.w);
        let x_1535 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec20;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1542.xy, x_1542.z);
        u_xlat58 = x_1544;
        let x_1546 : f32 = u_xlat16.w;
        let x_1547 : f32 = u_xlat58;
        let x_1550 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1546 * x_1547) + x_1550);
        let x_1554 : vec4<f32> = u_xlat14;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.x, x_1554.y);
        let x_1557 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec21;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1564.xy, x_1564.z);
        u_xlat58 = x_1566;
        let x_1568 : f32 = u_xlat17.x;
        let x_1569 : f32 = u_xlat58;
        let x_1572 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1568 * x_1569) + x_1572);
        let x_1576 : vec4<f32> = u_xlat14;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.z, x_1576.w);
        let x_1579 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec22;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat58 = x_1588;
        let x_1590 : f32 = u_xlat17.y;
        let x_1591 : f32 = u_xlat58;
        let x_1594 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1590 * x_1591) + x_1594);
        let x_1598 : vec2<f32> = u_xlat24;
        let x_1600 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec23;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1607.xy, x_1607.z);
        u_xlat58 = x_1609;
        let x_1611 : f32 = u_xlat17.z;
        let x_1612 : f32 = u_xlat58;
        let x_1615 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1611 * x_1612) + x_1615);
        let x_1619 : vec2<f32> = u_xlat48;
        let x_1621 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec24;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1628.xy, x_1628.z);
        u_xlat58 = x_1630;
        let x_1632 : f32 = u_xlat17.w;
        let x_1633 : f32 = u_xlat58;
        let x_1636 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1632 * x_1633) + x_1636);
        let x_1640 : vec4<f32> = u_xlat9;
        let x_1641 : vec2<f32> = vec2<f32>(x_1640.x, x_1640.y);
        let x_1643 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec25;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1650.xy, x_1650.z);
        u_xlat58 = x_1652;
        let x_1654 : f32 = u_xlat5.x;
        let x_1655 : f32 = u_xlat58;
        let x_1658 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1654 * x_1655) + x_1658);
        let x_1662 : vec4<f32> = u_xlat9;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.z, x_1662.w);
        let x_1665 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec26;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1672.xy, x_1672.z);
        u_xlat58 = x_1674;
        let x_1676 : f32 = u_xlat5.y;
        let x_1677 : f32 = u_xlat58;
        let x_1680 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1676 * x_1677) + x_1680);
        let x_1684 : vec2<f32> = u_xlat43;
        let x_1686 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
        let x_1693 : vec3<f32> = txVec27;
        let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1693.xy, x_1693.z);
        u_xlat58 = x_1695;
        let x_1697 : f32 = u_xlat5.z;
        let x_1698 : f32 = u_xlat58;
        let x_1701 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1697 * x_1698) + x_1701);
        let x_1705 : vec4<f32> = u_xlat4;
        let x_1706 : vec2<f32> = vec2<f32>(x_1705.x, x_1705.y);
        let x_1708 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec28;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1715.xy, x_1715.z);
        u_xlat4.x = x_1717;
        let x_1720 : f32 = u_xlat5.w;
        let x_1722 : f32 = u_xlat4.x;
        let x_1725 : f32 = u_xlat40.x;
        u_xlat57 = ((x_1720 * x_1722) + x_1725);
      }
    }
  } else {
    let x_1729 : vec4<f32> = u_xlat2;
    let x_1730 : vec2<f32> = vec2<f32>(x_1729.x, x_1729.y);
    let x_1732 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1730.x, x_1730.y, x_1732);
    let x_1739 : vec3<f32> = txVec29;
    let x_1741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1739.xy, x_1739.z);
    u_xlat57 = x_1741;
  }
  let x_1743 : f32 = x_155.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1743) + 1.0f);
  let x_1747 : f32 = u_xlat57;
  let x_1749 : f32 = x_155.x_MainLightShadowParams.x;
  let x_1752 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1747 * x_1749) + x_1752);
  let x_1757 : f32 = u_xlat2.z;
  u_xlatb20.x = (0.0f >= x_1757);
  let x_1762 : f32 = u_xlat2.z;
  u_xlatb38 = (x_1762 >= 1.0f);
  let x_1764 : bool = u_xlatb38;
  let x_1766 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_1764 | x_1766);
  let x_1770 : bool = u_xlatb20.x;
  if (x_1770) {
    x_1771 = 1.0f;
  } else {
    let x_1776 : f32 = u_xlat2.x;
    x_1771 = x_1776;
  }
  let x_1777 : f32 = x_1771;
  u_xlat2.x = x_1777;
  let x_1779 : vec3<f32> = vs_TEXCOORD1;
  let x_1782 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1784 : vec3<f32> = (x_1779 + -(x_1782));
  let x_1785 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1785.w);
  let x_1787 : vec4<f32> = u_xlat4;
  let x_1789 : vec4<f32> = u_xlat4;
  u_xlat20.x = dot(vec3<f32>(x_1787.x, x_1787.y, x_1787.z), vec3<f32>(x_1789.x, x_1789.y, x_1789.z));
  let x_1794 : f32 = u_xlat20.x;
  let x_1796 : f32 = x_155.x_MainLightShadowParams.z;
  let x_1799 : f32 = x_155.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1794 * x_1796) + x_1799);
  let x_1803 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1803, 0.0f, 1.0f);
  let x_1808 : f32 = u_xlat2.x;
  u_xlat38 = (-(x_1808) + 1.0f);
  let x_1812 : f32 = u_xlat20.x;
  let x_1813 : f32 = u_xlat38;
  let x_1816 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1812 * x_1813) + x_1816);
  let x_1825 : f32 = x_1823.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1825 == -1.0f));
  let x_1829 : bool = u_xlatb20.x;
  if (x_1829) {
    let x_1832 : vec3<f32> = vs_TEXCOORD1;
    let x_1835 : vec4<f32> = x_1823.x_MainLightWorldToLight[1i];
    let x_1837 : vec2<f32> = (vec2<f32>(x_1832.y, x_1832.y) * vec2<f32>(x_1835.x, x_1835.y));
    let x_1838 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1837.x, x_1837.y, x_1838.z);
    let x_1841 : vec4<f32> = x_1823.x_MainLightWorldToLight[0i];
    let x_1843 : vec3<f32> = vs_TEXCOORD1;
    let x_1846 : vec3<f32> = u_xlat20;
    let x_1848 : vec2<f32> = ((vec2<f32>(x_1841.x, x_1841.y) * vec2<f32>(x_1843.x, x_1843.x)) + vec2<f32>(x_1846.x, x_1846.y));
    let x_1849 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1848.x, x_1848.y, x_1849.z);
    let x_1852 : vec4<f32> = x_1823.x_MainLightWorldToLight[2i];
    let x_1854 : vec3<f32> = vs_TEXCOORD1;
    let x_1857 : vec3<f32> = u_xlat20;
    let x_1859 : vec2<f32> = ((vec2<f32>(x_1852.x, x_1852.y) * vec2<f32>(x_1854.z, x_1854.z)) + vec2<f32>(x_1857.x, x_1857.y));
    let x_1860 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1859.x, x_1859.y, x_1860.z);
    let x_1862 : vec3<f32> = u_xlat20;
    let x_1865 : vec4<f32> = x_1823.x_MainLightWorldToLight[3i];
    let x_1867 : vec2<f32> = (vec2<f32>(x_1862.x, x_1862.y) + vec2<f32>(x_1865.x, x_1865.y));
    let x_1868 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1867.x, x_1867.y, x_1868.z);
    let x_1870 : vec3<f32> = u_xlat20;
    let x_1873 : vec2<f32> = ((vec2<f32>(x_1870.x, x_1870.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1874 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1873.x, x_1873.y, x_1874.z);
    let x_1881 : vec3<f32> = u_xlat20;
    let x_1884 : f32 = x_43.x_GlobalMipBias.x;
    let x_1885 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1881.x, x_1881.y), x_1884);
    u_xlat4 = x_1885;
    let x_1887 : f32 = x_1823.x_MainLightCookieTextureFormat;
    let x_1889 : f32 = x_1823.x_MainLightCookieTextureFormat;
    let x_1891 : f32 = x_1823.x_MainLightCookieTextureFormat;
    let x_1893 : f32 = x_1823.x_MainLightCookieTextureFormat;
    let x_1894 : vec4<f32> = vec4<f32>(x_1887, x_1889, x_1891, x_1893);
    let x_1901 : vec4<bool> = (vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1894.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1901.x, x_1901.y);
    let x_1904 : bool = u_xlatb20.y;
    if (x_1904) {
      let x_1909 : f32 = u_xlat4.w;
      x_1905 = x_1909;
    } else {
      let x_1912 : f32 = u_xlat4.x;
      x_1905 = x_1912;
    }
    let x_1913 : f32 = x_1905;
    u_xlat38 = x_1913;
    let x_1915 : bool = u_xlatb20.x;
    if (x_1915) {
      let x_1919 : vec4<f32> = u_xlat4;
      x_1916 = vec3<f32>(x_1919.x, x_1919.y, x_1919.z);
    } else {
      let x_1922 : f32 = u_xlat38;
      x_1916 = vec3<f32>(x_1922, x_1922, x_1922);
    }
    let x_1924 : vec3<f32> = x_1916;
    let x_1925 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1931 : vec4<f32> = u_xlat4;
  let x_1934 : vec4<f32> = x_43.x_MainLightColor;
  let x_1936 : vec3<f32> = (vec3<f32>(x_1931.x, x_1931.y, x_1931.z) * vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
  let x_1939 : f32 = u_xlat56;
  let x_1941 : vec4<f32> = u_xlat4;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1939, x_1939, x_1939) * vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : f32 = u_xlat55;
  let x_1948 : vec4<f32> = u_xlat3;
  let x_1950 : vec3<f32> = (vec3<f32>(x_1946, x_1946, x_1946) * vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  let x_1954 : f32 = u_xlat2.x;
  let x_1956 : f32 = x_92.unity_LightData.z;
  u_xlat55 = (x_1954 * x_1956);
  let x_1958 : f32 = u_xlat55;
  let x_1960 : vec4<f32> = u_xlat4;
  let x_1962 : vec3<f32> = (vec3<f32>(x_1958, x_1958, x_1958) * vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1963 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
  let x_1965 : vec4<f32> = u_xlat1;
  let x_1968 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1965.x, x_1965.y, x_1965.z), vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
  let x_1971 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1971, 0.0f, 1.0f);
  let x_1973 : f32 = u_xlat55;
  let x_1975 : vec4<f32> = u_xlat2;
  let x_1977 : vec3<f32> = (vec3<f32>(x_1973, x_1973, x_1973) * vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
  let x_1980 : vec4<f32> = u_xlat0;
  let x_1982 : vec4<f32> = u_xlat2;
  let x_1984 : vec3<f32> = (vec3<f32>(x_1980.y, x_1980.z, x_1980.w) * vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
  let x_1985 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1985.w);
  let x_1988 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1990 : f32 = x_92.unity_LightData.y;
  u_xlat55 = min(x_1988, x_1990);
  let x_1993 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1993));
  let x_1997 : f32 = x_1823.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1999 : f32 = x_1823.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2001 : f32 = x_1823.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2003 : f32 = x_1823.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2004 : vec4<f32> = vec4<f32>(x_1997, x_1999, x_2001, x_2003);
  let x_2010 : vec4<bool> = (vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2004.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_2010.x, x_2010.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2021 : u32 = u_xlatu_loop_1;
    let x_2022 : u32 = u_xlatu55;
    if ((x_2021 < x_2022)) {
    } else {
      break;
    }
    let x_2025 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_2025 >> 2u);
    let x_2028 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_2028 & 3u));
    let x_2031 : u32 = u_xlatu40;
    let x_2034 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_2031)];
    let x_2044 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2049 : vec4<u32> = indexable[x_2044];
    u_xlat40.x = dot(x_2034, bitcast<vec4<f32>>(x_2049));
    let x_2054 : f32 = u_xlat40.x;
    u_xlatu40 = bitcast<u32>(i32(x_2054));
    let x_2057 : vec3<f32> = vs_TEXCOORD1;
    let x_2069 : u32 = u_xlatu40;
    let x_2072 : vec4<f32> = x_2068.x_AdditionalLightsPosition[bitcast<i32>(x_2069)];
    let x_2075 : u32 = u_xlatu40;
    let x_2078 : vec4<f32> = x_2068.x_AdditionalLightsPosition[bitcast<i32>(x_2075)];
    let x_2080 : vec3<f32> = ((-(x_2057) * vec3<f32>(x_2072.w, x_2072.w, x_2072.w)) + vec3<f32>(x_2078.x, x_2078.y, x_2078.z));
    let x_2081 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
    let x_2083 : vec4<f32> = u_xlat6;
    let x_2085 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_2083.x, x_2083.y, x_2083.z), vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
    let x_2088 : f32 = u_xlat58;
    u_xlat58 = max(x_2088, 6.10351562e-05f);
    let x_2092 : f32 = u_xlat58;
    u_xlat59 = inverseSqrt(x_2092);
    let x_2094 : f32 = u_xlat59;
    let x_2096 : vec4<f32> = u_xlat6;
    let x_2098 : vec3<f32> = (vec3<f32>(x_2094, x_2094, x_2094) * vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
    let x_2099 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2099.w);
    let x_2101 : f32 = u_xlat58;
    u_xlat59 = (1.0f / x_2101);
    let x_2103 : f32 = u_xlat58;
    let x_2104 : u32 = u_xlatu40;
    let x_2107 : f32 = x_2068.x_AdditionalLightsAttenuation[bitcast<i32>(x_2104)].x;
    u_xlat58 = (x_2103 * x_2107);
    let x_2109 : f32 = u_xlat58;
    let x_2111 : f32 = u_xlat58;
    u_xlat58 = ((-(x_2109) * x_2111) + 1.0f);
    let x_2114 : f32 = u_xlat58;
    u_xlat58 = max(x_2114, 0.0f);
    let x_2116 : f32 = u_xlat58;
    let x_2117 : f32 = u_xlat58;
    u_xlat58 = (x_2116 * x_2117);
    let x_2119 : f32 = u_xlat58;
    let x_2120 : f32 = u_xlat59;
    u_xlat58 = (x_2119 * x_2120);
    let x_2122 : u32 = u_xlatu40;
    let x_2125 : vec4<f32> = x_2068.x_AdditionalLightsSpotDir[bitcast<i32>(x_2122)];
    let x_2127 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_2125.x, x_2125.y, x_2125.z), vec3<f32>(x_2127.x, x_2127.y, x_2127.z));
    let x_2130 : f32 = u_xlat59;
    let x_2131 : u32 = u_xlatu40;
    let x_2134 : f32 = x_2068.x_AdditionalLightsAttenuation[bitcast<i32>(x_2131)].z;
    let x_2136 : u32 = u_xlatu40;
    let x_2139 : f32 = x_2068.x_AdditionalLightsAttenuation[bitcast<i32>(x_2136)].w;
    u_xlat59 = ((x_2130 * x_2134) + x_2139);
    let x_2141 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2141, 0.0f, 1.0f);
    let x_2143 : f32 = u_xlat59;
    let x_2144 : f32 = u_xlat59;
    u_xlat59 = (x_2143 * x_2144);
    let x_2146 : f32 = u_xlat58;
    let x_2147 : f32 = u_xlat59;
    u_xlat58 = (x_2146 * x_2147);
    let x_2150 : u32 = u_xlatu40;
    u_xlatu59 = (x_2150 >> 5u);
    let x_2153 : u32 = u_xlatu40;
    u_xlati60 = (1i << bitcast<u32>((bitcast<i32>(x_2153) & 31i)));
    let x_2159 : i32 = u_xlati60;
    let x_2161 : u32 = u_xlatu59;
    let x_2164 : f32 = x_1823.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2161)].el;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_2159) & bitcast<u32>(x_2164)));
    let x_2168 : i32 = u_xlati59;
    if ((x_2168 != 0i)) {
      let x_2178 : u32 = u_xlatu40;
      let x_2181 : f32 = x_2177.x_AdditionalLightsLightTypes[bitcast<i32>(x_2178)].el;
      u_xlati59 = i32(x_2181);
      let x_2183 : i32 = u_xlati59;
      u_xlati60 = select(1i, 0i, (x_2183 != 0i));
      let x_2187 : u32 = u_xlatu40;
      u_xlati7 = (bitcast<i32>(x_2187) << bitcast<u32>(2i));
      let x_2190 : i32 = u_xlati60;
      if ((x_2190 != 0i)) {
        let x_2195 : vec3<f32> = vs_TEXCOORD1;
        let x_2197 : i32 = u_xlati7;
        let x_2200 : i32 = u_xlati7;
        let x_2204 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[((x_2197 + 1i) / 4i)][((x_2200 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_2195.y, x_2195.y, x_2195.y) * vec3<f32>(x_2204.x, x_2204.y, x_2204.w));
        let x_2207 : i32 = u_xlati7;
        let x_2209 : i32 = u_xlati7;
        let x_2212 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[(x_2207 / 4i)][(x_2209 % 4i)];
        let x_2214 : vec3<f32> = vs_TEXCOORD1;
        let x_2217 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2212.x, x_2212.y, x_2212.w) * vec3<f32>(x_2214.x, x_2214.x, x_2214.x)) + x_2217);
        let x_2219 : i32 = u_xlati7;
        let x_2222 : i32 = u_xlati7;
        let x_2226 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[((x_2219 + 2i) / 4i)][((x_2222 + 2i) % 4i)];
        let x_2228 : vec3<f32> = vs_TEXCOORD1;
        let x_2231 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2226.x, x_2226.y, x_2226.w) * vec3<f32>(x_2228.z, x_2228.z, x_2228.z)) + x_2231);
        let x_2233 : vec3<f32> = u_xlat25;
        let x_2234 : i32 = u_xlati7;
        let x_2237 : i32 = u_xlati7;
        let x_2241 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[((x_2234 + 3i) / 4i)][((x_2237 + 3i) % 4i)];
        u_xlat25 = (x_2233 + vec3<f32>(x_2241.x, x_2241.y, x_2241.w));
        let x_2244 : vec3<f32> = u_xlat25;
        let x_2246 : vec3<f32> = u_xlat25;
        let x_2248 : vec2<f32> = (vec2<f32>(x_2244.x, x_2244.y) / vec2<f32>(x_2246.z, x_2246.z));
        let x_2249 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2248.x, x_2248.y, x_2249.z);
        let x_2251 : vec3<f32> = u_xlat25;
        let x_2254 : vec2<f32> = ((vec2<f32>(x_2251.x, x_2251.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2255 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2254.x, x_2254.y, x_2255.z);
        let x_2257 : vec3<f32> = u_xlat25;
        let x_2261 : vec2<f32> = clamp(vec2<f32>(x_2257.x, x_2257.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2262 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2261.x, x_2261.y, x_2262.z);
        let x_2264 : u32 = u_xlatu40;
        let x_2267 : vec4<f32> = x_2177.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2264)];
        let x_2269 : vec3<f32> = u_xlat25;
        let x_2272 : u32 = u_xlatu40;
        let x_2275 : vec4<f32> = x_2177.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2272)];
        let x_2277 : vec2<f32> = ((vec2<f32>(x_2267.x, x_2267.y) * vec2<f32>(x_2269.x, x_2269.y)) + vec2<f32>(x_2275.z, x_2275.w));
        let x_2278 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2277.x, x_2277.y, x_2278.z);
      } else {
        let x_2282 : i32 = u_xlati59;
        u_xlatb59 = (x_2282 == 1i);
        let x_2284 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_2284);
        let x_2286 : i32 = u_xlati59;
        if ((x_2286 != 0i)) {
          let x_2290 : vec3<f32> = vs_TEXCOORD1;
          let x_2292 : i32 = u_xlati7;
          let x_2295 : i32 = u_xlati7;
          let x_2299 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[((x_2292 + 1i) / 4i)][((x_2295 + 1i) % 4i)];
          let x_2301 : vec2<f32> = (vec2<f32>(x_2290.y, x_2290.y) * vec2<f32>(x_2299.x, x_2299.y));
          let x_2302 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2301.x, x_2301.y, x_2302.z, x_2302.w);
          let x_2304 : i32 = u_xlati7;
          let x_2306 : i32 = u_xlati7;
          let x_2309 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[(x_2304 / 4i)][(x_2306 % 4i)];
          let x_2311 : vec3<f32> = vs_TEXCOORD1;
          let x_2314 : vec4<f32> = u_xlat8;
          let x_2316 : vec2<f32> = ((vec2<f32>(x_2309.x, x_2309.y) * vec2<f32>(x_2311.x, x_2311.x)) + vec2<f32>(x_2314.x, x_2314.y));
          let x_2317 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2316.x, x_2316.y, x_2317.z, x_2317.w);
          let x_2319 : i32 = u_xlati7;
          let x_2322 : i32 = u_xlati7;
          let x_2326 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[((x_2319 + 2i) / 4i)][((x_2322 + 2i) % 4i)];
          let x_2328 : vec3<f32> = vs_TEXCOORD1;
          let x_2331 : vec4<f32> = u_xlat8;
          let x_2333 : vec2<f32> = ((vec2<f32>(x_2326.x, x_2326.y) * vec2<f32>(x_2328.z, x_2328.z)) + vec2<f32>(x_2331.x, x_2331.y));
          let x_2334 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2333.x, x_2333.y, x_2334.z, x_2334.w);
          let x_2336 : vec4<f32> = u_xlat8;
          let x_2338 : i32 = u_xlati7;
          let x_2341 : i32 = u_xlati7;
          let x_2345 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[((x_2338 + 3i) / 4i)][((x_2341 + 3i) % 4i)];
          let x_2347 : vec2<f32> = (vec2<f32>(x_2336.x, x_2336.y) + vec2<f32>(x_2345.x, x_2345.y));
          let x_2348 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2347.x, x_2347.y, x_2348.z, x_2348.w);
          let x_2350 : vec4<f32> = u_xlat8;
          let x_2353 : vec2<f32> = ((vec2<f32>(x_2350.x, x_2350.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2354 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2353.x, x_2353.y, x_2354.z, x_2354.w);
          let x_2356 : vec4<f32> = u_xlat8;
          let x_2358 : vec2<f32> = fract(vec2<f32>(x_2356.x, x_2356.y));
          let x_2359 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2358.x, x_2358.y, x_2359.z, x_2359.w);
          let x_2361 : u32 = u_xlatu40;
          let x_2364 : vec4<f32> = x_2177.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2361)];
          let x_2366 : vec4<f32> = u_xlat8;
          let x_2369 : u32 = u_xlatu40;
          let x_2372 : vec4<f32> = x_2177.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2369)];
          let x_2374 : vec2<f32> = ((vec2<f32>(x_2364.x, x_2364.y) * vec2<f32>(x_2366.x, x_2366.y)) + vec2<f32>(x_2372.z, x_2372.w));
          let x_2375 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2374.x, x_2374.y, x_2375.z);
        } else {
          let x_2378 : vec3<f32> = vs_TEXCOORD1;
          let x_2380 : i32 = u_xlati7;
          let x_2383 : i32 = u_xlati7;
          let x_2387 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[((x_2380 + 1i) / 4i)][((x_2383 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_2378.y, x_2378.y, x_2378.y, x_2378.y) * x_2387);
          let x_2389 : i32 = u_xlati7;
          let x_2391 : i32 = u_xlati7;
          let x_2394 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[(x_2389 / 4i)][(x_2391 % 4i)];
          let x_2395 : vec3<f32> = vs_TEXCOORD1;
          let x_2398 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2394 * vec4<f32>(x_2395.x, x_2395.x, x_2395.x, x_2395.x)) + x_2398);
          let x_2400 : i32 = u_xlati7;
          let x_2403 : i32 = u_xlati7;
          let x_2407 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[((x_2400 + 2i) / 4i)][((x_2403 + 2i) % 4i)];
          let x_2408 : vec3<f32> = vs_TEXCOORD1;
          let x_2411 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2407 * vec4<f32>(x_2408.z, x_2408.z, x_2408.z, x_2408.z)) + x_2411);
          let x_2413 : vec4<f32> = u_xlat8;
          let x_2414 : i32 = u_xlati7;
          let x_2417 : i32 = u_xlati7;
          let x_2421 : vec4<f32> = x_2177.x_AdditionalLightsWorldToLights[((x_2414 + 3i) / 4i)][((x_2417 + 3i) % 4i)];
          u_xlat8 = (x_2413 + x_2421);
          let x_2423 : vec4<f32> = u_xlat8;
          let x_2425 : vec4<f32> = u_xlat8;
          let x_2427 : vec3<f32> = (vec3<f32>(x_2423.x, x_2423.y, x_2423.z) / vec3<f32>(x_2425.w, x_2425.w, x_2425.w));
          let x_2428 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2427.x, x_2427.y, x_2427.z, x_2428.w);
          let x_2430 : vec4<f32> = u_xlat8;
          let x_2432 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(vec3<f32>(x_2430.x, x_2430.y, x_2430.z), vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
          let x_2435 : f32 = u_xlat59;
          u_xlat59 = inverseSqrt(x_2435);
          let x_2437 : f32 = u_xlat59;
          let x_2439 : vec4<f32> = u_xlat8;
          let x_2441 : vec3<f32> = (vec3<f32>(x_2437, x_2437, x_2437) * vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
          let x_2442 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
          let x_2444 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(abs(vec3<f32>(x_2444.x, x_2444.y, x_2444.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2449 : f32 = u_xlat59;
          u_xlat59 = max(x_2449, 0.000001f);
          let x_2452 : f32 = u_xlat59;
          u_xlat59 = (1.0f / x_2452);
          let x_2454 : f32 = u_xlat59;
          let x_2456 : vec4<f32> = u_xlat8;
          let x_2458 : vec3<f32> = (vec3<f32>(x_2454, x_2454, x_2454) * vec3<f32>(x_2456.z, x_2456.x, x_2456.y));
          let x_2459 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
          let x_2462 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_2462);
          let x_2466 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_2466, 0.0f, 1.0f);
          let x_2470 : vec4<f32> = u_xlat9;
          let x_2473 : vec4<bool> = (vec4<f32>(x_2470.y, x_2470.y, x_2470.y, x_2470.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2474 : vec2<bool> = vec2<bool>(x_2473.x, x_2473.w);
          let x_2475 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_2474.x, x_2475.y, x_2475.z, x_2474.y);
          let x_2478 : bool = u_xlatb7.x;
          if (x_2478) {
            let x_2483 : f32 = u_xlat9.x;
            x_2479 = x_2483;
          } else {
            let x_2486 : f32 = u_xlat9.x;
            x_2479 = -(x_2486);
          }
          let x_2488 : f32 = x_2479;
          u_xlat7.x = x_2488;
          let x_2491 : bool = u_xlatb7.w;
          if (x_2491) {
            let x_2496 : f32 = u_xlat9.x;
            x_2492 = x_2496;
          } else {
            let x_2499 : f32 = u_xlat9.x;
            x_2492 = -(x_2499);
          }
          let x_2501 : f32 = x_2492;
          u_xlat7.w = x_2501;
          let x_2503 : vec4<f32> = u_xlat8;
          let x_2505 : f32 = u_xlat59;
          let x_2508 : vec4<f32> = u_xlat7;
          let x_2510 : vec2<f32> = ((vec2<f32>(x_2503.x, x_2503.y) * vec2<f32>(x_2505, x_2505)) + vec2<f32>(x_2508.x, x_2508.w));
          let x_2511 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2510.x, x_2511.y, x_2511.z, x_2510.y);
          let x_2513 : vec4<f32> = u_xlat7;
          let x_2516 : vec2<f32> = ((vec2<f32>(x_2513.x, x_2513.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2517 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2516.x, x_2517.y, x_2517.z, x_2516.y);
          let x_2519 : vec4<f32> = u_xlat7;
          let x_2523 : vec2<f32> = clamp(vec2<f32>(x_2519.x, x_2519.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2524 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2523.x, x_2524.y, x_2524.z, x_2523.y);
          let x_2526 : u32 = u_xlatu40;
          let x_2529 : vec4<f32> = x_2177.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2526)];
          let x_2531 : vec4<f32> = u_xlat7;
          let x_2534 : u32 = u_xlatu40;
          let x_2537 : vec4<f32> = x_2177.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2534)];
          let x_2539 : vec2<f32> = ((vec2<f32>(x_2529.x, x_2529.y) * vec2<f32>(x_2531.x, x_2531.w)) + vec2<f32>(x_2537.z, x_2537.w));
          let x_2540 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2539.x, x_2539.y, x_2540.z);
        }
      }
      let x_2547 : vec3<f32> = u_xlat25;
      let x_2550 : f32 = x_43.x_GlobalMipBias.x;
      let x_2551 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2547.x, x_2547.y), x_2550);
      u_xlat7 = x_2551;
      let x_2553 : bool = u_xlatb4.y;
      if (x_2553) {
        let x_2558 : f32 = u_xlat7.w;
        x_2554 = x_2558;
      } else {
        let x_2561 : f32 = u_xlat7.x;
        x_2554 = x_2561;
      }
      let x_2562 : f32 = x_2554;
      u_xlat59 = x_2562;
      let x_2564 : bool = u_xlatb4.x;
      if (x_2564) {
        let x_2568 : vec4<f32> = u_xlat7;
        x_2565 = vec3<f32>(x_2568.x, x_2568.y, x_2568.z);
      } else {
        let x_2571 : f32 = u_xlat59;
        x_2565 = vec3<f32>(x_2571, x_2571, x_2571);
      }
      let x_2573 : vec3<f32> = x_2565;
      let x_2574 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_2580 : vec4<f32> = u_xlat7;
    let x_2582 : u32 = u_xlatu40;
    let x_2585 : vec4<f32> = x_2068.x_AdditionalLightsColor[bitcast<i32>(x_2582)];
    let x_2587 : vec3<f32> = (vec3<f32>(x_2580.x, x_2580.y, x_2580.z) * vec3<f32>(x_2585.x, x_2585.y, x_2585.z));
    let x_2588 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2588.w);
    let x_2590 : f32 = u_xlat56;
    let x_2592 : vec4<f32> = u_xlat7;
    let x_2594 : vec3<f32> = (vec3<f32>(x_2590, x_2590, x_2590) * vec3<f32>(x_2592.x, x_2592.y, x_2592.z));
    let x_2595 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2595.w);
    let x_2597 : f32 = u_xlat58;
    let x_2599 : vec4<f32> = u_xlat7;
    let x_2601 : vec3<f32> = (vec3<f32>(x_2597, x_2597, x_2597) * vec3<f32>(x_2599.x, x_2599.y, x_2599.z));
    let x_2602 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2601.x, x_2601.y, x_2601.z, x_2602.w);
    let x_2604 : vec4<f32> = u_xlat1;
    let x_2606 : vec4<f32> = u_xlat6;
    u_xlat40.x = dot(vec3<f32>(x_2604.x, x_2604.y, x_2604.z), vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
    let x_2611 : f32 = u_xlat40.x;
    u_xlat40.x = clamp(x_2611, 0.0f, 1.0f);
    let x_2614 : vec2<f32> = u_xlat40;
    let x_2616 : vec4<f32> = u_xlat7;
    let x_2618 : vec3<f32> = (vec3<f32>(x_2614.x, x_2614.x, x_2614.x) * vec3<f32>(x_2616.x, x_2616.y, x_2616.z));
    let x_2619 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
    let x_2621 : vec4<f32> = u_xlat6;
    let x_2623 : vec4<f32> = u_xlat0;
    let x_2626 : vec4<f32> = u_xlat5;
    let x_2628 : vec3<f32> = ((vec3<f32>(x_2621.x, x_2621.y, x_2621.z) * vec3<f32>(x_2623.y, x_2623.z, x_2623.w)) + vec3<f32>(x_2626.x, x_2626.y, x_2626.z));
    let x_2629 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2629.w);

    continuing {
      let x_2631 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2631 + bitcast<u32>(1i));
    }
  }
  let x_2634 : vec4<f32> = u_xlat3;
  let x_2636 : vec4<f32> = u_xlat0;
  let x_2639 : vec4<f32> = u_xlat2;
  u_xlat18 = ((vec3<f32>(x_2634.x, x_2634.y, x_2634.z) * vec3<f32>(x_2636.y, x_2636.z, x_2636.w)) + vec3<f32>(x_2639.x, x_2639.y, x_2639.z));
  let x_2644 : vec4<f32> = u_xlat5;
  let x_2646 : vec3<f32> = u_xlat18;
  let x_2647 : vec3<f32> = (vec3<f32>(x_2644.x, x_2644.y, x_2644.z) + x_2646);
  let x_2648 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
  let x_2652 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_2652 == 1.0f);
  let x_2654 : bool = u_xlatb18;
  if (x_2654) {
    let x_2659 : f32 = u_xlat0.x;
    x_2655 = x_2659;
  } else {
    x_2655 = 1.0f;
  }
  let x_2661 : f32 = x_2655;
  SV_Target0.w = x_2661;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

