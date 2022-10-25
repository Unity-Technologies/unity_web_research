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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_183 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_378 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_723 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_130 : f32;
  var u_xlatb8 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu8 : u32;
  var u_xlati8 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var x_561 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_850 : f32;
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
  u_xlat8.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat24;
  let x_104 : f32 = u_xlat16;
  u_xlat16 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat16;
  u_xlat16 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat8.x;
  let x_112 : f32 = u_xlat16;
  u_xlat8.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat8.x;
  u_xlat8.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb16;
  if (x_129) {
    let x_134 : f32 = u_xlat8.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat8.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat8.x;
  u_xlatb8 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb8;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec3<f32> = vs_TEXCOORD2;
  let x_161 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_160, x_161);
  let x_165 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_165);
  let x_169 : vec3<f32> = u_xlat8;
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
  u_xlat8.x = dot(x_292, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_300 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_300) + 4.0f);
  let x_307 : f32 = u_xlat8.x;
  u_xlatu8 = u32(x_307);
  let x_311 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_311) << bitcast<u32>(2i));
  let x_314 : vec3<f32> = vs_TEXCOORD1;
  let x_316 : i32 = u_xlati8;
  let x_319 : i32 = u_xlati8;
  let x_323 : vec4<f32> = x_183.x_MainLightWorldToShadow[((x_316 + 1i) / 4i)][((x_319 + 1i) % 4i)];
  let x_325 : vec3<f32> = (vec3<f32>(x_314.y, x_314.y, x_314.y) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : i32 = u_xlati8;
  let x_330 : i32 = u_xlati8;
  let x_333 : vec4<f32> = x_183.x_MainLightWorldToShadow[(x_328 / 4i)][(x_330 % 4i)];
  let x_335 : vec3<f32> = vs_TEXCOORD1;
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.x, x_335.x, x_335.x)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : i32 = u_xlati8;
  let x_346 : i32 = u_xlati8;
  let x_350 : vec4<f32> = x_183.x_MainLightWorldToShadow[((x_343 + 2i) / 4i)][((x_346 + 2i) % 4i)];
  let x_352 : vec3<f32> = vs_TEXCOORD1;
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : vec3<f32> = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.z, x_352.z, x_352.z)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat3;
  let x_362 : i32 = u_xlati8;
  let x_365 : i32 = u_xlati8;
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
  u_xlat8.x = (x_421 * x_423);
  let x_427 : f32 = u_xlat2.x;
  let x_429 : f32 = u_xlat2.x;
  let x_432 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_427 * x_429) + -(x_432));
  let x_438 : vec4<f32> = x_378.unity_SHC;
  let x_440 : vec3<f32> = u_xlat8;
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
  let x_467 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_466.x, x_467.y, x_466.y);
  let x_469 : vec3<f32> = u_xlat8;
  let x_471 : vec4<f32> = hlslcc_FragCoord;
  let x_473 : vec2<f32> = (vec2<f32>(x_469.x, x_469.z) * vec2<f32>(x_471.x, x_471.y));
  let x_474 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
  let x_477 : f32 = u_xlat5.y;
  let x_480 : f32 = x_43.x_ScaleBiasRt.x;
  let x_483 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat8.x = ((x_477 * x_480) + x_483);
  let x_487 : f32 = u_xlat8.x;
  u_xlat5.z = (-(x_487) + 1.0f);
  let x_496 : vec4<f32> = u_xlat5;
  let x_499 : f32 = x_43.x_GlobalMipBias.x;
  let x_500 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_496.x, x_496.z), x_499);
  u_xlat8.x = x_500.x;
  let x_504 : f32 = u_xlat8.x;
  u_xlat24 = (x_504 + -1.0f);
  let x_507 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_508 : f32 = u_xlat24;
  u_xlat24 = ((x_507 * x_508) + 1.0f);
  let x_512 : f32 = u_xlat8.x;
  u_xlat8.x = min(x_512, 1.0f);
  let x_516 : vec4<f32> = u_xlat3;
  let x_517 : vec2<f32> = vec2<f32>(x_516.x, x_516.y);
  let x_519 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_517.x, x_517.y, x_519);
  let x_531 : vec3<f32> = txVec0;
  let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_531.xy, x_531.z);
  u_xlat1.x = x_533;
  let x_537 : f32 = x_183.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_537) + 1.0f);
  let x_541 : f32 = u_xlat1.x;
  let x_543 : f32 = x_183.x_MainLightShadowParams.x;
  let x_545 : f32 = u_xlat26;
  u_xlat1.x = ((x_541 * x_543) + x_545);
  let x_550 : f32 = u_xlat3.z;
  u_xlatb26 = (0.0f >= x_550);
  let x_553 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_553 >= 1.0f);
  let x_556 : bool = u_xlatb26;
  let x_558 : bool = u_xlatb3.x;
  u_xlatb26 = (x_556 | x_558);
  let x_560 : bool = u_xlatb26;
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
  u_xlat26 = dot(vec3<f32>(x_578.x, x_578.y, x_578.z), vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : f32 = u_xlat26;
  let x_585 : f32 = x_183.x_MainLightShadowParams.z;
  let x_588 : f32 = x_183.x_MainLightShadowParams.w;
  u_xlat26 = ((x_583 * x_585) + x_588);
  let x_590 : f32 = u_xlat26;
  u_xlat26 = clamp(x_590, 0.0f, 1.0f);
  let x_593 : f32 = u_xlat1.x;
  u_xlat3.x = (-(x_593) + 1.0f);
  let x_597 : f32 = u_xlat26;
  let x_599 : f32 = u_xlat3.x;
  let x_602 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_597 * x_599) + x_602);
  let x_605 : f32 = u_xlat24;
  let x_608 : vec4<f32> = x_43.x_MainLightColor;
  let x_610 : vec3<f32> = (vec3<f32>(x_605, x_605, x_605) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec3<f32> = u_xlat8;
  let x_615 : vec4<f32> = u_xlat4;
  let x_617 : vec3<f32> = (vec3<f32>(x_613.x, x_613.x, x_613.x) * vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_621 : f32 = u_xlat1.x;
  let x_623 : f32 = x_378.unity_LightData.z;
  u_xlat8.x = (x_621 * x_623);
  let x_626 : vec3<f32> = u_xlat8;
  let x_628 : vec4<f32> = u_xlat3;
  let x_630 : vec3<f32> = (vec3<f32>(x_626.x, x_626.x, x_626.x) * vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec4<f32> = u_xlat2;
  let x_636 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat8.x = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_641 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_641, 0.0f, 1.0f);
  let x_644 : vec3<f32> = u_xlat8;
  let x_646 : vec4<f32> = u_xlat3;
  let x_648 : vec3<f32> = (vec3<f32>(x_644.x, x_644.x, x_644.x) * vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : vec4<f32> = u_xlat1;
  let x_653 : vec4<f32> = u_xlat3;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.y, x_651.z, x_651.w) * vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_660 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_662 : f32 = x_378.unity_LightData.y;
  u_xlat8.x = min(x_660, x_662);
  let x_666 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_666));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_678 : u32 = u_xlatu_loop_1;
    let x_679 : u32 = u_xlatu8;
    if ((x_678 < x_679)) {
    } else {
      break;
    }
    let x_682 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_682 >> 2u);
    let x_685 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_685 & 3u));
    let x_688 : u32 = u_xlatu26;
    let x_691 : vec4<f32> = x_378.unity_LightIndices[bitcast<i32>(x_688)];
    let x_701 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_706 : vec4<u32> = indexable[x_701];
    u_xlat26 = dot(x_691, bitcast<vec4<f32>>(x_706));
    let x_710 : f32 = u_xlat26;
    u_xlati26 = i32(x_710);
    let x_712 : vec3<f32> = vs_TEXCOORD1;
    let x_724 : i32 = u_xlati26;
    let x_726 : vec4<f32> = x_723.x_AdditionalLightsPosition[x_724];
    let x_729 : i32 = u_xlati26;
    let x_731 : vec4<f32> = x_723.x_AdditionalLightsPosition[x_729];
    u_xlat6 = ((-(x_712) * vec3<f32>(x_726.w, x_726.w, x_726.w)) + vec3<f32>(x_731.x, x_731.y, x_731.z));
    let x_735 : vec3<f32> = u_xlat6;
    let x_736 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_735, x_736);
    let x_738 : f32 = u_xlat27;
    u_xlat27 = max(x_738, 6.10351562e-05f);
    let x_742 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_742);
    let x_744 : f32 = u_xlat28;
    let x_746 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_744, x_744, x_744) * x_746);
    let x_748 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_748);
    let x_750 : f32 = u_xlat27;
    let x_751 : i32 = u_xlati26;
    let x_753 : f32 = x_723.x_AdditionalLightsAttenuation[x_751].x;
    u_xlat27 = (x_750 * x_753);
    let x_755 : f32 = u_xlat27;
    let x_757 : f32 = u_xlat27;
    u_xlat27 = ((-(x_755) * x_757) + 1.0f);
    let x_760 : f32 = u_xlat27;
    u_xlat27 = max(x_760, 0.0f);
    let x_762 : f32 = u_xlat27;
    let x_763 : f32 = u_xlat27;
    u_xlat27 = (x_762 * x_763);
    let x_765 : f32 = u_xlat27;
    let x_766 : f32 = u_xlat28;
    u_xlat27 = (x_765 * x_766);
    let x_768 : i32 = u_xlati26;
    let x_770 : vec4<f32> = x_723.x_AdditionalLightsSpotDir[x_768];
    let x_772 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_770.x, x_770.y, x_770.z), x_772);
    let x_774 : f32 = u_xlat28;
    let x_775 : i32 = u_xlati26;
    let x_777 : f32 = x_723.x_AdditionalLightsAttenuation[x_775].z;
    let x_779 : i32 = u_xlati26;
    let x_781 : f32 = x_723.x_AdditionalLightsAttenuation[x_779].w;
    u_xlat28 = ((x_774 * x_777) + x_781);
    let x_783 : f32 = u_xlat28;
    u_xlat28 = clamp(x_783, 0.0f, 1.0f);
    let x_785 : f32 = u_xlat28;
    let x_786 : f32 = u_xlat28;
    u_xlat28 = (x_785 * x_786);
    let x_788 : f32 = u_xlat27;
    let x_789 : f32 = u_xlat28;
    u_xlat27 = (x_788 * x_789);
    let x_792 : f32 = u_xlat24;
    let x_794 : i32 = u_xlati26;
    let x_796 : vec4<f32> = x_723.x_AdditionalLightsColor[x_794];
    u_xlat7 = (vec3<f32>(x_792, x_792, x_792) * vec3<f32>(x_796.x, x_796.y, x_796.z));
    let x_799 : f32 = u_xlat27;
    let x_801 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_799, x_799, x_799) * x_801);
    let x_803 : vec4<f32> = u_xlat2;
    let x_805 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_803.x, x_803.y, x_803.z), x_805);
    let x_807 : f32 = u_xlat26;
    u_xlat26 = clamp(x_807, 0.0f, 1.0f);
    let x_809 : f32 = u_xlat26;
    let x_811 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_809, x_809, x_809) * x_811);
    let x_813 : vec3<f32> = u_xlat6;
    let x_814 : vec4<f32> = u_xlat1;
    let x_817 : vec4<f32> = u_xlat5;
    let x_819 : vec3<f32> = ((x_813 * vec3<f32>(x_814.y, x_814.z, x_814.w)) + vec3<f32>(x_817.x, x_817.y, x_817.z));
    let x_820 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);

    continuing {
      let x_822 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_822 + bitcast<u32>(1i));
    }
  }
  let x_824 : vec4<f32> = u_xlat4;
  let x_826 : vec4<f32> = u_xlat1;
  let x_829 : vec4<f32> = u_xlat3;
  let x_831 : vec3<f32> = ((vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(x_826.y, x_826.z, x_826.w)) + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_836 : vec4<f32> = u_xlat5;
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec3<f32> = (vec3<f32>(x_836.x, x_836.y, x_836.z) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_844 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_844 == 1.0f);
  let x_846 : bool = u_xlatb8;
  let x_847 : bool = u_xlatb16;
  u_xlatb8 = (x_846 | x_847);
  let x_849 : bool = u_xlatb8;
  if (x_849) {
    let x_854 : f32 = u_xlat0.x;
    x_850 = x_854;
  } else {
    x_850 = 1.0f;
  }
  let x_856 : f32 = x_850;
  SV_Target0.w = x_856;
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

