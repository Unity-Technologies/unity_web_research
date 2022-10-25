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
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_183 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_378 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_609 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_861 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_963 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_130 : f32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var x_561 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_693 : f32;
  var x_704 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1259 : f32;
  var x_1272 : f32;
  var x_1324 : f32;
  var x_1335 : vec3<f32>;
  var x_1418 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat11.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat33;
  let x_104 : f32 = u_xlat22;
  u_xlat22 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat22;
  u_xlat22 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat11.x;
  let x_112 : f32 = u_xlat22;
  u_xlat11.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat11.x;
  u_xlat11.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb22;
  if (x_129) {
    let x_134 : f32 = u_xlat11.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat11.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat11.x;
  u_xlatb11 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb11;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec3<f32> = vs_TEXCOORD2;
  let x_161 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11.x = dot(x_160, x_161);
  let x_165 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_165);
  let x_169 : vec3<f32> = u_xlat11;
  let x_171 : vec3<f32> = vs_TEXCOORD2;
  let x_172 : vec3<f32> = (vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171);
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = x_183.x_CascadeShadowSplitSpheres0;
  let x_188 : vec3<f32> = (x_177 + -(vec3<f32>(x_185.x, x_185.y, x_185.z)));
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_192 : vec3<f32> = vs_TEXCOORD1;
  let x_194 : vec4<f32> = x_183.x_CascadeShadowSplitSpheres1;
  let x_197 : vec3<f32> = (x_192 + -(vec3<f32>(x_194.x, x_194.y, x_194.z)));
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_201 : vec3<f32> = vs_TEXCOORD1;
  let x_204 : vec4<f32> = x_183.x_CascadeShadowSplitSpheres2;
  let x_207 : vec3<f32> = (x_201 + -(vec3<f32>(x_204.x, x_204.y, x_204.z)));
  let x_208 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec3<f32> = vs_TEXCOORD1;
  let x_213 : vec4<f32> = x_183.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_211 + -(vec3<f32>(x_213.x, x_213.y, x_213.z)));
  let x_217 : vec4<f32> = u_xlat3;
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_223 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_230 : vec4<f32> = u_xlat5;
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_237 : vec3<f32> = u_xlat6;
  let x_238 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_237, x_238);
  let x_244 : vec4<f32> = u_xlat3;
  let x_247 : vec4<f32> = x_183.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_244 < x_247);
  let x_250 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_250);
  let x_254 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_254);
  let x_258 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_258);
  let x_262 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_262);
  let x_266 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_266);
  let x_272 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_272);
  let x_276 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_276);
  let x_279 : vec4<f32> = u_xlat3;
  let x_281 : vec4<f32> = u_xlat4;
  let x_283 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) + vec3<f32>(x_281.y, x_281.z, x_281.w));
  let x_284 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat3;
  let x_289 : vec3<f32> = max(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_289.x, x_289.y, x_289.z);
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat11.x = dot(x_292, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_300 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_300) + 4.0f);
  let x_307 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_307);
  let x_311 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_311) << bitcast<u32>(2i));
  let x_314 : vec3<f32> = vs_TEXCOORD1;
  let x_316 : i32 = u_xlati11;
  let x_319 : i32 = u_xlati11;
  let x_323 : vec4<f32> = x_183.x_MainLightWorldToShadow[((x_316 + 1i) / 4i)][((x_319 + 1i) % 4i)];
  let x_325 : vec3<f32> = (vec3<f32>(x_314.y, x_314.y, x_314.y) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : i32 = u_xlati11;
  let x_330 : i32 = u_xlati11;
  let x_333 : vec4<f32> = x_183.x_MainLightWorldToShadow[(x_328 / 4i)][(x_330 % 4i)];
  let x_335 : vec3<f32> = vs_TEXCOORD1;
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.x, x_335.x, x_335.x)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : i32 = u_xlati11;
  let x_346 : i32 = u_xlati11;
  let x_350 : vec4<f32> = x_183.x_MainLightWorldToShadow[((x_343 + 2i) / 4i)][((x_346 + 2i) % 4i)];
  let x_352 : vec3<f32> = vs_TEXCOORD1;
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : vec3<f32> = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.z, x_352.z, x_352.z)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat3;
  let x_362 : i32 = u_xlati11;
  let x_365 : i32 = u_xlati11;
  let x_369 : vec4<f32> = x_183.x_MainLightWorldToShadow[((x_362 + 3i) / 4i)][((x_365 + 3i) % 4i)];
  let x_371 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  u_xlat2.w = 1.0f;
  let x_381 : vec4<f32> = x_378.unity_SHAr;
  let x_382 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_381, x_382);
  let x_387 : vec4<f32> = x_378.unity_SHAg;
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_387, x_388);
  let x_393 : vec4<f32> = x_378.unity_SHAb;
  let x_394 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_393, x_394);
  let x_397 : vec4<f32> = u_xlat2;
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_397.y, x_397.z, x_397.z, x_397.x) * vec4<f32>(x_399.x, x_399.y, x_399.z, x_399.z));
  let x_404 : vec4<f32> = x_378.unity_SHBr;
  let x_405 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_404, x_405);
  let x_410 : vec4<f32> = x_378.unity_SHBg;
  let x_411 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_378.unity_SHBb;
  let x_417 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_416, x_417);
  let x_421 : f32 = u_xlat2.y;
  let x_423 : f32 = u_xlat2.y;
  u_xlat11.x = (x_421 * x_423);
  let x_427 : f32 = u_xlat2.x;
  let x_429 : f32 = u_xlat2.x;
  let x_432 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_427 * x_429) + -(x_432));
  let x_438 : vec4<f32> = x_378.unity_SHC;
  let x_440 : vec3<f32> = u_xlat11;
  let x_443 : vec3<f32> = u_xlat6;
  let x_444 : vec3<f32> = ((vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(x_440.x, x_440.x, x_440.x)) + x_443);
  let x_445 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat4;
  let x_449 : vec4<f32> = u_xlat5;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) + vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat4;
  let x_456 : vec3<f32> = max(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_461 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_462 : vec2<f32> = vec2<f32>(x_461.x, x_461.y);
  let x_466 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_462.x, x_462.y));
  let x_467 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_466.x, x_467.y, x_466.y);
  let x_469 : vec3<f32> = u_xlat11;
  let x_471 : vec4<f32> = hlslcc_FragCoord;
  let x_473 : vec2<f32> = (vec2<f32>(x_469.x, x_469.z) * vec2<f32>(x_471.x, x_471.y));
  let x_474 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
  let x_477 : f32 = u_xlat5.y;
  let x_480 : f32 = x_43.x_ScaleBiasRt.x;
  let x_483 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_477 * x_480) + x_483);
  let x_487 : f32 = u_xlat11.x;
  u_xlat5.z = (-(x_487) + 1.0f);
  let x_496 : vec4<f32> = u_xlat5;
  let x_499 : f32 = x_43.x_GlobalMipBias.x;
  let x_500 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_496.x, x_496.z), x_499);
  u_xlat11.x = x_500.x;
  let x_504 : f32 = u_xlat11.x;
  u_xlat33 = (x_504 + -1.0f);
  let x_507 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_508 : f32 = u_xlat33;
  u_xlat33 = ((x_507 * x_508) + 1.0f);
  let x_512 : f32 = u_xlat11.x;
  u_xlat11.x = min(x_512, 1.0f);
  let x_516 : vec4<f32> = u_xlat3;
  let x_517 : vec2<f32> = vec2<f32>(x_516.x, x_516.y);
  let x_519 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_517.x, x_517.y, x_519);
  let x_531 : vec3<f32> = txVec0;
  let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_531.xy, x_531.z);
  u_xlat1.x = x_533;
  let x_537 : f32 = x_183.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_537) + 1.0f);
  let x_541 : f32 = u_xlat1.x;
  let x_543 : f32 = x_183.x_MainLightShadowParams.x;
  let x_545 : f32 = u_xlat35;
  u_xlat1.x = ((x_541 * x_543) + x_545);
  let x_550 : f32 = u_xlat3.z;
  u_xlatb35 = (0.0f >= x_550);
  let x_553 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_553 >= 1.0f);
  let x_556 : bool = u_xlatb35;
  let x_558 : bool = u_xlatb3.x;
  u_xlatb35 = (x_556 | x_558);
  let x_560 : bool = u_xlatb35;
  if (x_560) {
    x_561 = 1.0f;
  } else {
    let x_566 : f32 = u_xlat1.x;
    x_561 = x_566;
  }
  let x_567 : f32 = x_561;
  u_xlat1.x = x_567;
  let x_569 : vec3<f32> = vs_TEXCOORD1;
  let x_573 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_575 : vec3<f32> = (x_569 + -(x_573));
  let x_576 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat3;
  let x_580 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(vec3<f32>(x_578.x, x_578.y, x_578.z), vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : f32 = u_xlat35;
  let x_585 : f32 = x_183.x_MainLightShadowParams.z;
  let x_588 : f32 = x_183.x_MainLightShadowParams.w;
  u_xlat35 = ((x_583 * x_585) + x_588);
  let x_590 : f32 = u_xlat35;
  u_xlat35 = clamp(x_590, 0.0f, 1.0f);
  let x_593 : f32 = u_xlat1.x;
  u_xlat3.x = (-(x_593) + 1.0f);
  let x_597 : f32 = u_xlat35;
  let x_599 : f32 = u_xlat3.x;
  let x_602 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_597 * x_599) + x_602);
  let x_611 : f32 = x_609.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_611 == -1.0f));
  let x_613 : bool = u_xlatb35;
  if (x_613) {
    let x_616 : vec3<f32> = vs_TEXCOORD1;
    let x_619 : vec4<f32> = x_609.x_MainLightWorldToLight[1i];
    let x_621 : vec2<f32> = (vec2<f32>(x_616.y, x_616.y) * vec2<f32>(x_619.x, x_619.y));
    let x_622 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
    let x_625 : vec4<f32> = x_609.x_MainLightWorldToLight[0i];
    let x_627 : vec3<f32> = vs_TEXCOORD1;
    let x_630 : vec4<f32> = u_xlat3;
    let x_632 : vec2<f32> = ((vec2<f32>(x_625.x, x_625.y) * vec2<f32>(x_627.x, x_627.x)) + vec2<f32>(x_630.x, x_630.y));
    let x_633 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
    let x_636 : vec4<f32> = x_609.x_MainLightWorldToLight[2i];
    let x_638 : vec3<f32> = vs_TEXCOORD1;
    let x_641 : vec4<f32> = u_xlat3;
    let x_643 : vec2<f32> = ((vec2<f32>(x_636.x, x_636.y) * vec2<f32>(x_638.z, x_638.z)) + vec2<f32>(x_641.x, x_641.y));
    let x_644 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
    let x_646 : vec4<f32> = u_xlat3;
    let x_649 : vec4<f32> = x_609.x_MainLightWorldToLight[3i];
    let x_651 : vec2<f32> = (vec2<f32>(x_646.x, x_646.y) + vec2<f32>(x_649.x, x_649.y));
    let x_652 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
    let x_654 : vec4<f32> = u_xlat3;
    let x_658 : vec2<f32> = ((vec2<f32>(x_654.x, x_654.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_659 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
    let x_666 : vec4<f32> = u_xlat3;
    let x_669 : f32 = x_43.x_GlobalMipBias.x;
    let x_670 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_666.x, x_666.y), x_669);
    u_xlat3 = x_670;
    let x_675 : f32 = x_609.x_MainLightCookieTextureFormat;
    let x_677 : f32 = x_609.x_MainLightCookieTextureFormat;
    let x_679 : f32 = x_609.x_MainLightCookieTextureFormat;
    let x_681 : f32 = x_609.x_MainLightCookieTextureFormat;
    let x_682 : vec4<f32> = vec4<f32>(x_675, x_677, x_679, x_681);
    let x_689 : vec4<bool> = (vec4<f32>(x_682.x, x_682.y, x_682.z, x_682.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_689.x, x_689.y);
    let x_692 : bool = u_xlatb5.y;
    if (x_692) {
      let x_697 : f32 = u_xlat3.w;
      x_693 = x_697;
    } else {
      let x_700 : f32 = u_xlat3.x;
      x_693 = x_700;
    }
    let x_701 : f32 = x_693;
    u_xlat35 = x_701;
    let x_703 : bool = u_xlatb5.x;
    if (x_703) {
      let x_707 : vec4<f32> = u_xlat3;
      x_704 = vec3<f32>(x_707.x, x_707.y, x_707.z);
    } else {
      let x_710 : f32 = u_xlat35;
      x_704 = vec3<f32>(x_710, x_710, x_710);
    }
    let x_712 : vec3<f32> = x_704;
    let x_713 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_719 : vec4<f32> = u_xlat3;
  let x_722 : vec4<f32> = x_43.x_MainLightColor;
  let x_724 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : f32 = u_xlat33;
  let x_729 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = (vec3<f32>(x_727, x_727, x_727) * vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec3<f32> = u_xlat11;
  let x_736 : vec4<f32> = u_xlat4;
  let x_738 : vec3<f32> = (vec3<f32>(x_734.x, x_734.x, x_734.x) * vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_742 : f32 = u_xlat1.x;
  let x_744 : f32 = x_378.unity_LightData.z;
  u_xlat11.x = (x_742 * x_744);
  let x_747 : vec3<f32> = u_xlat11;
  let x_749 : vec4<f32> = u_xlat3;
  let x_751 : vec3<f32> = (vec3<f32>(x_747.x, x_747.x, x_747.x) * vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat2;
  let x_757 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat11.x = dot(vec3<f32>(x_754.x, x_754.y, x_754.z), vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_762 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_762, 0.0f, 1.0f);
  let x_765 : vec3<f32> = u_xlat11;
  let x_767 : vec4<f32> = u_xlat3;
  let x_769 : vec3<f32> = (vec3<f32>(x_765.x, x_765.x, x_765.x) * vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat1;
  let x_774 : vec4<f32> = u_xlat3;
  let x_776 : vec3<f32> = (vec3<f32>(x_772.y, x_772.z, x_772.w) * vec3<f32>(x_774.x, x_774.y, x_774.z));
  let x_777 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_781 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_783 : f32 = x_378.unity_LightData.y;
  u_xlat11.x = min(x_781, x_783);
  let x_787 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_787));
  let x_791 : f32 = x_609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_793 : f32 = x_609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_795 : f32 = x_609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_797 : f32 = x_609.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_798 : vec4<f32> = vec4<f32>(x_791, x_793, x_795, x_797);
  let x_804 : vec4<bool> = (vec4<f32>(x_798.x, x_798.y, x_798.z, x_798.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_804.x, x_804.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_815 : u32 = u_xlatu_loop_1;
    let x_816 : u32 = u_xlatu11;
    if ((x_815 < x_816)) {
    } else {
      break;
    }
    let x_819 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_819 >> 2u);
    let x_822 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_822 & 3u));
    let x_825 : u32 = u_xlatu35;
    let x_828 : vec4<f32> = x_378.unity_LightIndices[bitcast<i32>(x_825)];
    let x_838 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_843 : vec4<u32> = indexable[x_838];
    u_xlat35 = dot(x_828, bitcast<vec4<f32>>(x_843));
    let x_846 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_846));
    let x_850 : vec3<f32> = vs_TEXCOORD1;
    let x_862 : u32 = u_xlatu35;
    let x_865 : vec4<f32> = x_861.x_AdditionalLightsPosition[bitcast<i32>(x_862)];
    let x_868 : u32 = u_xlatu35;
    let x_871 : vec4<f32> = x_861.x_AdditionalLightsPosition[bitcast<i32>(x_868)];
    u_xlat7 = ((-(x_850) * vec3<f32>(x_865.w, x_865.w, x_865.w)) + vec3<f32>(x_871.x, x_871.y, x_871.z));
    let x_875 : vec3<f32> = u_xlat7;
    let x_876 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_875, x_876);
    let x_878 : f32 = u_xlat36;
    u_xlat36 = max(x_878, 6.10351562e-05f);
    let x_882 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_882);
    let x_884 : f32 = u_xlat37;
    let x_886 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_884, x_884, x_884) * x_886);
    let x_888 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_888);
    let x_890 : f32 = u_xlat36;
    let x_891 : u32 = u_xlatu35;
    let x_894 : f32 = x_861.x_AdditionalLightsAttenuation[bitcast<i32>(x_891)].x;
    u_xlat36 = (x_890 * x_894);
    let x_896 : f32 = u_xlat36;
    let x_898 : f32 = u_xlat36;
    u_xlat36 = ((-(x_896) * x_898) + 1.0f);
    let x_901 : f32 = u_xlat36;
    u_xlat36 = max(x_901, 0.0f);
    let x_903 : f32 = u_xlat36;
    let x_904 : f32 = u_xlat36;
    u_xlat36 = (x_903 * x_904);
    let x_906 : f32 = u_xlat36;
    let x_907 : f32 = u_xlat37;
    u_xlat36 = (x_906 * x_907);
    let x_909 : u32 = u_xlatu35;
    let x_912 : vec4<f32> = x_861.x_AdditionalLightsSpotDir[bitcast<i32>(x_909)];
    let x_914 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), x_914);
    let x_916 : f32 = u_xlat37;
    let x_917 : u32 = u_xlatu35;
    let x_920 : f32 = x_861.x_AdditionalLightsAttenuation[bitcast<i32>(x_917)].z;
    let x_922 : u32 = u_xlatu35;
    let x_925 : f32 = x_861.x_AdditionalLightsAttenuation[bitcast<i32>(x_922)].w;
    u_xlat37 = ((x_916 * x_920) + x_925);
    let x_927 : f32 = u_xlat37;
    u_xlat37 = clamp(x_927, 0.0f, 1.0f);
    let x_929 : f32 = u_xlat37;
    let x_930 : f32 = u_xlat37;
    u_xlat37 = (x_929 * x_930);
    let x_932 : f32 = u_xlat36;
    let x_933 : f32 = u_xlat37;
    u_xlat36 = (x_932 * x_933);
    let x_936 : u32 = u_xlatu35;
    u_xlatu37 = (x_936 >> 5u);
    let x_939 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_939) & 31i)));
    let x_945 : i32 = u_xlati27;
    let x_947 : u32 = u_xlatu37;
    let x_950 : f32 = x_609.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_947)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_945) & bitcast<u32>(x_950)));
    let x_954 : i32 = u_xlati37;
    if ((x_954 != 0i)) {
      let x_964 : u32 = u_xlatu35;
      let x_967 : f32 = x_963.x_AdditionalLightsLightTypes[bitcast<i32>(x_964)].el;
      u_xlati37 = i32(x_967);
      let x_969 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_969 != 0i));
      let x_973 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_973) << bitcast<u32>(2i));
      let x_976 : i32 = u_xlati27;
      if ((x_976 != 0i)) {
        let x_981 : vec3<f32> = vs_TEXCOORD1;
        let x_983 : i32 = u_xlati38;
        let x_986 : i32 = u_xlati38;
        let x_990 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_983 + 1i) / 4i)][((x_986 + 1i) % 4i)];
        let x_992 : vec3<f32> = (vec3<f32>(x_981.y, x_981.y, x_981.y) * vec3<f32>(x_990.x, x_990.y, x_990.w));
        let x_993 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
        let x_995 : i32 = u_xlati38;
        let x_997 : i32 = u_xlati38;
        let x_1000 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[(x_995 / 4i)][(x_997 % 4i)];
        let x_1002 : vec3<f32> = vs_TEXCOORD1;
        let x_1005 : vec4<f32> = u_xlat8;
        let x_1007 : vec3<f32> = ((vec3<f32>(x_1000.x, x_1000.y, x_1000.w) * vec3<f32>(x_1002.x, x_1002.x, x_1002.x)) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1010 : i32 = u_xlati38;
        let x_1013 : i32 = u_xlati38;
        let x_1017 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1010 + 2i) / 4i)][((x_1013 + 2i) % 4i)];
        let x_1019 : vec3<f32> = vs_TEXCOORD1;
        let x_1022 : vec4<f32> = u_xlat8;
        let x_1024 : vec3<f32> = ((vec3<f32>(x_1017.x, x_1017.y, x_1017.w) * vec3<f32>(x_1019.z, x_1019.z, x_1019.z)) + vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
        let x_1025 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat8;
        let x_1029 : i32 = u_xlati38;
        let x_1032 : i32 = u_xlati38;
        let x_1036 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1029 + 3i) / 4i)][((x_1032 + 3i) % 4i)];
        let x_1038 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) + vec3<f32>(x_1036.x, x_1036.y, x_1036.w));
        let x_1039 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
        let x_1041 : vec4<f32> = u_xlat8;
        let x_1043 : vec4<f32> = u_xlat8;
        let x_1045 : vec2<f32> = (vec2<f32>(x_1041.x, x_1041.y) / vec2<f32>(x_1043.z, x_1043.z));
        let x_1046 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : vec4<f32> = u_xlat8;
        let x_1051 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1052 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1058 : vec2<f32> = clamp(vec2<f32>(x_1054.x, x_1054.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1059 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1061 : u32 = u_xlatu35;
        let x_1064 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1061)];
        let x_1066 : vec4<f32> = u_xlat8;
        let x_1069 : u32 = u_xlatu35;
        let x_1072 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1069)];
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1066.x, x_1066.y)) + vec2<f32>(x_1072.z, x_1072.w));
        let x_1075 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
      } else {
        let x_1079 : i32 = u_xlati37;
        u_xlatb37 = (x_1079 == 1i);
        let x_1081 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_1081);
        let x_1083 : i32 = u_xlati37;
        if ((x_1083 != 0i)) {
          let x_1089 : vec3<f32> = vs_TEXCOORD1;
          let x_1091 : i32 = u_xlati38;
          let x_1094 : i32 = u_xlati38;
          let x_1098 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1091 + 1i) / 4i)][((x_1094 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1089.y, x_1089.y) * vec2<f32>(x_1098.x, x_1098.y));
          let x_1101 : i32 = u_xlati38;
          let x_1103 : i32 = u_xlati38;
          let x_1106 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[(x_1101 / 4i)][(x_1103 % 4i)];
          let x_1108 : vec3<f32> = vs_TEXCOORD1;
          let x_1111 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1108.x, x_1108.x)) + x_1111);
          let x_1113 : i32 = u_xlati38;
          let x_1116 : i32 = u_xlati38;
          let x_1120 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1113 + 2i) / 4i)][((x_1116 + 2i) % 4i)];
          let x_1122 : vec3<f32> = vs_TEXCOORD1;
          let x_1125 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1122.z, x_1122.z)) + x_1125);
          let x_1127 : vec2<f32> = u_xlat30;
          let x_1128 : i32 = u_xlati38;
          let x_1131 : i32 = u_xlati38;
          let x_1135 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1128 + 3i) / 4i)][((x_1131 + 3i) % 4i)];
          u_xlat30 = (x_1127 + vec2<f32>(x_1135.x, x_1135.y));
          let x_1138 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1138 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1141 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1141);
          let x_1143 : u32 = u_xlatu35;
          let x_1146 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1143)];
          let x_1148 : vec2<f32> = u_xlat30;
          let x_1150 : u32 = u_xlatu35;
          let x_1153 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1150)];
          let x_1155 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.y) * x_1148) + vec2<f32>(x_1153.z, x_1153.w));
          let x_1156 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        } else {
          let x_1160 : vec3<f32> = vs_TEXCOORD1;
          let x_1162 : i32 = u_xlati38;
          let x_1165 : i32 = u_xlati38;
          let x_1169 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1162 + 1i) / 4i)][((x_1165 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.y) * x_1169);
          let x_1171 : i32 = u_xlati38;
          let x_1173 : i32 = u_xlati38;
          let x_1176 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[(x_1171 / 4i)][(x_1173 % 4i)];
          let x_1177 : vec3<f32> = vs_TEXCOORD1;
          let x_1180 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1176 * vec4<f32>(x_1177.x, x_1177.x, x_1177.x, x_1177.x)) + x_1180);
          let x_1182 : i32 = u_xlati38;
          let x_1185 : i32 = u_xlati38;
          let x_1189 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1182 + 2i) / 4i)][((x_1185 + 2i) % 4i)];
          let x_1190 : vec3<f32> = vs_TEXCOORD1;
          let x_1193 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1189 * vec4<f32>(x_1190.z, x_1190.z, x_1190.z, x_1190.z)) + x_1193);
          let x_1195 : vec4<f32> = u_xlat9;
          let x_1196 : i32 = u_xlati38;
          let x_1199 : i32 = u_xlati38;
          let x_1203 : vec4<f32> = x_963.x_AdditionalLightsWorldToLights[((x_1196 + 3i) / 4i)][((x_1199 + 3i) % 4i)];
          u_xlat9 = (x_1195 + x_1203);
          let x_1205 : vec4<f32> = u_xlat9;
          let x_1207 : vec4<f32> = u_xlat9;
          let x_1209 : vec3<f32> = (vec3<f32>(x_1205.x, x_1205.y, x_1205.z) / vec3<f32>(x_1207.w, x_1207.w, x_1207.w));
          let x_1210 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
          let x_1212 : vec4<f32> = u_xlat9;
          let x_1214 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_1212.x, x_1212.y, x_1212.z), vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
          let x_1217 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1217);
          let x_1219 : f32 = u_xlat37;
          let x_1221 : vec4<f32> = u_xlat9;
          let x_1223 : vec3<f32> = (vec3<f32>(x_1219, x_1219, x_1219) * vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
          let x_1224 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
          let x_1226 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_1226.x, x_1226.y, x_1226.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1231 : f32 = u_xlat37;
          u_xlat37 = max(x_1231, 0.000001f);
          let x_1234 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1234);
          let x_1237 : f32 = u_xlat37;
          let x_1239 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1237, x_1237, x_1237) * vec3<f32>(x_1239.z, x_1239.x, x_1239.y));
          let x_1243 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1243);
          let x_1247 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1247, 0.0f, 1.0f);
          let x_1251 : vec3<f32> = u_xlat10;
          let x_1254 : vec4<bool> = (vec4<f32>(x_1251.y, x_1251.z, x_1251.y, x_1251.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1254.x, x_1254.y);
          let x_1258 : bool = u_xlatb27.x;
          if (x_1258) {
            let x_1263 : f32 = u_xlat10.x;
            x_1259 = x_1263;
          } else {
            let x_1266 : f32 = u_xlat10.x;
            x_1259 = -(x_1266);
          }
          let x_1268 : f32 = x_1259;
          u_xlat27.x = x_1268;
          let x_1271 : bool = u_xlatb27.y;
          if (x_1271) {
            let x_1276 : f32 = u_xlat10.x;
            x_1272 = x_1276;
          } else {
            let x_1279 : f32 = u_xlat10.x;
            x_1272 = -(x_1279);
          }
          let x_1281 : f32 = x_1272;
          u_xlat27.y = x_1281;
          let x_1283 : vec4<f32> = u_xlat9;
          let x_1285 : f32 = u_xlat37;
          let x_1288 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1283.x, x_1283.y) * vec2<f32>(x_1285, x_1285)) + x_1288);
          let x_1290 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1290 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1293 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1293, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1297 : u32 = u_xlatu35;
          let x_1300 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1297)];
          let x_1302 : vec2<f32> = u_xlat27;
          let x_1304 : u32 = u_xlatu35;
          let x_1307 : vec4<f32> = x_963.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1304)];
          let x_1309 : vec2<f32> = ((vec2<f32>(x_1300.x, x_1300.y) * x_1302) + vec2<f32>(x_1307.z, x_1307.w));
          let x_1310 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
        }
      }
      let x_1317 : vec4<f32> = u_xlat8;
      let x_1320 : f32 = x_43.x_GlobalMipBias.x;
      let x_1321 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1317.x, x_1317.y), x_1320);
      u_xlat8 = x_1321;
      let x_1323 : bool = u_xlatb5.y;
      if (x_1323) {
        let x_1328 : f32 = u_xlat8.w;
        x_1324 = x_1328;
      } else {
        let x_1331 : f32 = u_xlat8.x;
        x_1324 = x_1331;
      }
      let x_1332 : f32 = x_1324;
      u_xlat37 = x_1332;
      let x_1334 : bool = u_xlatb5.x;
      if (x_1334) {
        let x_1338 : vec4<f32> = u_xlat8;
        x_1335 = vec3<f32>(x_1338.x, x_1338.y, x_1338.z);
      } else {
        let x_1341 : f32 = u_xlat37;
        x_1335 = vec3<f32>(x_1341, x_1341, x_1341);
      }
      let x_1343 : vec3<f32> = x_1335;
      let x_1344 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1350 : vec4<f32> = u_xlat8;
    let x_1352 : u32 = u_xlatu35;
    let x_1355 : vec4<f32> = x_861.x_AdditionalLightsColor[bitcast<i32>(x_1352)];
    let x_1357 : vec3<f32> = (vec3<f32>(x_1350.x, x_1350.y, x_1350.z) * vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
    let x_1358 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
    let x_1360 : f32 = u_xlat33;
    let x_1362 : vec4<f32> = u_xlat8;
    let x_1364 : vec3<f32> = (vec3<f32>(x_1360, x_1360, x_1360) * vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
    let x_1365 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
    let x_1367 : f32 = u_xlat36;
    let x_1369 : vec4<f32> = u_xlat8;
    let x_1371 : vec3<f32> = (vec3<f32>(x_1367, x_1367, x_1367) * vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
    let x_1372 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
    let x_1374 : vec4<f32> = u_xlat2;
    let x_1376 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1374.x, x_1374.y, x_1374.z), x_1376);
    let x_1378 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1378, 0.0f, 1.0f);
    let x_1380 : f32 = u_xlat35;
    let x_1382 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1380, x_1380, x_1380) * vec3<f32>(x_1382.x, x_1382.y, x_1382.z));
    let x_1385 : vec3<f32> = u_xlat7;
    let x_1386 : vec4<f32> = u_xlat1;
    let x_1389 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1385 * vec3<f32>(x_1386.y, x_1386.z, x_1386.w)) + x_1389);

    continuing {
      let x_1391 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1391 + bitcast<u32>(1i));
    }
  }
  let x_1393 : vec4<f32> = u_xlat4;
  let x_1395 : vec4<f32> = u_xlat1;
  let x_1398 : vec4<f32> = u_xlat3;
  let x_1400 : vec3<f32> = ((vec3<f32>(x_1393.x, x_1393.y, x_1393.z) * vec3<f32>(x_1395.y, x_1395.z, x_1395.w)) + vec3<f32>(x_1398.x, x_1398.y, x_1398.z));
  let x_1401 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
  let x_1405 : vec3<f32> = u_xlat6;
  let x_1406 : vec4<f32> = u_xlat1;
  let x_1408 : vec3<f32> = (x_1405 + vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
  let x_1409 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
  let x_1412 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1412 == 1.0f);
  let x_1414 : bool = u_xlatb11;
  let x_1415 : bool = u_xlatb22;
  u_xlatb11 = (x_1414 | x_1415);
  let x_1417 : bool = u_xlatb11;
  if (x_1417) {
    let x_1422 : f32 = u_xlat0.x;
    x_1418 = x_1422;
  } else {
    x_1418 = 1.0f;
  }
  let x_1424 : f32 = x_1418;
  SV_Target0.w = x_1424;
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

