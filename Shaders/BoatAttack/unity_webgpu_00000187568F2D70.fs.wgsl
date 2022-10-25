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

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_155 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1923 : AdditionalLights;

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
  var u_xlatb4 : bool;
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
  var u_xlatb20 : bool;
  var u_xlatb38 : bool;
  var x_1763 : f32;
  var u_xlat38 : f32;
  var u_xlatu55 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu58 : u32;
  var u_xlati5 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati58 : i32;
  var u_xlat59 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_2074 : f32;
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
      let x_571 : f32 = x_155.x_MainLightShadowParams.y;
      u_xlatb4 = (x_571 == 2.0f);
      let x_573 : bool = u_xlatb4;
      if (x_573) {
        let x_576 : vec4<f32> = u_xlat2;
        let x_580 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_585 : vec2<f32> = ((vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_580.z, x_580.w)) + vec2<f32>(0.5f, 0.5f));
        let x_586 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
        let x_588 : vec4<f32> = u_xlat4;
        let x_590 : vec2<f32> = floor(vec2<f32>(x_588.x, x_588.y));
        let x_591 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
        let x_595 : vec4<f32> = u_xlat2;
        let x_598 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_601 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_595.x, x_595.y) * vec2<f32>(x_598.z, x_598.w)) + -(vec2<f32>(x_601.x, x_601.y)));
        let x_605 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_605.x, x_605.x, x_605.y, x_605.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_610 : vec4<f32> = u_xlat5;
        let x_612 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_610.x, x_610.x, x_610.z, x_610.z) * vec4<f32>(x_612.x, x_612.x, x_612.z, x_612.z));
        let x_615 : vec4<f32> = u_xlat6;
        let x_619 : vec2<f32> = (vec2<f32>(x_615.y, x_615.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_620 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_619.x, x_620.y, x_619.y, x_620.w);
        let x_622 : vec4<f32> = u_xlat6;
        let x_625 : vec2<f32> = u_xlat40;
        let x_627 : vec2<f32> = ((vec2<f32>(x_622.x, x_622.z) * vec2<f32>(0.5f, 0.5f)) + -(x_625));
        let x_628 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
        let x_631 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_631) + vec2<f32>(1.0f, 1.0f));
        let x_635 : vec2<f32> = u_xlat40;
        let x_637 : vec2<f32> = min(x_635, vec2<f32>(0.0f, 0.0f));
        let x_638 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_640 : vec4<f32> = u_xlat7;
        let x_643 : vec4<f32> = u_xlat7;
        let x_646 : vec2<f32> = u_xlat42;
        let x_647 : vec2<f32> = ((-(vec2<f32>(x_640.x, x_640.y)) * vec2<f32>(x_643.x, x_643.y)) + x_646);
        let x_648 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
        let x_650 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_650, vec2<f32>(0.0f, 0.0f));
        let x_652 : vec2<f32> = u_xlat40;
        let x_654 : vec2<f32> = u_xlat40;
        let x_656 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_652) * x_654) + vec2<f32>(x_656.y, x_656.w));
        let x_659 : vec4<f32> = u_xlat7;
        let x_661 : vec2<f32> = (vec2<f32>(x_659.x, x_659.y) + vec2<f32>(1.0f, 1.0f));
        let x_662 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
        let x_664 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_664 + vec2<f32>(1.0f, 1.0f));
        let x_667 : vec4<f32> = u_xlat6;
        let x_671 : vec2<f32> = (vec2<f32>(x_667.x, x_667.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_672 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
        let x_674 : vec2<f32> = u_xlat42;
        let x_675 : vec2<f32> = (x_674 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_676 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat7;
        let x_680 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_681 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_684 : vec2<f32> = u_xlat40;
        let x_685 : vec2<f32> = (x_684 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_686 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
        let x_688 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_688.y, x_688.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_692 : f32 = u_xlat7.x;
        u_xlat8.z = x_692;
        let x_695 : f32 = u_xlat40.x;
        u_xlat8.w = x_695;
        let x_698 : f32 = u_xlat9.x;
        u_xlat6.z = x_698;
        let x_701 : f32 = u_xlat5.x;
        u_xlat6.w = x_701;
        let x_704 : vec4<f32> = u_xlat6;
        let x_706 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_704.z, x_704.w, x_704.x, x_704.z) + vec4<f32>(x_706.z, x_706.w, x_706.x, x_706.z));
        let x_710 : f32 = u_xlat8.y;
        u_xlat7.z = x_710;
        let x_713 : f32 = u_xlat40.y;
        u_xlat7.w = x_713;
        let x_716 : f32 = u_xlat6.y;
        u_xlat9.z = x_716;
        let x_719 : f32 = u_xlat5.z;
        u_xlat9.w = x_719;
        let x_721 : vec4<f32> = u_xlat7;
        let x_723 : vec4<f32> = u_xlat9;
        let x_725 : vec3<f32> = (vec3<f32>(x_721.z, x_721.y, x_721.w) + vec3<f32>(x_723.z, x_723.y, x_723.w));
        let x_726 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat6;
        let x_730 : vec4<f32> = u_xlat10;
        let x_732 : vec3<f32> = (vec3<f32>(x_728.x, x_728.z, x_728.w) / vec3<f32>(x_730.z, x_730.w, x_730.y));
        let x_733 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_735 : vec4<f32> = u_xlat6;
        let x_741 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_742 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
        let x_744 : vec4<f32> = u_xlat9;
        let x_746 : vec4<f32> = u_xlat5;
        let x_748 : vec3<f32> = (vec3<f32>(x_744.z, x_744.y, x_744.w) / vec3<f32>(x_746.x, x_746.y, x_746.z));
        let x_749 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
        let x_751 : vec4<f32> = u_xlat7;
        let x_753 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_754 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat6;
        let x_759 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_761 : vec3<f32> = (vec3<f32>(x_756.y, x_756.x, x_756.z) * vec3<f32>(x_759.x, x_759.x, x_759.x));
        let x_762 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat7;
        let x_767 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_769 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(x_767.y, x_767.y, x_767.y));
        let x_770 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
        let x_773 : f32 = u_xlat7.x;
        u_xlat6.w = x_773;
        let x_775 : vec4<f32> = u_xlat4;
        let x_778 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_781 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_775.x, x_775.y, x_775.x, x_775.y) * vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y)) + vec4<f32>(x_781.y, x_781.w, x_781.x, x_781.w));
        let x_784 : vec4<f32> = u_xlat4;
        let x_787 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_790 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_784.x, x_784.y) * vec2<f32>(x_787.x, x_787.y)) + vec2<f32>(x_790.z, x_790.w));
        let x_794 : f32 = u_xlat6.y;
        u_xlat7.w = x_794;
        let x_796 : vec4<f32> = u_xlat7;
        let x_797 : vec2<f32> = vec2<f32>(x_796.y, x_796.z);
        let x_798 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_798.x, x_797.x, x_798.z, x_797.y);
        let x_800 : vec4<f32> = u_xlat4;
        let x_803 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_806 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y) * vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y)) + vec4<f32>(x_806.x, x_806.y, x_806.z, x_806.y));
        let x_809 : vec4<f32> = u_xlat4;
        let x_812 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_815 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_809.x, x_809.y, x_809.x, x_809.y) * vec4<f32>(x_812.x, x_812.y, x_812.x, x_812.y)) + vec4<f32>(x_815.w, x_815.y, x_815.w, x_815.z));
        let x_818 : vec4<f32> = u_xlat4;
        let x_821 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_824 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_818.x, x_818.y, x_818.x, x_818.y) * vec4<f32>(x_821.x, x_821.y, x_821.x, x_821.y)) + vec4<f32>(x_824.x, x_824.w, x_824.z, x_824.w));
        let x_828 : vec4<f32> = u_xlat5;
        let x_830 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_828.x, x_828.x, x_828.x, x_828.y) * vec4<f32>(x_830.z, x_830.w, x_830.y, x_830.z));
        let x_834 : vec4<f32> = u_xlat5;
        let x_836 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_834.y, x_834.y, x_834.z, x_834.z) * x_836);
        let x_839 : f32 = u_xlat5.z;
        let x_841 : f32 = u_xlat10.y;
        u_xlat4.x = (x_839 * x_841);
        let x_845 : vec4<f32> = u_xlat8;
        let x_846 : vec2<f32> = vec2<f32>(x_845.x, x_845.y);
        let x_848 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_856 : vec3<f32> = txVec4;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_856.xy, x_856.z);
        u_xlat22 = x_858;
        let x_860 : vec4<f32> = u_xlat8;
        let x_861 : vec2<f32> = vec2<f32>(x_860.z, x_860.w);
        let x_863 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_870 : vec3<f32> = txVec5;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_870.xy, x_870.z);
        u_xlat5.x = x_872;
        let x_875 : f32 = u_xlat5.x;
        let x_877 : f32 = u_xlat11.y;
        u_xlat5.x = (x_875 * x_877);
        let x_881 : f32 = u_xlat11.x;
        let x_882 : f32 = u_xlat22;
        let x_885 : f32 = u_xlat5.x;
        u_xlat22 = ((x_881 * x_882) + x_885);
        let x_888 : vec2<f32> = u_xlat40;
        let x_890 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec6;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_897.xy, x_897.z);
        u_xlat40.x = x_899;
        let x_902 : f32 = u_xlat11.z;
        let x_904 : f32 = u_xlat40.x;
        let x_906 : f32 = u_xlat22;
        u_xlat22 = ((x_902 * x_904) + x_906);
        let x_909 : vec4<f32> = u_xlat7;
        let x_910 : vec2<f32> = vec2<f32>(x_909.x, x_909.y);
        let x_912 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec7;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_919.xy, x_919.z);
        u_xlat40.x = x_921;
        let x_924 : f32 = u_xlat11.w;
        let x_926 : f32 = u_xlat40.x;
        let x_928 : f32 = u_xlat22;
        u_xlat22 = ((x_924 * x_926) + x_928);
        let x_931 : vec4<f32> = u_xlat9;
        let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
        let x_934 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_941 : vec3<f32> = txVec8;
        let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_941.xy, x_941.z);
        u_xlat40.x = x_943;
        let x_946 : f32 = u_xlat12.x;
        let x_948 : f32 = u_xlat40.x;
        let x_950 : f32 = u_xlat22;
        u_xlat22 = ((x_946 * x_948) + x_950);
        let x_953 : vec4<f32> = u_xlat9;
        let x_954 : vec2<f32> = vec2<f32>(x_953.z, x_953.w);
        let x_956 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_954.x, x_954.y, x_956);
        let x_963 : vec3<f32> = txVec9;
        let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_963.xy, x_963.z);
        u_xlat40.x = x_965;
        let x_968 : f32 = u_xlat12.y;
        let x_970 : f32 = u_xlat40.x;
        let x_972 : f32 = u_xlat22;
        u_xlat22 = ((x_968 * x_970) + x_972);
        let x_975 : vec4<f32> = u_xlat7;
        let x_976 : vec2<f32> = vec2<f32>(x_975.z, x_975.w);
        let x_978 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_976.x, x_976.y, x_978);
        let x_985 : vec3<f32> = txVec10;
        let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_985.xy, x_985.z);
        u_xlat40.x = x_987;
        let x_990 : f32 = u_xlat12.z;
        let x_992 : f32 = u_xlat40.x;
        let x_994 : f32 = u_xlat22;
        u_xlat22 = ((x_990 * x_992) + x_994);
        let x_997 : vec4<f32> = u_xlat6;
        let x_998 : vec2<f32> = vec2<f32>(x_997.x, x_997.y);
        let x_1000 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_998.x, x_998.y, x_1000);
        let x_1007 : vec3<f32> = txVec11;
        let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1007.xy, x_1007.z);
        u_xlat40.x = x_1009;
        let x_1012 : f32 = u_xlat12.w;
        let x_1014 : f32 = u_xlat40.x;
        let x_1016 : f32 = u_xlat22;
        u_xlat22 = ((x_1012 * x_1014) + x_1016);
        let x_1019 : vec4<f32> = u_xlat6;
        let x_1020 : vec2<f32> = vec2<f32>(x_1019.z, x_1019.w);
        let x_1022 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
        let x_1029 : vec3<f32> = txVec12;
        let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1029.xy, x_1029.z);
        u_xlat40.x = x_1031;
        let x_1034 : f32 = u_xlat4.x;
        let x_1036 : f32 = u_xlat40.x;
        let x_1038 : f32 = u_xlat22;
        u_xlat57 = ((x_1034 * x_1036) + x_1038);
      } else {
        let x_1041 : vec4<f32> = u_xlat2;
        let x_1044 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1047 : vec2<f32> = ((vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(x_1044.z, x_1044.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1048 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
        let x_1050 : vec4<f32> = u_xlat4;
        let x_1052 : vec2<f32> = floor(vec2<f32>(x_1050.x, x_1050.y));
        let x_1053 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1052.x, x_1052.y, x_1053.z, x_1053.w);
        let x_1055 : vec4<f32> = u_xlat2;
        let x_1058 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_1055.x, x_1055.y) * vec2<f32>(x_1058.z, x_1058.w)) + -(vec2<f32>(x_1061.x, x_1061.y)));
        let x_1065 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_1065.x, x_1065.x, x_1065.y, x_1065.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1068 : vec4<f32> = u_xlat5;
        let x_1070 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1068.x, x_1068.x, x_1068.z, x_1068.z) * vec4<f32>(x_1070.x, x_1070.x, x_1070.z, x_1070.z));
        let x_1073 : vec4<f32> = u_xlat6;
        let x_1077 : vec2<f32> = (vec2<f32>(x_1073.y, x_1073.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1078.x, x_1077.x, x_1078.z, x_1077.y);
        let x_1080 : vec4<f32> = u_xlat6;
        let x_1083 : vec2<f32> = u_xlat40;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1080.x, x_1080.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1083));
        let x_1086 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1085.x, x_1086.y, x_1085.y, x_1086.w);
        let x_1088 : vec2<f32> = u_xlat40;
        let x_1090 : vec2<f32> = (-(x_1088) + vec2<f32>(1.0f, 1.0f));
        let x_1091 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1093 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_1093, vec2<f32>(0.0f, 0.0f));
        let x_1095 : vec2<f32> = u_xlat42;
        let x_1097 : vec2<f32> = u_xlat42;
        let x_1099 : vec4<f32> = u_xlat6;
        let x_1101 : vec2<f32> = ((-(x_1095) * x_1097) + vec2<f32>(x_1099.x, x_1099.y));
        let x_1102 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1104 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_1104, vec2<f32>(0.0f, 0.0f));
        let x_1107 : vec2<f32> = u_xlat42;
        let x_1109 : vec2<f32> = u_xlat42;
        let x_1111 : vec4<f32> = u_xlat5;
        let x_1113 : vec2<f32> = ((-(x_1107) * x_1109) + vec2<f32>(x_1111.y, x_1111.w));
        let x_1114 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1113.x, x_1114.y, x_1113.y);
        let x_1116 : vec4<f32> = u_xlat6;
        let x_1119 : vec2<f32> = (vec2<f32>(x_1116.x, x_1116.y) + vec2<f32>(2.0f, 2.0f));
        let x_1120 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1122 : vec3<f32> = u_xlat23;
        let x_1124 : vec2<f32> = (vec2<f32>(x_1122.x, x_1122.z) + vec2<f32>(2.0f, 2.0f));
        let x_1125 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1125.x, x_1124.x, x_1125.z, x_1124.y);
        let x_1128 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1128 * 0.081632003f);
        let x_1132 : vec4<f32> = u_xlat5;
        let x_1135 : vec3<f32> = (vec3<f32>(x_1132.z, x_1132.x, x_1132.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1136 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
        let x_1138 : vec4<f32> = u_xlat6;
        let x_1141 : vec2<f32> = (vec2<f32>(x_1138.x, x_1138.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1142 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1145 : f32 = u_xlat9.y;
        u_xlat8.x = x_1145;
        let x_1147 : vec2<f32> = u_xlat40;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1147.x, x_1147.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1155.x, x_1154.x, x_1155.z, x_1154.y);
        let x_1157 : vec2<f32> = u_xlat40;
        let x_1161 : vec2<f32> = ((vec2<f32>(x_1157.x, x_1157.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1162 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1161.x, x_1162.y, x_1161.y, x_1162.w);
        let x_1165 : f32 = u_xlat5.x;
        u_xlat6.y = x_1165;
        let x_1168 : f32 = u_xlat7.y;
        u_xlat6.w = x_1168;
        let x_1170 : vec4<f32> = u_xlat6;
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1170 + x_1171);
        let x_1173 : vec2<f32> = u_xlat40;
        let x_1176 : vec2<f32> = ((vec2<f32>(x_1173.y, x_1173.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1177.x, x_1176.x, x_1177.z, x_1176.y);
        let x_1179 : vec2<f32> = u_xlat40;
        let x_1182 : vec2<f32> = ((vec2<f32>(x_1179.y, x_1179.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1183 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1182.x, x_1183.y, x_1182.y, x_1183.w);
        let x_1186 : f32 = u_xlat5.y;
        u_xlat7.y = x_1186;
        let x_1188 : vec4<f32> = u_xlat7;
        let x_1189 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1188 + x_1189);
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1192 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1191 / x_1192);
        let x_1194 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1194 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1200 : vec4<f32> = u_xlat7;
        let x_1201 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1200 / x_1201);
        let x_1203 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1203 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1205 : vec4<f32> = u_xlat6;
        let x_1208 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1205.w, x_1205.x, x_1205.y, x_1205.z) * vec4<f32>(x_1208.x, x_1208.x, x_1208.x, x_1208.x));
        let x_1211 : vec4<f32> = u_xlat7;
        let x_1214 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1211.x, x_1211.w, x_1211.y, x_1211.z) * vec4<f32>(x_1214.y, x_1214.y, x_1214.y, x_1214.y));
        let x_1217 : vec4<f32> = u_xlat6;
        let x_1218 : vec3<f32> = vec3<f32>(x_1217.y, x_1217.z, x_1217.w);
        let x_1219 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1218.x, x_1219.y, x_1218.y, x_1218.z);
        let x_1222 : f32 = u_xlat7.x;
        u_xlat9.y = x_1222;
        let x_1224 : vec4<f32> = u_xlat4;
        let x_1227 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.y) * vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y)) + vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1230.y));
        let x_1233 : vec4<f32> = u_xlat4;
        let x_1236 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1233.x, x_1233.y) * vec2<f32>(x_1236.x, x_1236.y)) + vec2<f32>(x_1239.w, x_1239.y));
        let x_1243 : f32 = u_xlat9.y;
        u_xlat6.y = x_1243;
        let x_1246 : f32 = u_xlat7.z;
        u_xlat9.y = x_1246;
        let x_1248 : vec4<f32> = u_xlat4;
        let x_1251 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y) * vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.y)) + vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1254.y));
        let x_1257 : vec4<f32> = u_xlat4;
        let x_1260 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat9;
        let x_1265 : vec2<f32> = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(x_1260.x, x_1260.y)) + vec2<f32>(x_1263.w, x_1263.y));
        let x_1266 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
        let x_1269 : f32 = u_xlat9.y;
        u_xlat6.z = x_1269;
        let x_1272 : vec4<f32> = u_xlat4;
        let x_1275 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.x, x_1278.y, x_1278.x, x_1278.z));
        let x_1282 : f32 = u_xlat7.w;
        u_xlat9.y = x_1282;
        let x_1285 : vec4<f32> = u_xlat4;
        let x_1288 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1291 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y) * vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y)) + vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1291.y));
        let x_1295 : vec4<f32> = u_xlat4;
        let x_1298 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1295.x, x_1295.y) * vec2<f32>(x_1298.x, x_1298.y)) + vec2<f32>(x_1301.w, x_1301.y));
        let x_1305 : f32 = u_xlat9.y;
        u_xlat6.w = x_1305;
        let x_1308 : vec4<f32> = u_xlat4;
        let x_1311 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1308.x, x_1308.y) * vec2<f32>(x_1311.x, x_1311.y)) + vec2<f32>(x_1314.x, x_1314.w));
        let x_1317 : vec4<f32> = u_xlat9;
        let x_1318 : vec3<f32> = vec3<f32>(x_1317.x, x_1317.z, x_1317.w);
        let x_1319 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1318.x, x_1319.y, x_1318.y, x_1318.z);
        let x_1321 : vec4<f32> = u_xlat4;
        let x_1324 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y) * vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.y)) + vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1327.y));
        let x_1331 : vec4<f32> = u_xlat4;
        let x_1334 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1331.x, x_1331.y) * vec2<f32>(x_1334.x, x_1334.y)) + vec2<f32>(x_1337.w, x_1337.y));
        let x_1341 : f32 = u_xlat6.x;
        u_xlat7.x = x_1341;
        let x_1343 : vec4<f32> = u_xlat4;
        let x_1346 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1349 : vec4<f32> = u_xlat7;
        let x_1351 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.y) * vec2<f32>(x_1346.x, x_1346.y)) + vec2<f32>(x_1349.x, x_1349.y));
        let x_1352 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
        let x_1355 : vec4<f32> = u_xlat5;
        let x_1357 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1355.x, x_1355.x, x_1355.x, x_1355.x) * x_1357);
        let x_1360 : vec4<f32> = u_xlat5;
        let x_1362 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1360.y, x_1360.y, x_1360.y, x_1360.y) * x_1362);
        let x_1365 : vec4<f32> = u_xlat5;
        let x_1367 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1365.z, x_1365.z, x_1365.z, x_1365.z) * x_1367);
        let x_1369 : vec4<f32> = u_xlat5;
        let x_1371 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1369.w, x_1369.w, x_1369.w, x_1369.w) * x_1371);
        let x_1374 : vec4<f32> = u_xlat10;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec13;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1384.xy, x_1384.z);
        u_xlat6.x = x_1386;
        let x_1389 : vec4<f32> = u_xlat10;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.z, x_1389.w);
        let x_1392 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1400 : vec3<f32> = txVec14;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat60 = x_1402;
        let x_1403 : f32 = u_xlat60;
        let x_1405 : f32 = u_xlat15.y;
        u_xlat60 = (x_1403 * x_1405);
        let x_1408 : f32 = u_xlat15.x;
        let x_1410 : f32 = u_xlat6.x;
        let x_1412 : f32 = u_xlat60;
        u_xlat6.x = ((x_1408 * x_1410) + x_1412);
        let x_1416 : vec2<f32> = u_xlat40;
        let x_1418 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec15;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1425.xy, x_1425.z);
        u_xlat40.x = x_1427;
        let x_1430 : f32 = u_xlat15.z;
        let x_1432 : f32 = u_xlat40.x;
        let x_1435 : f32 = u_xlat6.x;
        u_xlat40.x = ((x_1430 * x_1432) + x_1435);
        let x_1439 : vec4<f32> = u_xlat13;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.x, x_1439.y);
        let x_1442 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1450 : vec3<f32> = txVec16;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1450.xy, x_1450.z);
        u_xlat58 = x_1452;
        let x_1454 : f32 = u_xlat15.w;
        let x_1455 : f32 = u_xlat58;
        let x_1458 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1454 * x_1455) + x_1458);
        let x_1462 : vec4<f32> = u_xlat11;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec17;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1472.xy, x_1472.z);
        u_xlat58 = x_1474;
        let x_1476 : f32 = u_xlat16.x;
        let x_1477 : f32 = u_xlat58;
        let x_1480 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1476 * x_1477) + x_1480);
        let x_1484 : vec4<f32> = u_xlat11;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.z, x_1484.w);
        let x_1487 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec18;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1494.xy, x_1494.z);
        u_xlat58 = x_1496;
        let x_1498 : f32 = u_xlat16.y;
        let x_1499 : f32 = u_xlat58;
        let x_1502 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1498 * x_1499) + x_1502);
        let x_1506 : vec4<f32> = u_xlat12;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.x, x_1506.y);
        let x_1509 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec19;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1516.xy, x_1516.z);
        u_xlat58 = x_1518;
        let x_1520 : f32 = u_xlat16.z;
        let x_1521 : f32 = u_xlat58;
        let x_1524 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1520 * x_1521) + x_1524);
        let x_1528 : vec4<f32> = u_xlat13;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.z, x_1528.w);
        let x_1531 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec20;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1538.xy, x_1538.z);
        u_xlat58 = x_1540;
        let x_1542 : f32 = u_xlat16.w;
        let x_1543 : f32 = u_xlat58;
        let x_1546 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1542 * x_1543) + x_1546);
        let x_1550 : vec4<f32> = u_xlat14;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.x, x_1550.y);
        let x_1553 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec21;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1560.xy, x_1560.z);
        u_xlat58 = x_1562;
        let x_1564 : f32 = u_xlat17.x;
        let x_1565 : f32 = u_xlat58;
        let x_1568 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1564 * x_1565) + x_1568);
        let x_1572 : vec4<f32> = u_xlat14;
        let x_1573 : vec2<f32> = vec2<f32>(x_1572.z, x_1572.w);
        let x_1575 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec22;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1582.xy, x_1582.z);
        u_xlat58 = x_1584;
        let x_1586 : f32 = u_xlat17.y;
        let x_1587 : f32 = u_xlat58;
        let x_1590 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1586 * x_1587) + x_1590);
        let x_1594 : vec2<f32> = u_xlat24;
        let x_1596 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec23;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1603.xy, x_1603.z);
        u_xlat58 = x_1605;
        let x_1607 : f32 = u_xlat17.z;
        let x_1608 : f32 = u_xlat58;
        let x_1611 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1607 * x_1608) + x_1611);
        let x_1615 : vec2<f32> = u_xlat48;
        let x_1617 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec24;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
        u_xlat58 = x_1626;
        let x_1628 : f32 = u_xlat17.w;
        let x_1629 : f32 = u_xlat58;
        let x_1632 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1628 * x_1629) + x_1632);
        let x_1636 : vec4<f32> = u_xlat9;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.x, x_1636.y);
        let x_1639 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec25;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1646.xy, x_1646.z);
        u_xlat58 = x_1648;
        let x_1650 : f32 = u_xlat5.x;
        let x_1651 : f32 = u_xlat58;
        let x_1654 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1650 * x_1651) + x_1654);
        let x_1658 : vec4<f32> = u_xlat9;
        let x_1659 : vec2<f32> = vec2<f32>(x_1658.z, x_1658.w);
        let x_1661 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1659.x, x_1659.y, x_1661);
        let x_1668 : vec3<f32> = txVec26;
        let x_1670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1668.xy, x_1668.z);
        u_xlat58 = x_1670;
        let x_1672 : f32 = u_xlat5.y;
        let x_1673 : f32 = u_xlat58;
        let x_1676 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1672 * x_1673) + x_1676);
        let x_1680 : vec2<f32> = u_xlat43;
        let x_1682 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
        let x_1689 : vec3<f32> = txVec27;
        let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1689.xy, x_1689.z);
        u_xlat58 = x_1691;
        let x_1693 : f32 = u_xlat5.z;
        let x_1694 : f32 = u_xlat58;
        let x_1697 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1693 * x_1694) + x_1697);
        let x_1701 : vec4<f32> = u_xlat4;
        let x_1702 : vec2<f32> = vec2<f32>(x_1701.x, x_1701.y);
        let x_1704 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1702.x, x_1702.y, x_1704);
        let x_1711 : vec3<f32> = txVec28;
        let x_1713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1711.xy, x_1711.z);
        u_xlat4.x = x_1713;
        let x_1716 : f32 = u_xlat5.w;
        let x_1718 : f32 = u_xlat4.x;
        let x_1721 : f32 = u_xlat40.x;
        u_xlat57 = ((x_1716 * x_1718) + x_1721);
      }
    }
  } else {
    let x_1725 : vec4<f32> = u_xlat2;
    let x_1726 : vec2<f32> = vec2<f32>(x_1725.x, x_1725.y);
    let x_1728 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1726.x, x_1726.y, x_1728);
    let x_1735 : vec3<f32> = txVec29;
    let x_1737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1735.xy, x_1735.z);
    u_xlat57 = x_1737;
  }
  let x_1739 : f32 = x_155.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1739) + 1.0f);
  let x_1743 : f32 = u_xlat57;
  let x_1745 : f32 = x_155.x_MainLightShadowParams.x;
  let x_1748 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1743 * x_1745) + x_1748);
  let x_1753 : f32 = u_xlat2.z;
  u_xlatb20 = (0.0f >= x_1753);
  let x_1757 : f32 = u_xlat2.z;
  u_xlatb38 = (x_1757 >= 1.0f);
  let x_1759 : bool = u_xlatb38;
  let x_1760 : bool = u_xlatb20;
  u_xlatb20 = (x_1759 | x_1760);
  let x_1762 : bool = u_xlatb20;
  if (x_1762) {
    x_1763 = 1.0f;
  } else {
    let x_1768 : f32 = u_xlat2.x;
    x_1763 = x_1768;
  }
  let x_1769 : f32 = x_1763;
  u_xlat2.x = x_1769;
  let x_1771 : vec3<f32> = vs_TEXCOORD1;
  let x_1774 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1776 : vec3<f32> = (x_1771 + -(x_1774));
  let x_1777 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);
  let x_1779 : vec4<f32> = u_xlat4;
  let x_1781 : vec4<f32> = u_xlat4;
  u_xlat20.x = dot(vec3<f32>(x_1779.x, x_1779.y, x_1779.z), vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
  let x_1786 : f32 = u_xlat20.x;
  let x_1788 : f32 = x_155.x_MainLightShadowParams.z;
  let x_1791 : f32 = x_155.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1786 * x_1788) + x_1791);
  let x_1795 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1795, 0.0f, 1.0f);
  let x_1800 : f32 = u_xlat2.x;
  u_xlat38 = (-(x_1800) + 1.0f);
  let x_1804 : f32 = u_xlat20.x;
  let x_1805 : f32 = u_xlat38;
  let x_1808 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1804 * x_1805) + x_1808);
  let x_1811 : f32 = u_xlat56;
  let x_1814 : vec4<f32> = x_43.x_MainLightColor;
  let x_1816 : vec3<f32> = (vec3<f32>(x_1811, x_1811, x_1811) * vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
  let x_1817 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
  let x_1819 : f32 = u_xlat55;
  let x_1821 : vec4<f32> = u_xlat3;
  let x_1823 : vec3<f32> = (vec3<f32>(x_1819, x_1819, x_1819) * vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
  let x_1824 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
  let x_1827 : f32 = u_xlat2.x;
  let x_1829 : f32 = x_92.unity_LightData.z;
  u_xlat55 = (x_1827 * x_1829);
  let x_1831 : f32 = u_xlat55;
  let x_1833 : vec4<f32> = u_xlat4;
  let x_1835 : vec3<f32> = (vec3<f32>(x_1831, x_1831, x_1831) * vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
  let x_1836 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
  let x_1838 : vec4<f32> = u_xlat1;
  let x_1841 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1838.x, x_1838.y, x_1838.z), vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
  let x_1844 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1844, 0.0f, 1.0f);
  let x_1846 : f32 = u_xlat55;
  let x_1848 : vec4<f32> = u_xlat2;
  let x_1850 : vec3<f32> = (vec3<f32>(x_1846, x_1846, x_1846) * vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
  let x_1851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
  let x_1853 : vec4<f32> = u_xlat0;
  let x_1855 : vec4<f32> = u_xlat2;
  let x_1857 : vec3<f32> = (vec3<f32>(x_1853.y, x_1853.z, x_1853.w) * vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
  let x_1861 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1863 : f32 = x_92.unity_LightData.y;
  u_xlat55 = min(x_1861, x_1863);
  let x_1866 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1866));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1878 : u32 = u_xlatu_loop_1;
    let x_1879 : u32 = u_xlatu55;
    if ((x_1878 < x_1879)) {
    } else {
      break;
    }
    let x_1882 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_1882 >> 2u);
    let x_1885 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1885 & 3u));
    let x_1888 : u32 = u_xlatu58;
    let x_1891 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_1888)];
    let x_1901 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1906 : vec4<u32> = indexable[x_1901];
    u_xlat58 = dot(x_1891, bitcast<vec4<f32>>(x_1906));
    let x_1910 : f32 = u_xlat58;
    u_xlati58 = i32(x_1910);
    let x_1912 : vec3<f32> = vs_TEXCOORD1;
    let x_1924 : i32 = u_xlati58;
    let x_1926 : vec4<f32> = x_1923.x_AdditionalLightsPosition[x_1924];
    let x_1929 : i32 = u_xlati58;
    let x_1931 : vec4<f32> = x_1923.x_AdditionalLightsPosition[x_1929];
    let x_1933 : vec3<f32> = ((-(x_1912) * vec3<f32>(x_1926.w, x_1926.w, x_1926.w)) + vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
    let x_1934 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
    let x_1937 : vec4<f32> = u_xlat5;
    let x_1939 : vec4<f32> = u_xlat5;
    u_xlat59 = dot(vec3<f32>(x_1937.x, x_1937.y, x_1937.z), vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
    let x_1942 : f32 = u_xlat59;
    u_xlat59 = max(x_1942, 6.10351562e-05f);
    let x_1945 : f32 = u_xlat59;
    u_xlat6.x = inverseSqrt(x_1945);
    let x_1948 : vec4<f32> = u_xlat5;
    let x_1950 : vec4<f32> = u_xlat6;
    let x_1952 : vec3<f32> = (vec3<f32>(x_1948.x, x_1948.y, x_1948.z) * vec3<f32>(x_1950.x, x_1950.x, x_1950.x));
    let x_1953 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
    let x_1955 : f32 = u_xlat59;
    u_xlat6.x = (1.0f / x_1955);
    let x_1958 : f32 = u_xlat59;
    let x_1959 : i32 = u_xlati58;
    let x_1961 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1959].x;
    u_xlat59 = (x_1958 * x_1961);
    let x_1963 : f32 = u_xlat59;
    let x_1965 : f32 = u_xlat59;
    u_xlat59 = ((-(x_1963) * x_1965) + 1.0f);
    let x_1968 : f32 = u_xlat59;
    u_xlat59 = max(x_1968, 0.0f);
    let x_1970 : f32 = u_xlat59;
    let x_1971 : f32 = u_xlat59;
    u_xlat59 = (x_1970 * x_1971);
    let x_1973 : f32 = u_xlat59;
    let x_1975 : f32 = u_xlat6.x;
    u_xlat59 = (x_1973 * x_1975);
    let x_1977 : i32 = u_xlati58;
    let x_1979 : vec4<f32> = x_1923.x_AdditionalLightsSpotDir[x_1977];
    let x_1981 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1979.x, x_1979.y, x_1979.z), vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
    let x_1986 : f32 = u_xlat6.x;
    let x_1987 : i32 = u_xlati58;
    let x_1989 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1987].z;
    let x_1991 : i32 = u_xlati58;
    let x_1993 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1991].w;
    u_xlat6.x = ((x_1986 * x_1989) + x_1993);
    let x_1997 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1997, 0.0f, 1.0f);
    let x_2001 : f32 = u_xlat6.x;
    let x_2003 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2001 * x_2003);
    let x_2006 : f32 = u_xlat59;
    let x_2008 : f32 = u_xlat6.x;
    u_xlat59 = (x_2006 * x_2008);
    let x_2010 : f32 = u_xlat56;
    let x_2012 : i32 = u_xlati58;
    let x_2014 : vec4<f32> = x_1923.x_AdditionalLightsColor[x_2012];
    let x_2016 : vec3<f32> = (vec3<f32>(x_2010, x_2010, x_2010) * vec3<f32>(x_2014.x, x_2014.y, x_2014.z));
    let x_2017 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2016.x, x_2016.y, x_2016.z, x_2017.w);
    let x_2019 : f32 = u_xlat59;
    let x_2021 : vec4<f32> = u_xlat6;
    let x_2023 : vec3<f32> = (vec3<f32>(x_2019, x_2019, x_2019) * vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
    let x_2024 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2024.w);
    let x_2026 : vec4<f32> = u_xlat1;
    let x_2028 : vec4<f32> = u_xlat5;
    u_xlat58 = dot(vec3<f32>(x_2026.x, x_2026.y, x_2026.z), vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
    let x_2031 : f32 = u_xlat58;
    u_xlat58 = clamp(x_2031, 0.0f, 1.0f);
    let x_2033 : f32 = u_xlat58;
    let x_2035 : vec4<f32> = u_xlat6;
    let x_2037 : vec3<f32> = (vec3<f32>(x_2033, x_2033, x_2033) * vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
    let x_2038 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
    let x_2040 : vec4<f32> = u_xlat5;
    let x_2042 : vec4<f32> = u_xlat0;
    let x_2045 : vec4<f32> = u_xlat4;
    let x_2047 : vec3<f32> = ((vec3<f32>(x_2040.x, x_2040.y, x_2040.z) * vec3<f32>(x_2042.y, x_2042.z, x_2042.w)) + vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
    let x_2048 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);

    continuing {
      let x_2050 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2050 + bitcast<u32>(1i));
    }
  }
  let x_2053 : vec4<f32> = u_xlat3;
  let x_2055 : vec4<f32> = u_xlat0;
  let x_2058 : vec4<f32> = u_xlat2;
  u_xlat18 = ((vec3<f32>(x_2053.x, x_2053.y, x_2053.z) * vec3<f32>(x_2055.y, x_2055.z, x_2055.w)) + vec3<f32>(x_2058.x, x_2058.y, x_2058.z));
  let x_2063 : vec4<f32> = u_xlat4;
  let x_2065 : vec3<f32> = u_xlat18;
  let x_2066 : vec3<f32> = (vec3<f32>(x_2063.x, x_2063.y, x_2063.z) + x_2065);
  let x_2067 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
  let x_2071 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_2071 == 1.0f);
  let x_2073 : bool = u_xlatb18;
  if (x_2073) {
    let x_2078 : f32 = u_xlat0.x;
    x_2074 = x_2078;
  } else {
    x_2074 = 1.0f;
  }
  let x_2080 : f32 = x_2074;
  SV_Target0.w = x_2080;
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

