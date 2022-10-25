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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_223 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_751 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_161 : f32;
  var x_173 : f32;
  var x_185 : f32;
  var u_xlat28 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlat29 : f32;
  var u_xlatu29 : u32;
  var u_xlati29 : i32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlatb12 : bool;
  var u_xlatb21 : bool;
  var x_552 : f32;
  var u_xlat21 : f32;
  var u_xlat31 : f32;
  var u_xlatu31 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu6 : u32;
  var u_xlati15 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati6 : i32;
  var u_xlat15 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_954 : f32;
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
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_160 : bool = u_xlatb1;
  if (x_160) {
    let x_165 : f32 = u_xlat10.x;
    x_161 = x_165;
  } else {
    let x_169 : f32 = x_44.unity_MatrixV[0i].z;
    x_161 = x_169;
  }
  let x_170 : f32 = x_161;
  u_xlat2.x = x_170;
  let x_172 : bool = u_xlatb1;
  if (x_172) {
    let x_178 : f32 = u_xlat10.y;
    x_173 = x_178;
  } else {
    let x_181 : f32 = x_44.unity_MatrixV[1i].z;
    x_173 = x_181;
  }
  let x_182 : f32 = x_173;
  u_xlat2.y = x_182;
  let x_184 : bool = u_xlatb1;
  if (x_184) {
    let x_189 : f32 = u_xlat10.z;
    x_185 = x_189;
  } else {
    let x_192 : f32 = x_44.unity_MatrixV[2i].z;
    x_185 = x_192;
  }
  let x_193 : f32 = x_185;
  u_xlat2.z = x_193;
  let x_196 : vec3<f32> = vs_TEXCOORD2;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_196, x_197);
  let x_201 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_201);
  let x_204 : vec3<f32> = u_xlat1;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_209 : vec3<f32> = u_xlat2;
  let x_210 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_209, x_210);
  let x_212 : f32 = u_xlat28;
  u_xlat28 = max(x_212, 1.17549435e-37f);
  let x_215 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_215);
  let x_218 : vec3<f32> = vs_TEXCOORD1;
  let x_225 : vec4<f32> = x_223.x_CascadeShadowSplitSpheres0;
  let x_228 : vec3<f32> = (x_218 + -(vec3<f32>(x_225.x, x_225.y, x_225.z)));
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : vec3<f32> = vs_TEXCOORD1;
  let x_234 : vec4<f32> = x_223.x_CascadeShadowSplitSpheres1;
  let x_237 : vec3<f32> = (x_232 + -(vec3<f32>(x_234.x, x_234.y, x_234.z)));
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_241 : vec3<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = x_223.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_241 + -(vec3<f32>(x_244.x, x_244.y, x_244.z)));
  let x_249 : vec3<f32> = vs_TEXCOORD1;
  let x_252 : vec4<f32> = x_223.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_249 + -(vec3<f32>(x_252.x, x_252.y, x_252.z)));
  let x_256 : vec4<f32> = u_xlat3;
  let x_258 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_262 : vec4<f32> = u_xlat4;
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_268 : vec3<f32> = u_xlat5;
  let x_269 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_268, x_269);
  let x_272 : vec3<f32> = u_xlat6;
  let x_273 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_272, x_273);
  let x_279 : vec4<f32> = u_xlat3;
  let x_282 : vec4<f32> = x_223.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_279 < x_282);
  let x_285 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_285);
  let x_289 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_289);
  let x_293 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_293);
  let x_297 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_297);
  let x_301 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_301);
  let x_307 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_307);
  let x_311 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_311);
  let x_314 : vec4<f32> = u_xlat3;
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) + vec3<f32>(x_316.y, x_316.z, x_316.w));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat3;
  let x_324 : vec3<f32> = max(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_325.x, x_324.x, x_324.y, x_324.z);
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(x_328, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_334 : f32 = u_xlat29;
  u_xlat29 = (-(x_334) + 4.0f);
  let x_339 : f32 = u_xlat29;
  u_xlatu29 = u32(x_339);
  let x_343 : u32 = u_xlatu29;
  u_xlati29 = (bitcast<i32>(x_343) << bitcast<u32>(2i));
  let x_346 : vec3<f32> = vs_TEXCOORD1;
  let x_348 : i32 = u_xlati29;
  let x_351 : i32 = u_xlati29;
  let x_355 : vec4<f32> = x_223.x_MainLightWorldToShadow[((x_348 + 1i) / 4i)][((x_351 + 1i) % 4i)];
  let x_357 : vec3<f32> = (vec3<f32>(x_346.y, x_346.y, x_346.y) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : i32 = u_xlati29;
  let x_362 : i32 = u_xlati29;
  let x_365 : vec4<f32> = x_223.x_MainLightWorldToShadow[(x_360 / 4i)][(x_362 % 4i)];
  let x_367 : vec3<f32> = vs_TEXCOORD1;
  let x_370 : vec4<f32> = u_xlat3;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.x, x_367.x, x_367.x)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : i32 = u_xlati29;
  let x_378 : i32 = u_xlati29;
  let x_382 : vec4<f32> = x_223.x_MainLightWorldToShadow[((x_375 + 2i) / 4i)][((x_378 + 2i) % 4i)];
  let x_384 : vec3<f32> = vs_TEXCOORD1;
  let x_387 : vec4<f32> = u_xlat3;
  let x_389 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(x_384.z, x_384.z, x_384.z)) + vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : i32 = u_xlati29;
  let x_397 : i32 = u_xlati29;
  let x_401 : vec4<f32> = x_223.x_MainLightWorldToShadow[((x_394 + 3i) / 4i)][((x_397 + 3i) % 4i)];
  let x_403 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) + vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_412 : vec2<f32> = vs_TEXCOORD7;
  let x_414 : f32 = x_44.x_GlobalMipBias.x;
  let x_415 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_412, x_414);
  u_xlat4 = x_415;
  let x_420 : vec2<f32> = vs_TEXCOORD7;
  let x_422 : f32 = x_44.x_GlobalMipBias.x;
  let x_423 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_420, x_422);
  u_xlat5 = vec3<f32>(x_423.x, x_423.y, x_423.z);
  let x_425 : vec4<f32> = u_xlat4;
  let x_429 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec3<f32> = u_xlat1;
  let x_433 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(x_432, vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : f32 = u_xlat29;
  u_xlat29 = (x_436 + 0.5f);
  let x_439 : f32 = u_xlat29;
  let x_441 : vec3<f32> = u_xlat5;
  let x_442 : vec3<f32> = (vec3<f32>(x_439, x_439, x_439) * x_441);
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_446 : f32 = u_xlat4.w;
  u_xlat29 = max(x_446, 0.0001f);
  let x_449 : vec4<f32> = u_xlat4;
  let x_451 : f32 = u_xlat29;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.y, x_449.z) / vec3<f32>(x_451, x_451, x_451));
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_458 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_459 : vec2<f32> = vec2<f32>(x_458.x, x_458.y);
  let x_463 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_459.x, x_459.y));
  let x_464 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_463.x, x_463.y, x_464.z);
  let x_466 : vec3<f32> = u_xlat5;
  let x_468 : vec4<f32> = hlslcc_FragCoord;
  let x_470 : vec2<f32> = (vec2<f32>(x_466.x, x_466.y) * vec2<f32>(x_468.x, x_468.y));
  let x_471 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_470.x, x_470.y, x_471.z);
  let x_474 : f32 = u_xlat5.y;
  let x_477 : f32 = x_44.x_ScaleBiasRt.x;
  let x_480 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29 = ((x_474 * x_477) + x_480);
  let x_482 : f32 = u_xlat29;
  u_xlat5.z = (-(x_482) + 1.0f);
  let x_491 : vec3<f32> = u_xlat5;
  let x_494 : f32 = x_44.x_GlobalMipBias.x;
  let x_495 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_491.x, x_491.z), x_494);
  u_xlat29 = x_495.x;
  let x_498 : f32 = u_xlat29;
  u_xlat30 = (x_498 + -1.0f);
  let x_501 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_502 : f32 = u_xlat30;
  u_xlat30 = ((x_501 * x_502) + 1.0f);
  let x_505 : f32 = u_xlat29;
  u_xlat29 = min(x_505, 1.0f);
  let x_508 : vec4<f32> = u_xlat3;
  let x_509 : vec2<f32> = vec2<f32>(x_508.x, x_508.y);
  let x_511 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_509.x, x_509.y, x_511);
  let x_523 : vec3<f32> = txVec0;
  let x_525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_523.xy, x_523.z);
  u_xlat3.x = x_525;
  let x_529 : f32 = x_223.x_MainLightShadowParams.x;
  u_xlat12 = (-(x_529) + 1.0f);
  let x_533 : f32 = u_xlat3.x;
  let x_535 : f32 = x_223.x_MainLightShadowParams.x;
  let x_537 : f32 = u_xlat12;
  u_xlat3.x = ((x_533 * x_535) + x_537);
  let x_542 : f32 = u_xlat3.z;
  u_xlatb12 = (0.0f >= x_542);
  let x_546 : f32 = u_xlat3.z;
  u_xlatb21 = (x_546 >= 1.0f);
  let x_548 : bool = u_xlatb21;
  let x_549 : bool = u_xlatb12;
  u_xlatb12 = (x_548 | x_549);
  let x_551 : bool = u_xlatb12;
  if (x_551) {
    x_552 = 1.0f;
  } else {
    let x_557 : f32 = u_xlat3.x;
    x_552 = x_557;
  }
  let x_558 : f32 = x_552;
  u_xlat3.x = x_558;
  let x_560 : vec3<f32> = vs_TEXCOORD1;
  let x_562 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_560 + -(x_562));
  let x_565 : vec3<f32> = u_xlat5;
  let x_566 : vec3<f32> = u_xlat5;
  u_xlat12 = dot(x_565, x_566);
  let x_568 : f32 = u_xlat12;
  let x_570 : f32 = x_223.x_MainLightShadowParams.z;
  let x_573 : f32 = x_223.x_MainLightShadowParams.w;
  u_xlat12 = ((x_568 * x_570) + x_573);
  let x_575 : f32 = u_xlat12;
  u_xlat12 = clamp(x_575, 0.0f, 1.0f);
  let x_579 : f32 = u_xlat3.x;
  u_xlat21 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat12;
  let x_583 : f32 = u_xlat21;
  let x_586 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_582 * x_583) + x_586);
  let x_589 : f32 = u_xlat30;
  let x_592 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_589, x_589, x_589) * vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : f32 = u_xlat29;
  let x_597 : vec4<f32> = u_xlat4;
  let x_599 : vec3<f32> = (vec3<f32>(x_595, x_595, x_595) * vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = u_xlat3.x;
  let x_605 : f32 = x_93.unity_LightData.z;
  u_xlat29 = (x_603 * x_605);
  let x_607 : f32 = u_xlat29;
  let x_609 : vec3<f32> = u_xlat5;
  let x_610 : vec3<f32> = (vec3<f32>(x_607, x_607, x_607) * x_609);
  let x_611 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec3<f32> = u_xlat1;
  let x_615 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = dot(x_613, vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : f32 = u_xlat29;
  u_xlat29 = clamp(x_618, 0.0f, 1.0f);
  let x_620 : f32 = u_xlat29;
  let x_622 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec3<f32>(x_620, x_620, x_620) * vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_626 : f32 = u_xlat0.x;
  u_xlat29 = ((x_626 * 10.0f) + 1.0f);
  let x_630 : f32 = u_xlat29;
  u_xlat29 = exp2(x_630);
  let x_632 : vec3<f32> = u_xlat2;
  let x_633 : f32 = u_xlat28;
  let x_637 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_632 * vec3<f32>(x_633, x_633, x_633)) + vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_641 : vec3<f32> = u_xlat6;
  let x_642 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_641, x_642);
  let x_644 : f32 = u_xlat31;
  u_xlat31 = max(x_644, 1.17549435e-37f);
  let x_646 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat31;
  let x_650 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_648, x_648, x_648) * x_650);
  let x_652 : vec3<f32> = u_xlat1;
  let x_653 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_652, x_653);
  let x_655 : f32 = u_xlat31;
  u_xlat31 = clamp(x_655, 0.0f, 1.0f);
  let x_657 : f32 = u_xlat31;
  u_xlat31 = log2(x_657);
  let x_659 : f32 = u_xlat29;
  let x_660 : f32 = u_xlat31;
  u_xlat31 = (x_659 * x_660);
  let x_662 : f32 = u_xlat31;
  u_xlat31 = exp2(x_662);
  let x_664 : f32 = u_xlat31;
  let x_667 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_664, x_664, x_664) * vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec4<f32> = u_xlat3;
  let x_672 : vec3<f32> = u_xlat6;
  let x_673 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * x_672);
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec3<f32> = u_xlat5;
  let x_677 : vec4<f32> = u_xlat0;
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : vec3<f32> = ((x_676 * vec3<f32>(x_677.y, x_677.z, x_677.w)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_686 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_688 : f32 = x_93.unity_LightData.y;
  u_xlat31 = min(x_686, x_688);
  let x_691 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_691));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_703 : u32 = u_xlatu_loop_1;
    let x_704 : u32 = u_xlatu31;
    if ((x_703 < x_704)) {
    } else {
      break;
    }
    let x_707 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_707 >> 2u);
    let x_710 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_710 & 3u));
    let x_713 : u32 = u_xlatu6;
    let x_716 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_713)];
    let x_726 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_731 : vec4<u32> = indexable[x_726];
    u_xlat6.x = dot(x_716, bitcast<vec4<f32>>(x_731));
    let x_737 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_737);
    let x_740 : vec3<f32> = vs_TEXCOORD1;
    let x_752 : i32 = u_xlati6;
    let x_754 : vec4<f32> = x_751.x_AdditionalLightsPosition[x_752];
    let x_757 : i32 = u_xlati6;
    let x_759 : vec4<f32> = x_751.x_AdditionalLightsPosition[x_757];
    u_xlat15 = ((-(x_740) * vec3<f32>(x_754.w, x_754.w, x_754.w)) + vec3<f32>(x_759.x, x_759.y, x_759.z));
    let x_763 : vec3<f32> = u_xlat15;
    let x_764 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_763, x_764);
    let x_768 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_768, 6.10351562e-05f);
    let x_774 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_774);
    let x_777 : vec3<f32> = u_xlat15;
    let x_778 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_777 * vec3<f32>(x_778.x, x_778.x, x_778.x));
    let x_782 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_782);
    let x_786 : f32 = u_xlat7.x;
    let x_787 : i32 = u_xlati6;
    let x_789 : f32 = x_751.x_AdditionalLightsAttenuation[x_787].x;
    u_xlat7.x = (x_786 * x_789);
    let x_793 : f32 = u_xlat7.x;
    let x_796 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_793) * x_796) + 1.0f);
    let x_801 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_801, 0.0f);
    let x_805 : f32 = u_xlat7.x;
    let x_807 : f32 = u_xlat7.x;
    u_xlat7.x = (x_805 * x_807);
    let x_811 : f32 = u_xlat7.x;
    let x_813 : f32 = u_xlat16.x;
    u_xlat7.x = (x_811 * x_813);
    let x_816 : i32 = u_xlati6;
    let x_818 : vec4<f32> = x_751.x_AdditionalLightsSpotDir[x_816];
    let x_820 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_818.x, x_818.y, x_818.z), x_820);
    let x_824 : f32 = u_xlat16.x;
    let x_825 : i32 = u_xlati6;
    let x_827 : f32 = x_751.x_AdditionalLightsAttenuation[x_825].z;
    let x_829 : i32 = u_xlati6;
    let x_831 : f32 = x_751.x_AdditionalLightsAttenuation[x_829].w;
    u_xlat16.x = ((x_824 * x_827) + x_831);
    let x_835 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_835, 0.0f, 1.0f);
    let x_839 : f32 = u_xlat16.x;
    let x_841 : f32 = u_xlat16.x;
    u_xlat16.x = (x_839 * x_841);
    let x_845 : f32 = u_xlat16.x;
    let x_847 : f32 = u_xlat7.x;
    u_xlat7.x = (x_845 * x_847);
    let x_850 : f32 = u_xlat30;
    let x_852 : i32 = u_xlati6;
    let x_854 : vec4<f32> = x_751.x_AdditionalLightsColor[x_852];
    u_xlat16 = (vec3<f32>(x_850, x_850, x_850) * vec3<f32>(x_854.x, x_854.y, x_854.z));
    let x_857 : vec3<f32> = u_xlat7;
    let x_859 : vec3<f32> = u_xlat16;
    u_xlat7 = (vec3<f32>(x_857.x, x_857.x, x_857.x) * x_859);
    let x_861 : vec3<f32> = u_xlat1;
    let x_862 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(x_861, x_862);
    let x_866 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_866, 0.0f, 1.0f);
    let x_870 : vec3<f32> = u_xlat6;
    let x_872 : vec3<f32> = u_xlat7;
    u_xlat8 = (vec3<f32>(x_870.x, x_870.x, x_870.x) * x_872);
    let x_874 : vec3<f32> = u_xlat2;
    let x_875 : f32 = u_xlat28;
    let x_878 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_874 * vec3<f32>(x_875, x_875, x_875)) + x_878);
    let x_881 : vec3<f32> = u_xlat6;
    let x_882 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_881, x_882);
    let x_884 : f32 = u_xlat33;
    u_xlat33 = max(x_884, 1.17549435e-37f);
    let x_886 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_886);
    let x_888 : f32 = u_xlat33;
    let x_890 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_888, x_888, x_888) * x_890);
    let x_892 : vec3<f32> = u_xlat1;
    let x_893 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(x_892, x_893);
    let x_897 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_897, 0.0f, 1.0f);
    let x_901 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_901);
    let x_904 : f32 = u_xlat29;
    let x_906 : f32 = u_xlat6.x;
    u_xlat6.x = (x_904 * x_906);
    let x_910 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_910);
    let x_913 : vec3<f32> = u_xlat6;
    let x_916 : vec4<f32> = x_56.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_913.x, x_913.x, x_913.x) * vec3<f32>(x_916.x, x_916.y, x_916.z));
    let x_919 : vec3<f32> = u_xlat6;
    let x_920 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_919 * x_920);
    let x_922 : vec3<f32> = u_xlat8;
    let x_923 : vec4<f32> = u_xlat0;
    let x_926 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_922 * vec3<f32>(x_923.y, x_923.z, x_923.w)) + x_926);
    let x_928 : vec3<f32> = u_xlat5;
    let x_929 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_928 + x_929);

    continuing {
      let x_931 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_931 + bitcast<u32>(1i));
    }
  }
  let x_934 : vec4<f32> = u_xlat4;
  let x_936 : vec4<f32> = u_xlat0;
  let x_939 : vec4<f32> = u_xlat3;
  u_xlat9 = ((vec3<f32>(x_934.x, x_934.y, x_934.z) * vec3<f32>(x_936.y, x_936.z, x_936.w)) + vec3<f32>(x_939.x, x_939.y, x_939.z));
  let x_944 : vec3<f32> = u_xlat5;
  let x_945 : vec3<f32> = u_xlat9;
  let x_946 : vec3<f32> = (x_944 + x_945);
  let x_947 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
  let x_951 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_951 == 1.0f);
  let x_953 : bool = u_xlatb9;
  if (x_953) {
    let x_958 : f32 = u_xlat0.x;
    x_954 = x_958;
  } else {
    x_954 = 1.0f;
  }
  let x_960 : f32 = x_954;
  SV_Target0.w = x_960;
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

