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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

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

@group(1) @binding(1) var<uniform> x_718 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb8 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat22 : f32;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb9 : bool;
  var u_xlatb16 : bool;
  var x_554 : f32;
  var u_xlat16 : f32;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati12 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_898 : f32;
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
  let x_63 : vec4<f32> = hlslcc_FragCoord;
  let x_67 : f32 = x_44.x_DitheringTextureInvSize;
  let x_69 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_67, x_67));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : f32 = x_44.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_77.x, x_77.y), x_80);
  u_xlat1.x = x_81.w;
  let x_95 : f32 = x_92.unity_LODFade.x;
  u_xlatb8 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb8;
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
  let x_184 : vec3<f32> = vs_TEXCOORD1;
  let x_187 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_184 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_191 : vec4<f32> = u_xlat2;
  let x_193 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = u_xlat3;
  let x_199 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_204 : vec4<f32> = u_xlat4;
  let x_206 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_210 : vec3<f32> = u_xlat5;
  let x_211 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_210, x_211);
  let x_217 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = x_155.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_217 < x_220);
  let x_223 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_223);
  let x_227 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_235);
  let x_239 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_239);
  let x_245 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_245);
  let x_249 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_249);
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec4<f32> = u_xlat3;
  let x_256 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(x_254.y, x_254.z, x_254.w));
  let x_257 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat2;
  let x_262 : vec3<f32> = max(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_263 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_262.x, x_262.y, x_262.z);
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_265, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_273 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_273) + 4.0f);
  let x_280 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_280);
  let x_284 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_284) << bitcast<u32>(2i));
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : i32 = u_xlati2;
  let x_293 : i32 = u_xlati2;
  let x_297 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_290 + 1i) / 4i)][((x_293 + 1i) % 4i)];
  u_xlat9 = (vec3<f32>(x_288.y, x_288.y, x_288.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : i32 = u_xlati2;
  let x_302 : i32 = u_xlati2;
  let x_305 : vec4<f32> = x_155.x_MainLightWorldToShadow[(x_300 / 4i)][(x_302 % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_310 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + x_310);
  let x_312 : i32 = u_xlati2;
  let x_315 : i32 = u_xlati2;
  let x_319 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_312 + 2i) / 4i)][((x_315 + 2i) % 4i)];
  let x_321 : vec3<f32> = vs_TEXCOORD1;
  let x_324 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.z, x_321.z, x_321.z)) + x_324);
  let x_326 : vec3<f32> = u_xlat9;
  let x_327 : i32 = u_xlati2;
  let x_330 : i32 = u_xlati2;
  let x_334 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_327 + 3i) / 4i)][((x_330 + 3i) % 4i)];
  let x_336 : vec3<f32> = (x_326 + vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_341 : f32 = vs_TEXCOORD1.y;
  let x_344 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat23 = (x_341 * x_344);
  let x_347 : f32 = x_44.unity_MatrixV[0i].z;
  let x_349 : f32 = vs_TEXCOORD1.x;
  let x_351 : f32 = u_xlat23;
  u_xlat23 = ((x_347 * x_349) + x_351);
  let x_354 : f32 = x_44.unity_MatrixV[2i].z;
  let x_356 : f32 = vs_TEXCOORD1.z;
  let x_358 : f32 = u_xlat23;
  u_xlat23 = ((x_354 * x_356) + x_358);
  let x_360 : f32 = u_xlat23;
  let x_362 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat23 = (x_360 + x_362);
  let x_364 : f32 = u_xlat23;
  let x_368 : f32 = x_44.x_ProjectionParams.y;
  u_xlat23 = (-(x_364) + -(x_368));
  let x_371 : f32 = u_xlat23;
  u_xlat23 = max(x_371, 0.0f);
  let x_373 : f32 = u_xlat23;
  let x_376 : f32 = x_44.unity_FogParams.x;
  u_xlat23 = (x_373 * x_376);
  u_xlat1.w = 1.0f;
  let x_381 : vec4<f32> = x_92.unity_SHAr;
  let x_382 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_381, x_382);
  let x_387 : vec4<f32> = x_92.unity_SHAg;
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_387, x_388);
  let x_393 : vec4<f32> = x_92.unity_SHAb;
  let x_394 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_393, x_394);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_397.y, x_397.z, x_397.z, x_397.x) * vec4<f32>(x_399.x, x_399.y, x_399.z, x_399.z));
  let x_404 : vec4<f32> = x_92.unity_SHBr;
  let x_405 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_404, x_405);
  let x_410 : vec4<f32> = x_92.unity_SHBg;
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_92.unity_SHBb;
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_416, x_417);
  let x_422 : f32 = u_xlat1.y;
  let x_424 : f32 = u_xlat1.y;
  u_xlat22 = (x_422 * x_424);
  let x_427 : f32 = u_xlat1.x;
  let x_429 : f32 = u_xlat1.x;
  let x_431 : f32 = u_xlat22;
  u_xlat22 = ((x_427 * x_429) + -(x_431));
  let x_436 : vec4<f32> = x_92.unity_SHC;
  let x_438 : f32 = u_xlat22;
  let x_441 : vec3<f32> = u_xlat5;
  let x_442 : vec3<f32> = ((vec3<f32>(x_436.x, x_436.y, x_436.z) * vec3<f32>(x_438, x_438, x_438)) + x_441);
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat3;
  let x_447 : vec4<f32> = u_xlat4;
  let x_449 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) + vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat3;
  let x_454 : vec3<f32> = max(vec3<f32>(x_452.x, x_452.y, x_452.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_455 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_459 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_460 : vec2<f32> = vec2<f32>(x_459.x, x_459.y);
  let x_464 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_460.x, x_460.y));
  let x_465 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat4;
  let x_469 : vec4<f32> = hlslcc_FragCoord;
  let x_471 : vec2<f32> = (vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_469.x, x_469.y));
  let x_472 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
  let x_475 : f32 = u_xlat4.y;
  let x_478 : f32 = x_44.x_ScaleBiasRt.x;
  let x_481 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat22 = ((x_475 * x_478) + x_481);
  let x_483 : f32 = u_xlat22;
  u_xlat4.z = (-(x_483) + 1.0f);
  let x_492 : vec4<f32> = u_xlat4;
  let x_495 : f32 = x_44.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_492.x, x_492.z), x_495);
  u_xlat22 = x_496.x;
  let x_499 : f32 = u_xlat22;
  u_xlat24 = (x_499 + -1.0f);
  let x_502 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_503 : f32 = u_xlat24;
  u_xlat24 = ((x_502 * x_503) + 1.0f);
  let x_506 : f32 = u_xlat22;
  u_xlat22 = min(x_506, 1.0f);
  let x_509 : vec4<f32> = u_xlat2;
  let x_510 : vec2<f32> = vec2<f32>(x_509.x, x_509.y);
  let x_512 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_510.x, x_510.y, x_512);
  let x_524 : vec3<f32> = txVec0;
  let x_526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_524.xy, x_524.z);
  u_xlat2.x = x_526;
  let x_529 : f32 = x_155.x_MainLightShadowParams.x;
  u_xlat9.x = (-(x_529) + 1.0f);
  let x_534 : f32 = u_xlat2.x;
  let x_536 : f32 = x_155.x_MainLightShadowParams.x;
  let x_539 : f32 = u_xlat9.x;
  u_xlat2.x = ((x_534 * x_536) + x_539);
  let x_544 : f32 = u_xlat2.z;
  u_xlatb9 = (0.0f >= x_544);
  let x_548 : f32 = u_xlat2.z;
  u_xlatb16 = (x_548 >= 1.0f);
  let x_550 : bool = u_xlatb16;
  let x_551 : bool = u_xlatb9;
  u_xlatb9 = (x_550 | x_551);
  let x_553 : bool = u_xlatb9;
  if (x_553) {
    x_554 = 1.0f;
  } else {
    let x_559 : f32 = u_xlat2.x;
    x_554 = x_559;
  }
  let x_560 : f32 = x_554;
  u_xlat2.x = x_560;
  let x_562 : vec3<f32> = vs_TEXCOORD1;
  let x_566 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_568 : vec3<f32> = (x_562 + -(x_566));
  let x_569 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat4;
  let x_573 : vec4<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_571.x, x_571.y, x_571.z), vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_578 : f32 = u_xlat9.x;
  let x_580 : f32 = x_155.x_MainLightShadowParams.z;
  let x_583 : f32 = x_155.x_MainLightShadowParams.w;
  u_xlat9.x = ((x_578 * x_580) + x_583);
  let x_587 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_587, 0.0f, 1.0f);
  let x_592 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_592) + 1.0f);
  let x_596 : f32 = u_xlat9.x;
  let x_597 : f32 = u_xlat16;
  let x_600 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_596 * x_597) + x_600);
  let x_603 : f32 = u_xlat24;
  let x_606 : vec4<f32> = x_44.x_MainLightColor;
  let x_608 : vec3<f32> = (vec3<f32>(x_603, x_603, x_603) * vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : f32 = u_xlat22;
  let x_613 : vec4<f32> = u_xlat3;
  let x_615 : vec3<f32> = (vec3<f32>(x_611, x_611, x_611) * vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_619 : f32 = u_xlat2.x;
  let x_621 : f32 = x_92.unity_LightData.z;
  u_xlat22 = (x_619 * x_621);
  let x_623 : f32 = u_xlat22;
  let x_625 : vec4<f32> = u_xlat4;
  let x_627 : vec3<f32> = (vec3<f32>(x_623, x_623, x_623) * vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec4<f32> = u_xlat1;
  let x_633 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_630.x, x_630.y, x_630.z), vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : f32 = u_xlat22;
  u_xlat22 = clamp(x_636, 0.0f, 1.0f);
  let x_638 : f32 = u_xlat22;
  let x_640 : vec4<f32> = u_xlat2;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat0;
  let x_647 : vec4<f32> = u_xlat2;
  let x_649 : vec3<f32> = (vec3<f32>(x_645.y, x_645.z, x_645.w) * vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_653 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_655 : f32 = x_92.unity_LightData.y;
  u_xlat22 = min(x_653, x_655);
  let x_658 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_658));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_670 : u32 = u_xlatu_loop_1;
    let x_671 : u32 = u_xlatu22;
    if ((x_670 < x_671)) {
    } else {
      break;
    }
    let x_674 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_674 >> 2u);
    let x_677 : u32 = u_xlatu_loop_1;
    u_xlati12 = bitcast<i32>((x_677 & 3u));
    let x_680 : u32 = u_xlatu5;
    let x_683 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_680)];
    let x_693 : i32 = u_xlati12;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_698 : vec4<u32> = indexable[x_693];
    u_xlat5.x = dot(x_683, bitcast<vec4<f32>>(x_698));
    let x_704 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_704);
    let x_707 : vec3<f32> = vs_TEXCOORD1;
    let x_719 : i32 = u_xlati5;
    let x_721 : vec4<f32> = x_718.x_AdditionalLightsPosition[x_719];
    let x_724 : i32 = u_xlati5;
    let x_726 : vec4<f32> = x_718.x_AdditionalLightsPosition[x_724];
    u_xlat12 = ((-(x_707) * vec3<f32>(x_721.w, x_721.w, x_721.w)) + vec3<f32>(x_726.x, x_726.y, x_726.z));
    let x_730 : vec3<f32> = u_xlat12;
    let x_731 : vec3<f32> = u_xlat12;
    u_xlat6.x = dot(x_730, x_731);
    let x_735 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_735, 6.10351562e-05f);
    let x_741 : f32 = u_xlat6.x;
    u_xlat13.x = inverseSqrt(x_741);
    let x_744 : vec3<f32> = u_xlat12;
    let x_745 : vec3<f32> = u_xlat13;
    u_xlat12 = (x_744 * vec3<f32>(x_745.x, x_745.x, x_745.x));
    let x_749 : f32 = u_xlat6.x;
    u_xlat13.x = (1.0f / x_749);
    let x_753 : f32 = u_xlat6.x;
    let x_754 : i32 = u_xlati5;
    let x_756 : f32 = x_718.x_AdditionalLightsAttenuation[x_754].x;
    u_xlat6.x = (x_753 * x_756);
    let x_760 : f32 = u_xlat6.x;
    let x_763 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_760) * x_763) + 1.0f);
    let x_768 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_768, 0.0f);
    let x_772 : f32 = u_xlat6.x;
    let x_774 : f32 = u_xlat6.x;
    u_xlat6.x = (x_772 * x_774);
    let x_778 : f32 = u_xlat6.x;
    let x_780 : f32 = u_xlat13.x;
    u_xlat6.x = (x_778 * x_780);
    let x_783 : i32 = u_xlati5;
    let x_785 : vec4<f32> = x_718.x_AdditionalLightsSpotDir[x_783];
    let x_787 : vec3<f32> = u_xlat12;
    u_xlat13.x = dot(vec3<f32>(x_785.x, x_785.y, x_785.z), x_787);
    let x_791 : f32 = u_xlat13.x;
    let x_792 : i32 = u_xlati5;
    let x_794 : f32 = x_718.x_AdditionalLightsAttenuation[x_792].z;
    let x_796 : i32 = u_xlati5;
    let x_798 : f32 = x_718.x_AdditionalLightsAttenuation[x_796].w;
    u_xlat13.x = ((x_791 * x_794) + x_798);
    let x_802 : f32 = u_xlat13.x;
    u_xlat13.x = clamp(x_802, 0.0f, 1.0f);
    let x_806 : f32 = u_xlat13.x;
    let x_808 : f32 = u_xlat13.x;
    u_xlat13.x = (x_806 * x_808);
    let x_812 : f32 = u_xlat13.x;
    let x_814 : f32 = u_xlat6.x;
    u_xlat6.x = (x_812 * x_814);
    let x_817 : f32 = u_xlat24;
    let x_819 : i32 = u_xlati5;
    let x_821 : vec4<f32> = x_718.x_AdditionalLightsColor[x_819];
    u_xlat13 = (vec3<f32>(x_817, x_817, x_817) * vec3<f32>(x_821.x, x_821.y, x_821.z));
    let x_824 : vec3<f32> = u_xlat6;
    let x_826 : vec3<f32> = u_xlat13;
    u_xlat6 = (vec3<f32>(x_824.x, x_824.x, x_824.x) * x_826);
    let x_828 : vec4<f32> = u_xlat1;
    let x_830 : vec3<f32> = u_xlat12;
    u_xlat5.x = dot(vec3<f32>(x_828.x, x_828.y, x_828.z), x_830);
    let x_834 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_834, 0.0f, 1.0f);
    let x_837 : vec3<f32> = u_xlat5;
    let x_839 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_837.x, x_837.x, x_837.x) * x_839);
    let x_841 : vec3<f32> = u_xlat5;
    let x_842 : vec4<f32> = u_xlat0;
    let x_845 : vec4<f32> = u_xlat4;
    let x_847 : vec3<f32> = ((x_841 * vec3<f32>(x_842.y, x_842.z, x_842.w)) + vec3<f32>(x_845.x, x_845.y, x_845.z));
    let x_848 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);

    continuing {
      let x_850 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_850 + bitcast<u32>(1i));
    }
  }
  let x_853 : vec4<f32> = u_xlat3;
  let x_855 : vec4<f32> = u_xlat0;
  let x_858 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_855.y, x_855.z, x_855.w)) + vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec4<f32> = u_xlat4;
  let x_863 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_861.x, x_861.y, x_861.z) + x_863);
  let x_865 : f32 = u_xlat23;
  let x_866 : f32 = u_xlat23;
  u_xlat1.x = (x_865 * -(x_866));
  let x_871 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_871);
  let x_874 : vec3<f32> = u_xlat7;
  let x_877 : vec4<f32> = x_44.unity_FogColor;
  u_xlat7 = (x_874 + -(vec3<f32>(x_877.x, x_877.y, x_877.z)));
  let x_883 : vec4<f32> = u_xlat1;
  let x_885 : vec3<f32> = u_xlat7;
  let x_888 : vec4<f32> = x_44.unity_FogColor;
  let x_890 : vec3<f32> = ((vec3<f32>(x_883.x, x_883.x, x_883.x) * x_885) + vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_895 : f32 = x_56.x_Surface;
  u_xlatb7 = (x_895 == 1.0f);
  let x_897 : bool = u_xlatb7;
  if (x_897) {
    let x_902 : f32 = u_xlat0.x;
    x_898 = x_902;
  } else {
    x_898 = 1.0f;
  }
  let x_904 : f32 = x_898;
  SV_Target0.w = x_904;
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

