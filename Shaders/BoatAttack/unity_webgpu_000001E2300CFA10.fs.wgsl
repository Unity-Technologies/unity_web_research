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

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_207 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_824 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var x_172 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu3 : u32;
  var u_xlati3 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat29 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlatb21 : bool;
  var x_603 : f32;
  var u_xlat21 : f32;
  var u_xlat32 : f32;
  var u_xlatu5 : u32;
  var u_xlat14 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu15 : u32;
  var u_xlati24 : i32;
  var u_xlat15 : vec3<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati15 : i32;
  var u_xlat7 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat33 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_1019 : f32;
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
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb10 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb10;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_135 == 0.0f);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_140) + x_145);
  let x_148 : vec3<f32> = u_xlat10;
  let x_149 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_153);
  let x_156 : vec3<f32> = u_xlat10;
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat10 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_162;
  let x_165 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_165;
  let x_169 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_169;
  let x_171 : bool = u_xlatb1;
  if (x_171) {
    let x_175 : vec3<f32> = u_xlat10;
    x_172 = x_175;
  } else {
    let x_177 : vec4<f32> = u_xlat2;
    x_172 = vec3<f32>(x_177.x, x_177.y, x_177.z);
  }
  let x_179 : vec3<f32> = x_172;
  u_xlat1 = x_179;
  let x_182 : vec3<f32> = vs_TEXCOORD2;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_182, x_183);
  let x_185 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_185);
  let x_187 : f32 = u_xlat28;
  let x_189 : vec3<f32> = vs_TEXCOORD2;
  let x_190 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * x_189);
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec3<f32> = u_xlat1;
  let x_194 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_193, x_194);
  let x_196 : f32 = u_xlat28;
  u_xlat28 = max(x_196, 1.17549435e-37f);
  let x_199 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_199);
  let x_202 : vec3<f32> = vs_TEXCOORD1;
  let x_209 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres0;
  let x_212 : vec3<f32> = (x_202 + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec3<f32> = vs_TEXCOORD1;
  let x_218 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres1;
  let x_221 : vec3<f32> = (x_216 + -(vec3<f32>(x_218.x, x_218.y, x_218.z)));
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : vec3<f32> = vs_TEXCOORD1;
  let x_228 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres2;
  let x_231 : vec3<f32> = (x_225 + -(vec3<f32>(x_228.x, x_228.y, x_228.z)));
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_235 + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat3;
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_254 : vec4<f32> = u_xlat5;
  let x_256 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_254.x, x_254.y, x_254.z), vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_260 : vec3<f32> = u_xlat6;
  let x_261 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_260, x_261);
  let x_267 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = x_207.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_267 < x_270);
  let x_273 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_273);
  let x_277 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_277);
  let x_281 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_285);
  let x_289 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_289);
  let x_295 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_295);
  let x_299 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_299);
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec4<f32> = u_xlat4;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_304.y, x_304.z, x_304.w));
  let x_307 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat3;
  let x_312 : vec3<f32> = max(vec3<f32>(x_309.x, x_309.y, x_309.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_313.x, x_312.x, x_312.y, x_312.z);
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_315, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_323 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_323) + 4.0f);
  let x_330 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_330);
  let x_334 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_334) << bitcast<u32>(2i));
  let x_338 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : i32 = u_xlati3;
  let x_343 : i32 = u_xlati3;
  let x_347 : vec4<f32> = x_207.x_MainLightWorldToShadow[((x_340 + 1i) / 4i)][((x_343 + 1i) % 4i)];
  u_xlat12 = (vec3<f32>(x_338.y, x_338.y, x_338.y) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : i32 = u_xlati3;
  let x_352 : i32 = u_xlati3;
  let x_355 : vec4<f32> = x_207.x_MainLightWorldToShadow[(x_350 / 4i)][(x_352 % 4i)];
  let x_357 : vec3<f32> = vs_TEXCOORD1;
  let x_360 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.x, x_357.x)) + x_360);
  let x_362 : i32 = u_xlati3;
  let x_365 : i32 = u_xlati3;
  let x_369 : vec4<f32> = x_207.x_MainLightWorldToShadow[((x_362 + 2i) / 4i)][((x_365 + 2i) % 4i)];
  let x_371 : vec3<f32> = vs_TEXCOORD1;
  let x_374 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.z, x_371.z, x_371.z)) + x_374);
  let x_376 : vec3<f32> = u_xlat12;
  let x_377 : i32 = u_xlati3;
  let x_380 : i32 = u_xlati3;
  let x_384 : vec4<f32> = x_207.x_MainLightWorldToShadow[((x_377 + 3i) / 4i)][((x_380 + 3i) % 4i)];
  let x_386 : vec3<f32> = (x_376 + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_391 : f32 = vs_TEXCOORD1.y;
  let x_393 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat30 = (x_391 * x_393);
  let x_396 : f32 = x_44.unity_MatrixV[0i].z;
  let x_398 : f32 = vs_TEXCOORD1.x;
  let x_400 : f32 = u_xlat30;
  u_xlat30 = ((x_396 * x_398) + x_400);
  let x_403 : f32 = x_44.unity_MatrixV[2i].z;
  let x_405 : f32 = vs_TEXCOORD1.z;
  let x_407 : f32 = u_xlat30;
  u_xlat30 = ((x_403 * x_405) + x_407);
  let x_409 : f32 = u_xlat30;
  let x_411 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat30 = (x_409 + x_411);
  let x_413 : f32 = u_xlat30;
  let x_417 : f32 = x_44.x_ProjectionParams.y;
  u_xlat30 = (-(x_413) + -(x_417));
  let x_420 : f32 = u_xlat30;
  u_xlat30 = max(x_420, 0.0f);
  let x_422 : f32 = u_xlat30;
  let x_425 : f32 = x_44.unity_FogParams.x;
  u_xlat30 = (x_422 * x_425);
  u_xlat2.w = 1.0f;
  let x_430 : vec4<f32> = x_93.unity_SHAr;
  let x_431 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_430, x_431);
  let x_436 : vec4<f32> = x_93.unity_SHAg;
  let x_437 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_436, x_437);
  let x_442 : vec4<f32> = x_93.unity_SHAb;
  let x_443 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_442, x_443);
  let x_446 : vec4<f32> = u_xlat2;
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_446.y, x_446.z, x_446.z, x_446.x) * vec4<f32>(x_448.x, x_448.y, x_448.z, x_448.z));
  let x_453 : vec4<f32> = x_93.unity_SHBr;
  let x_454 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_453, x_454);
  let x_459 : vec4<f32> = x_93.unity_SHBg;
  let x_460 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_459, x_460);
  let x_465 : vec4<f32> = x_93.unity_SHBb;
  let x_466 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_465, x_466);
  let x_471 : f32 = u_xlat2.y;
  let x_473 : f32 = u_xlat2.y;
  u_xlat29 = (x_471 * x_473);
  let x_476 : f32 = u_xlat2.x;
  let x_478 : f32 = u_xlat2.x;
  let x_480 : f32 = u_xlat29;
  u_xlat29 = ((x_476 * x_478) + -(x_480));
  let x_485 : vec4<f32> = x_93.unity_SHC;
  let x_487 : f32 = u_xlat29;
  let x_490 : vec3<f32> = u_xlat6;
  let x_491 : vec3<f32> = ((vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_487, x_487, x_487)) + x_490);
  let x_492 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat4;
  let x_496 : vec4<f32> = u_xlat5;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) + vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : vec3<f32> = max(vec3<f32>(x_501.x, x_501.y, x_501.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_508 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_509 : vec2<f32> = vec2<f32>(x_508.x, x_508.y);
  let x_513 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_509.x, x_509.y));
  let x_514 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat5;
  let x_518 : vec4<f32> = hlslcc_FragCoord;
  let x_520 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_518.x, x_518.y));
  let x_521 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
  let x_524 : f32 = u_xlat5.y;
  let x_527 : f32 = x_44.x_ScaleBiasRt.x;
  let x_530 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29 = ((x_524 * x_527) + x_530);
  let x_532 : f32 = u_xlat29;
  u_xlat5.z = (-(x_532) + 1.0f);
  let x_541 : vec4<f32> = u_xlat5;
  let x_544 : f32 = x_44.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_541.x, x_541.z), x_544);
  u_xlat29 = x_545.x;
  let x_548 : f32 = u_xlat29;
  u_xlat31 = (x_548 + -1.0f);
  let x_551 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_552 : f32 = u_xlat31;
  u_xlat31 = ((x_551 * x_552) + 1.0f);
  let x_555 : f32 = u_xlat29;
  u_xlat29 = min(x_555, 1.0f);
  let x_558 : vec4<f32> = u_xlat3;
  let x_559 : vec2<f32> = vec2<f32>(x_558.x, x_558.y);
  let x_561 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_559.x, x_559.y, x_561);
  let x_573 : vec3<f32> = txVec0;
  let x_575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_573.xy, x_573.z);
  u_xlat3.x = x_575;
  let x_578 : f32 = x_207.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_578) + 1.0f);
  let x_583 : f32 = u_xlat3.x;
  let x_585 : f32 = x_207.x_MainLightShadowParams.x;
  let x_588 : f32 = u_xlat12.x;
  u_xlat3.x = ((x_583 * x_585) + x_588);
  let x_593 : f32 = u_xlat3.z;
  u_xlatb12 = (0.0f >= x_593);
  let x_597 : f32 = u_xlat3.z;
  u_xlatb21 = (x_597 >= 1.0f);
  let x_599 : bool = u_xlatb21;
  let x_600 : bool = u_xlatb12;
  u_xlatb12 = (x_599 | x_600);
  let x_602 : bool = u_xlatb12;
  if (x_602) {
    x_603 = 1.0f;
  } else {
    let x_608 : f32 = u_xlat3.x;
    x_603 = x_608;
  }
  let x_609 : f32 = x_603;
  u_xlat3.x = x_609;
  let x_611 : vec3<f32> = vs_TEXCOORD1;
  let x_613 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_615 : vec3<f32> = (x_611 + -(x_613));
  let x_616 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat5;
  let x_620 : vec4<f32> = u_xlat5;
  u_xlat12.x = dot(vec3<f32>(x_618.x, x_618.y, x_618.z), vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_625 : f32 = u_xlat12.x;
  let x_627 : f32 = x_207.x_MainLightShadowParams.z;
  let x_630 : f32 = x_207.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_625 * x_627) + x_630);
  let x_634 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_634, 0.0f, 1.0f);
  let x_639 : f32 = u_xlat3.x;
  u_xlat21 = (-(x_639) + 1.0f);
  let x_643 : f32 = u_xlat12.x;
  let x_644 : f32 = u_xlat21;
  let x_647 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_643 * x_644) + x_647);
  let x_650 : f32 = u_xlat31;
  let x_653 : vec4<f32> = x_44.x_MainLightColor;
  let x_655 : vec3<f32> = (vec3<f32>(x_650, x_650, x_650) * vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : f32 = u_xlat29;
  let x_660 : vec4<f32> = u_xlat4;
  let x_662 : vec3<f32> = (vec3<f32>(x_658, x_658, x_658) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_666 : f32 = u_xlat3.x;
  let x_668 : f32 = x_93.unity_LightData.z;
  u_xlat29 = (x_666 * x_668);
  let x_670 : f32 = u_xlat29;
  let x_672 : vec4<f32> = u_xlat5;
  let x_674 : vec3<f32> = (vec3<f32>(x_670, x_670, x_670) * vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec4<f32> = u_xlat2;
  let x_680 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = dot(vec3<f32>(x_677.x, x_677.y, x_677.z), vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : f32 = u_xlat29;
  u_xlat29 = clamp(x_683, 0.0f, 1.0f);
  let x_685 : f32 = u_xlat29;
  let x_687 : vec4<f32> = u_xlat3;
  let x_689 : vec3<f32> = (vec3<f32>(x_685, x_685, x_685) * vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_693 : f32 = u_xlat0.x;
  u_xlat29 = ((x_693 * 10.0f) + 1.0f);
  let x_697 : f32 = u_xlat29;
  u_xlat29 = exp2(x_697);
  let x_699 : vec3<f32> = u_xlat1;
  let x_700 : f32 = u_xlat28;
  let x_704 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_699 * vec3<f32>(x_700, x_700, x_700)) + vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_708 : vec3<f32> = u_xlat6;
  let x_709 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_708, x_709);
  let x_711 : f32 = u_xlat32;
  u_xlat32 = max(x_711, 1.17549435e-37f);
  let x_713 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_713);
  let x_715 : f32 = u_xlat32;
  let x_717 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_715, x_715, x_715) * x_717);
  let x_719 : vec4<f32> = u_xlat2;
  let x_721 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(vec3<f32>(x_719.x, x_719.y, x_719.z), x_721);
  let x_723 : f32 = u_xlat32;
  u_xlat32 = clamp(x_723, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat32;
  u_xlat32 = log2(x_725);
  let x_727 : f32 = u_xlat29;
  let x_728 : f32 = u_xlat32;
  u_xlat32 = (x_727 * x_728);
  let x_730 : f32 = u_xlat32;
  u_xlat32 = exp2(x_730);
  let x_732 : f32 = u_xlat32;
  let x_735 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_732, x_732, x_732) * vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = u_xlat6;
  let x_741 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) * x_740);
  let x_742 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat5;
  let x_746 : vec4<f32> = u_xlat0;
  let x_749 : vec4<f32> = u_xlat3;
  let x_751 : vec3<f32> = ((vec3<f32>(x_744.x, x_744.y, x_744.z) * vec3<f32>(x_746.y, x_746.z, x_746.w)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_755 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_757 : f32 = x_93.unity_LightData.y;
  u_xlat5.x = min(x_755, x_757);
  let x_762 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_762));
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_775 : u32 = u_xlatu_loop_1;
    let x_776 : u32 = u_xlatu5;
    if ((x_775 < x_776)) {
    } else {
      break;
    }
    let x_779 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_779 >> 2u);
    let x_782 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_782 & 3u));
    let x_786 : u32 = u_xlatu15;
    let x_789 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_786)];
    let x_799 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_804 : vec4<u32> = indexable[x_799];
    u_xlat15.x = dot(x_789, bitcast<vec4<f32>>(x_804));
    let x_810 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_810);
    let x_813 : vec3<f32> = vs_TEXCOORD1;
    let x_825 : i32 = u_xlati15;
    let x_827 : vec4<f32> = x_824.x_AdditionalLightsPosition[x_825];
    let x_830 : i32 = u_xlati15;
    let x_832 : vec4<f32> = x_824.x_AdditionalLightsPosition[x_830];
    u_xlat7 = ((-(x_813) * vec3<f32>(x_827.w, x_827.w, x_827.w)) + vec3<f32>(x_832.x, x_832.y, x_832.z));
    let x_836 : vec3<f32> = u_xlat7;
    let x_837 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_836, x_837);
    let x_839 : f32 = u_xlat24;
    u_xlat24 = max(x_839, 6.10351562e-05f);
    let x_843 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_843);
    let x_845 : f32 = u_xlat33;
    let x_847 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_845, x_845, x_845) * x_847);
    let x_849 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_849);
    let x_851 : f32 = u_xlat24;
    let x_852 : i32 = u_xlati15;
    let x_854 : f32 = x_824.x_AdditionalLightsAttenuation[x_852].x;
    u_xlat24 = (x_851 * x_854);
    let x_856 : f32 = u_xlat24;
    let x_858 : f32 = u_xlat24;
    u_xlat24 = ((-(x_856) * x_858) + 1.0f);
    let x_861 : f32 = u_xlat24;
    u_xlat24 = max(x_861, 0.0f);
    let x_863 : f32 = u_xlat24;
    let x_864 : f32 = u_xlat24;
    u_xlat24 = (x_863 * x_864);
    let x_866 : f32 = u_xlat24;
    let x_867 : f32 = u_xlat33;
    u_xlat24 = (x_866 * x_867);
    let x_869 : i32 = u_xlati15;
    let x_871 : vec4<f32> = x_824.x_AdditionalLightsSpotDir[x_869];
    let x_873 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_871.x, x_871.y, x_871.z), x_873);
    let x_875 : f32 = u_xlat33;
    let x_876 : i32 = u_xlati15;
    let x_878 : f32 = x_824.x_AdditionalLightsAttenuation[x_876].z;
    let x_880 : i32 = u_xlati15;
    let x_882 : f32 = x_824.x_AdditionalLightsAttenuation[x_880].w;
    u_xlat33 = ((x_875 * x_878) + x_882);
    let x_884 : f32 = u_xlat33;
    u_xlat33 = clamp(x_884, 0.0f, 1.0f);
    let x_886 : f32 = u_xlat33;
    let x_887 : f32 = u_xlat33;
    u_xlat33 = (x_886 * x_887);
    let x_889 : f32 = u_xlat33;
    let x_890 : f32 = u_xlat24;
    u_xlat24 = (x_889 * x_890);
    let x_893 : f32 = u_xlat31;
    let x_895 : i32 = u_xlati15;
    let x_897 : vec4<f32> = x_824.x_AdditionalLightsColor[x_895];
    u_xlat8 = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_897.x, x_897.y, x_897.z));
    let x_900 : f32 = u_xlat24;
    let x_902 : vec3<f32> = u_xlat8;
    u_xlat15 = (vec3<f32>(x_900, x_900, x_900) * x_902);
    let x_905 : vec4<f32> = u_xlat2;
    let x_907 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_905.x, x_905.y, x_905.z), x_907);
    let x_909 : f32 = u_xlat34;
    u_xlat34 = clamp(x_909, 0.0f, 1.0f);
    let x_911 : vec3<f32> = u_xlat15;
    let x_912 : f32 = u_xlat34;
    u_xlat8 = (x_911 * vec3<f32>(x_912, x_912, x_912));
    let x_915 : vec3<f32> = u_xlat1;
    let x_916 : f32 = u_xlat28;
    let x_919 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_915 * vec3<f32>(x_916, x_916, x_916)) + x_919);
    let x_921 : vec3<f32> = u_xlat7;
    let x_922 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_921, x_922);
    let x_924 : f32 = u_xlat34;
    u_xlat34 = max(x_924, 1.17549435e-37f);
    let x_926 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_926);
    let x_928 : f32 = u_xlat34;
    let x_930 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_928, x_928, x_928) * x_930);
    let x_932 : vec4<f32> = u_xlat2;
    let x_934 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_932.x, x_932.y, x_932.z), x_934);
    let x_938 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_938, 0.0f, 1.0f);
    let x_942 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_942);
    let x_945 : f32 = u_xlat29;
    let x_947 : f32 = u_xlat7.x;
    u_xlat7.x = (x_945 * x_947);
    let x_951 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_951);
    let x_954 : vec3<f32> = u_xlat7;
    let x_957 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_954.x, x_954.x, x_954.x) * vec3<f32>(x_957.x, x_957.y, x_957.z));
    let x_960 : vec3<f32> = u_xlat15;
    let x_961 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_960 * x_961);
    let x_963 : vec3<f32> = u_xlat8;
    let x_964 : vec4<f32> = u_xlat0;
    let x_967 : vec3<f32> = u_xlat15;
    u_xlat15 = ((x_963 * vec3<f32>(x_964.y, x_964.z, x_964.w)) + x_967);
    let x_969 : vec3<f32> = u_xlat14;
    let x_970 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_969 + x_970);

    continuing {
      let x_972 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_972 + bitcast<u32>(1i));
    }
  }
  let x_975 : vec4<f32> = u_xlat4;
  let x_977 : vec4<f32> = u_xlat0;
  let x_980 : vec4<f32> = u_xlat3;
  u_xlat9 = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977.y, x_977.z, x_977.w)) + vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : vec3<f32> = u_xlat14;
  let x_984 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_983 + x_984);
  let x_986 : f32 = u_xlat30;
  let x_987 : f32 = u_xlat30;
  u_xlat1.x = (x_986 * -(x_987));
  let x_992 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_992);
  let x_995 : vec3<f32> = u_xlat9;
  let x_998 : vec4<f32> = x_44.unity_FogColor;
  u_xlat9 = (x_995 + -(vec3<f32>(x_998.x, x_998.y, x_998.z)));
  let x_1004 : vec3<f32> = u_xlat1;
  let x_1006 : vec3<f32> = u_xlat9;
  let x_1009 : vec4<f32> = x_44.unity_FogColor;
  let x_1011 : vec3<f32> = ((vec3<f32>(x_1004.x, x_1004.x, x_1004.x) * x_1006) + vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1016 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_1016 == 1.0f);
  let x_1018 : bool = u_xlatb9;
  if (x_1018) {
    let x_1023 : f32 = u_xlat0.x;
    x_1019 = x_1023;
  } else {
    x_1019 = 1.0f;
  }
  let x_1025 : f32 = x_1019;
  SV_Target0.w = x_1025;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

