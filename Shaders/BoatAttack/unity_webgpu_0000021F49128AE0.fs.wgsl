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
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_89 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_151 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(4) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_267 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_351 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1187 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb11 : vec2<bool>;
  var u_xlat11 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat5 : vec3<f32>;
  var x_177 : f32;
  var x_190 : f32;
  var x_202 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlatb13 : bool;
  var x_455 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlatu13 : vec3<u32>;
  var u_xlatu35 : u32;
  var u_xlatu3 : u32;
  var u_xlati35 : i32;
  var u_xlati24 : i32;
  var u_xlatu24 : u32;
  var u_xlati13 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat24 : f32;
  var x_588 : f32;
  var x_613 : f32;
  var x_658 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat25 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu34 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec4<f32> = gl_FragCoord;
  let x_50 : vec3<f32> = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_55 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_50.x, x_50.y, x_50.z, (1.0f / x_55));
  let x_65 : vec3<f32> = vs_INTERP1;
  let x_66 : vec3<f32> = vs_INTERP1;
  u_xlat0 = dot(x_65, x_66);
  let x_68 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_68);
  let x_70 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_70);
  let x_79 : f32 = vs_INTERP2.w;
  u_xlatb11.x = (0.0f < x_79);
  let x_93 : f32 = x_89.unity_WorldTransformParams.w;
  u_xlatb11.y = (x_93 >= 0.0f);
  let x_100 : bool = u_xlatb11.x;
  u_xlat11.x = select(-1.0f, 1.0f, x_100);
  let x_105 : bool = u_xlatb11.y;
  u_xlat11.y = select(-1.0f, 1.0f, x_105);
  let x_109 : f32 = u_xlat11.y;
  let x_111 : f32 = u_xlat11.x;
  u_xlat11.x = (x_109 * x_111);
  let x_115 : vec3<f32> = vs_INTERP1;
  let x_117 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_115.z, x_115.x, x_115.y) * vec3<f32>(x_117.y, x_117.z, x_117.x));
  let x_120 : vec3<f32> = vs_INTERP1;
  let x_122 : vec4<f32> = vs_INTERP2;
  let x_125 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_120.y, x_120.z, x_120.x) * vec3<f32>(x_122.z, x_122.x, x_122.y)) + -(x_125));
  let x_128 : vec3<f32> = u_xlat11;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat11 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_132 : f32 = u_xlat0;
  let x_134 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_132, x_132, x_132) * x_134);
  let x_137 : f32 = u_xlat0;
  let x_139 : vec4<f32> = vs_INTERP2;
  u_xlat2 = (vec3<f32>(x_137, x_137, x_137) * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_143 : vec3<f32> = u_xlat11;
  let x_144 : f32 = u_xlat0;
  u_xlat3 = (x_143 * vec3<f32>(x_144, x_144, x_144));
  let x_154 : f32 = x_151.unity_OrthoParams.w;
  u_xlatb0 = (x_154 == 0.0f);
  let x_158 : vec3<f32> = vs_INTERP0;
  let x_163 : vec3<f32> = x_151.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_158) + x_163);
  let x_166 : vec3<f32> = u_xlat4;
  let x_167 : vec3<f32> = u_xlat4;
  u_xlat34 = dot(x_166, x_167);
  let x_169 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_169);
  let x_171 : f32 = u_xlat34;
  let x_173 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_171, x_171, x_171) * x_173);
  let x_176 : bool = u_xlatb0;
  if (x_176) {
    let x_181 : f32 = u_xlat4.x;
    x_177 = x_181;
  } else {
    let x_186 : f32 = x_151.unity_MatrixV[0i].z;
    x_177 = x_186;
  }
  let x_187 : f32 = x_177;
  u_xlat5.x = x_187;
  let x_189 : bool = u_xlatb0;
  if (x_189) {
    let x_194 : f32 = u_xlat4.y;
    x_190 = x_194;
  } else {
    let x_198 : f32 = x_151.unity_MatrixV[1i].z;
    x_190 = x_198;
  }
  let x_199 : f32 = x_190;
  u_xlat5.y = x_199;
  let x_201 : bool = u_xlatb0;
  if (x_201) {
    let x_206 : f32 = u_xlat4.z;
    x_202 = x_206;
  } else {
    let x_210 : f32 = x_151.unity_MatrixV[2i].z;
    x_202 = x_210;
  }
  let x_211 : f32 = x_202;
  u_xlat5.z = x_211;
  let x_213 : vec3<f32> = u_xlat5;
  let x_217 : vec4<f32> = x_89.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_213.y, x_213.y, x_213.y) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec4<f32> = x_89.unity_WorldToObject[0i];
  let x_223 : vec3<f32> = u_xlat5;
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_223.x, x_223.x, x_223.x)) + x_226);
  let x_229 : vec4<f32> = x_89.unity_WorldToObject[2i];
  let x_231 : vec3<f32> = u_xlat5;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.z, x_231.z, x_231.z)) + x_234);
  let x_236 : vec3<f32> = u_xlat4;
  let x_237 : vec3<f32> = u_xlat4;
  u_xlat0 = dot(x_236, x_237);
  let x_239 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_239);
  let x_241 : f32 = u_xlat0;
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_241, x_241, x_241) * x_243);
  let x_257 : vec4<f32> = vs_INTERP3;
  let x_260 : f32 = x_151.x_GlobalMipBias.x;
  let x_261 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_257.x, x_257.y), x_260);
  u_xlat6 = x_261;
  let x_263 : vec4<f32> = u_xlat6;
  let x_269 : vec4<f32> = x_267.Color_C30C7CA3;
  u_xlat7 = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_278 : vec4<f32> = vs_INTERP3;
  let x_281 : f32 = x_151.x_GlobalMipBias.x;
  let x_282 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_278.x, x_278.y), x_281);
  u_xlat8 = vec4<f32>(x_282.w, x_282.x, x_282.y, x_282.z);
  let x_285 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_285.y, x_285.z, x_285.w, x_285.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_292 : vec4<f32> = u_xlat9;
  let x_293 : vec4<f32> = u_xlat9;
  u_xlat0 = dot(x_292, x_293);
  let x_295 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_295);
  let x_298 : f32 = u_xlat0;
  let x_300 : vec4<f32> = u_xlat9;
  u_xlat19 = (vec3<f32>(x_298, x_298, x_298) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_305 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_305 * 200.0f);
  let x_308 : f32 = u_xlat0;
  u_xlat0 = min(x_308, 1.0f);
  let x_310 : f32 = u_xlat0;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = (vec3<f32>(x_310, x_310, x_310) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec3<f32> = u_xlat3;
  let x_318 : vec3<f32> = u_xlat19;
  u_xlat3 = (x_317 * vec3<f32>(x_318.y, x_318.y, x_318.y));
  let x_321 : vec3<f32> = u_xlat19;
  let x_323 : vec3<f32> = u_xlat2;
  let x_325 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_321.x, x_321.x, x_321.x) * x_323) + x_325);
  let x_327 : vec3<f32> = u_xlat19;
  let x_329 : vec3<f32> = u_xlat1;
  let x_331 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_327.z, x_327.z, x_327.z) * x_329) + x_331);
  let x_333 : vec3<f32> = u_xlat1;
  let x_334 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_333, x_334);
  let x_336 : f32 = u_xlat0;
  u_xlat0 = max(x_336, 1.17549435e-37f);
  let x_339 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_339);
  let x_341 : f32 = u_xlat0;
  let x_343 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_341, x_341, x_341) * x_343);
  let x_345 : vec3<f32> = vs_INTERP0;
  let x_353 : vec4<f32> = x_351.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_345.y, x_345.y, x_345.y) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_357 : vec4<f32> = x_351.x_MainLightWorldToShadow[0i][0i];
  let x_359 : vec3<f32> = vs_INTERP0;
  let x_362 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.x, x_359.x)) + x_362);
  let x_365 : vec4<f32> = x_351.x_MainLightWorldToShadow[0i][2i];
  let x_367 : vec3<f32> = vs_INTERP0;
  let x_370 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.z, x_367.z, x_367.z)) + x_370);
  let x_372 : vec3<f32> = u_xlat2;
  let x_374 : vec4<f32> = x_351.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_372 + vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_378 : vec3<f32> = u_xlat2;
  let x_379 : vec2<f32> = vec2<f32>(x_378.x, x_378.y);
  let x_381 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_379.x, x_379.y, x_381);
  let x_393 : vec3<f32> = txVec0;
  let x_395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_393.xy, x_393.z);
  u_xlat0 = x_395;
  let x_398 : f32 = x_351.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_398) + 1.0f);
  let x_401 : f32 = u_xlat0;
  let x_403 : f32 = x_351.x_MainLightShadowParams.x;
  let x_405 : f32 = u_xlat34;
  u_xlat0 = ((x_401 * x_403) + x_405);
  let x_409 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_409);
  let x_413 : f32 = u_xlat2.z;
  u_xlatb13 = (x_413 >= 1.0f);
  let x_415 : bool = u_xlatb13;
  let x_416 : bool = u_xlatb2;
  u_xlatb2 = (x_415 | x_416);
  let x_418 : bool = u_xlatb2;
  let x_419 : f32 = u_xlat0;
  u_xlat0 = select(x_419, 1.0f, x_418);
  let x_421 : vec3<f32> = u_xlat1;
  let x_423 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat1.x = dot(x_421, -(vec3<f32>(x_423.x, x_423.y, x_423.z)));
  let x_429 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_429, 0.0f, 1.0f);
  let x_432 : f32 = u_xlat0;
  let x_436 : vec4<f32> = x_151.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_432, x_432, x_432) * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec3<f32> = u_xlat1;
  let x_441 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_439.x, x_439.x, x_439.x) * x_441);
  let x_443 : vec3<f32> = u_xlat1;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_443 * vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_448 : f32 = x_89.unity_LODFade.x;
  u_xlatb0 = (x_448 < 0.0f);
  let x_451 : f32 = x_89.unity_LODFade.x;
  u_xlat2.x = (x_451 + 1.0f);
  let x_454 : bool = u_xlatb0;
  if (x_454) {
    let x_459 : f32 = u_xlat2.x;
    x_455 = x_459;
  } else {
    let x_462 : f32 = x_89.unity_LODFade.x;
    x_455 = x_462;
  }
  let x_463 : f32 = x_455;
  u_xlat0 = x_463;
  let x_465 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_465);
  let x_468 : vec3<f32> = u_xlat4;
  let x_471 : vec4<f32> = x_151.x_ScreenParams;
  u_xlat13 = (abs(x_468) * vec3<f32>(x_471.x, x_471.y, x_471.x));
  let x_477 : vec3<f32> = u_xlat13;
  u_xlatu13 = vec3<u32>(x_477);
  let x_481 : u32 = u_xlatu13.z;
  u_xlatu35 = (x_481 * 1025u);
  let x_485 : u32 = u_xlatu35;
  u_xlatu3 = (x_485 >> 6u);
  let x_489 : u32 = u_xlatu35;
  let x_490 : u32 = u_xlatu3;
  u_xlati35 = bitcast<i32>((x_489 ^ x_490));
  let x_493 : i32 = u_xlati35;
  u_xlatu35 = (bitcast<u32>(x_493) * 9u);
  let x_497 : u32 = u_xlatu35;
  u_xlatu3 = (x_497 >> 11u);
  let x_500 : u32 = u_xlatu35;
  let x_501 : u32 = u_xlatu3;
  u_xlati35 = bitcast<i32>((x_500 ^ x_501));
  let x_504 : i32 = u_xlati35;
  u_xlati35 = (x_504 * 32769i);
  let x_508 : i32 = u_xlati35;
  let x_511 : u32 = u_xlatu13.y;
  u_xlati24 = bitcast<i32>((bitcast<u32>(x_508) ^ x_511));
  let x_515 : i32 = u_xlati24;
  u_xlatu24 = (bitcast<u32>(x_515) * 1025u);
  let x_518 : u32 = u_xlatu24;
  u_xlatu35 = (x_518 >> 6u);
  let x_520 : u32 = u_xlatu35;
  let x_521 : u32 = u_xlatu24;
  u_xlati24 = bitcast<i32>((x_520 ^ x_521));
  let x_524 : i32 = u_xlati24;
  u_xlatu24 = (bitcast<u32>(x_524) * 9u);
  let x_527 : u32 = u_xlatu24;
  u_xlatu35 = (x_527 >> 11u);
  let x_529 : u32 = u_xlatu35;
  let x_530 : u32 = u_xlatu24;
  u_xlati24 = bitcast<i32>((x_529 ^ x_530));
  let x_533 : i32 = u_xlati24;
  u_xlati24 = (x_533 * 32769i);
  let x_536 : i32 = u_xlati24;
  let x_539 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((bitcast<u32>(x_536) ^ x_539));
  let x_542 : i32 = u_xlati13;
  u_xlatu13.x = (bitcast<u32>(x_542) * 1025u);
  let x_547 : u32 = u_xlatu13.x;
  u_xlatu24 = (x_547 >> 6u);
  let x_549 : u32 = u_xlatu24;
  let x_551 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((x_549 ^ x_551));
  let x_554 : i32 = u_xlati13;
  u_xlatu13.x = (bitcast<u32>(x_554) * 9u);
  let x_559 : u32 = u_xlatu13.x;
  u_xlatu24 = (x_559 >> 11u);
  let x_561 : u32 = u_xlatu24;
  let x_563 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((x_561 ^ x_563));
  let x_566 : i32 = u_xlati13;
  u_xlati13 = (x_566 * 32769i);
  param = 1065353216i;
  let x_572 : i32 = u_xlati13;
  param_1 = x_572;
  param_2 = 0i;
  param_3 = 23i;
  let x_575 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat13.x = bitcast<f32>(x_575);
  let x_579 : f32 = u_xlat13.x;
  u_xlat13.x = (x_579 + -1.0f);
  let x_584 : f32 = u_xlat13.x;
  u_xlat24 = (-(x_584) + 1.0f);
  let x_587 : bool = u_xlatb2;
  if (x_587) {
    let x_592 : f32 = u_xlat13.x;
    x_588 = x_592;
  } else {
    let x_594 : f32 = u_xlat24;
    x_588 = x_594;
  }
  let x_595 : f32 = x_588;
  u_xlat2.x = x_595;
  let x_597 : f32 = u_xlat0;
  let x_600 : f32 = u_xlat2.x;
  u_xlat0 = ((x_597 * 2.0f) + -(x_600));
  let x_603 : f32 = u_xlat0;
  let x_605 : f32 = u_xlat6.w;
  u_xlat2.x = (x_603 * x_605);
  let x_609 : f32 = u_xlat2.x;
  u_xlatb13 = (x_609 >= 0.400000006f);
  let x_612 : bool = u_xlatb13;
  if (x_612) {
    let x_617 : f32 = u_xlat2.x;
    x_613 = x_617;
  } else {
    x_613 = 0.0f;
  }
  let x_619 : f32 = x_613;
  u_xlat13.x = x_619;
  let x_622 : f32 = u_xlat6.w;
  let x_623 : f32 = u_xlat0;
  u_xlat0 = ((x_622 * x_623) + -0.400000006f);
  let x_628 : f32 = u_xlat2.x;
  u_xlat24 = dpdxCoarse(x_628);
  let x_631 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_631);
  let x_635 : f32 = u_xlat2.x;
  let x_637 : f32 = u_xlat24;
  u_xlat2.x = (abs(x_635) + abs(x_637));
  let x_642 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_642, 0.0001f);
  let x_646 : f32 = u_xlat0;
  let x_648 : f32 = u_xlat2.x;
  u_xlat0 = (x_646 / x_648);
  let x_650 : f32 = u_xlat0;
  u_xlat0 = (x_650 + 0.5f);
  let x_652 : f32 = u_xlat0;
  u_xlat0 = clamp(x_652, 0.0f, 1.0f);
  let x_655 : f32 = x_151.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_655 == 0.0f));
  let x_657 : bool = u_xlatb2;
  if (x_657) {
    let x_661 : f32 = u_xlat0;
    x_658 = x_661;
  } else {
    let x_664 : f32 = u_xlat13.x;
    x_658 = x_664;
  }
  let x_665 : f32 = x_658;
  u_xlat0 = x_665;
  let x_666 : f32 = u_xlat0;
  u_xlat13.x = (x_666 + -0.0001f);
  let x_671 : f32 = u_xlat13.x;
  u_xlatb13 = (x_671 < 0.0f);
  let x_673 : bool = u_xlatb13;
  if (((select(0i, 1i, x_673) * -1i) != 0i)) {
    discard;
  }
  let x_681 : vec3<f32> = u_xlat11;
  let x_682 : vec3<f32> = u_xlat19;
  u_xlat11 = (x_681 * vec3<f32>(x_682.y, x_682.y, x_682.y));
  let x_685 : vec3<f32> = u_xlat19;
  let x_687 : vec4<f32> = vs_INTERP2;
  let x_690 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_685.x, x_685.x, x_685.x) * vec3<f32>(x_687.x, x_687.y, x_687.z)) + x_690);
  let x_692 : vec3<f32> = u_xlat19;
  let x_694 : vec3<f32> = vs_INTERP1;
  let x_696 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_692.z, x_692.z, x_692.z) * x_694) + x_696);
  let x_698 : vec3<f32> = u_xlat11;
  let x_699 : vec3<f32> = u_xlat11;
  u_xlat13.x = dot(x_698, x_699);
  let x_703 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_703);
  let x_706 : vec3<f32> = u_xlat11;
  let x_707 : vec3<f32> = u_xlat13;
  u_xlat11 = (x_706 * vec3<f32>(x_707.x, x_707.x, x_707.x));
  let x_717 : vec2<f32> = vs_INTERP5;
  let x_719 : f32 = x_151.x_GlobalMipBias.x;
  let x_720 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_717, x_719);
  u_xlat13 = vec3<f32>(x_720.x, x_720.y, x_720.z);
  let x_724 : vec4<f32> = x_151.x_ScaledScreenParams;
  let x_725 : vec2<f32> = vec2<f32>(x_724.x, x_724.y);
  let x_729 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_725.x, x_725.y));
  let x_730 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_729.x, x_729.y, x_730.z);
  let x_732 : vec3<f32> = u_xlat3;
  let x_734 : vec4<f32> = hlslcc_FragCoord;
  let x_736 : vec2<f32> = (vec2<f32>(x_732.x, x_732.y) * vec2<f32>(x_734.x, x_734.y));
  let x_737 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_736.x, x_736.y, x_737.z);
  let x_741 : f32 = u_xlat3.y;
  let x_744 : f32 = x_151.x_ScaleBiasRt.x;
  let x_747 : f32 = x_151.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_741 * x_744) + x_747);
  let x_751 : f32 = u_xlat14.x;
  u_xlat3.z = (-(x_751) + 1.0f);
  let x_756 : f32 = u_xlat8.x;
  u_xlat8.x = x_756;
  let x_759 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_759, 0.0f, 1.0f);
  let x_762 : f32 = u_xlat0;
  u_xlat0 = x_762;
  let x_763 : f32 = u_xlat0;
  u_xlat0 = clamp(x_763, 0.0f, 1.0f);
  let x_765 : vec3<f32> = u_xlat7;
  u_xlat4 = (x_765 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_770 : f32 = u_xlat8.x;
  u_xlat14.x = (-(x_770) + 1.0f);
  let x_776 : f32 = u_xlat14.x;
  let x_778 : f32 = u_xlat14.x;
  u_xlat36 = (x_776 * x_778);
  let x_780 : f32 = u_xlat36;
  u_xlat36 = max(x_780, 0.0078125f);
  let x_784 : f32 = u_xlat36;
  let x_785 : f32 = u_xlat36;
  u_xlat37 = (x_784 * x_785);
  let x_789 : f32 = u_xlat8.x;
  u_xlat38 = (x_789 + 0.040000021f);
  let x_792 : f32 = u_xlat38;
  u_xlat38 = min(x_792, 1.0f);
  let x_794 : f32 = u_xlat36;
  u_xlat6.x = ((x_794 * 4.0f) + 2.0f);
  let x_804 : vec3<f32> = u_xlat3;
  let x_807 : f32 = x_151.x_GlobalMipBias.x;
  let x_808 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_804.x, x_804.z), x_807);
  u_xlat3.x = x_808.x;
  let x_813 : f32 = u_xlat3.x;
  u_xlat25 = (x_813 + -1.0f);
  let x_817 : f32 = x_151.x_AmbientOcclusionParam.w;
  let x_818 : f32 = u_xlat25;
  u_xlat25 = ((x_817 * x_818) + 1.0f);
  let x_822 : f32 = u_xlat3.x;
  let x_824 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_822, x_824);
  let x_829 : vec4<f32> = vs_INTERP9;
  let x_830 : vec2<f32> = vec2<f32>(x_829.x, x_829.y);
  let x_832 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_830.x, x_830.y, x_832);
  let x_840 : vec3<f32> = txVec1;
  let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_840.xy, x_840.z);
  u_xlat17.x = x_842;
  let x_845 : f32 = u_xlat17.x;
  let x_847 : f32 = x_351.x_MainLightShadowParams.x;
  let x_849 : f32 = u_xlat34;
  u_xlat34 = ((x_845 * x_847) + x_849);
  let x_853 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_853);
  let x_857 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_857 >= 1.0f);
  let x_859 : bool = u_xlatb28;
  let x_860 : bool = u_xlatb17;
  u_xlatb17 = (x_859 | x_860);
  let x_862 : bool = u_xlatb17;
  let x_863 : f32 = u_xlat34;
  u_xlat34 = select(x_863, 1.0f, x_862);
  let x_865 : vec3<f32> = vs_INTERP0;
  let x_867 : vec3<f32> = x_151.x_WorldSpaceCameraPos;
  u_xlat17 = (x_865 + -(x_867));
  let x_870 : vec3<f32> = u_xlat17;
  let x_871 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_870, x_871);
  let x_875 : f32 = u_xlat17.x;
  let x_877 : f32 = x_351.x_MainLightShadowParams.z;
  let x_880 : f32 = x_351.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_875 * x_877) + x_880);
  let x_884 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_884, 0.0f, 1.0f);
  let x_888 : f32 = u_xlat34;
  u_xlat28 = (-(x_888) + 1.0f);
  let x_892 : f32 = u_xlat17.x;
  let x_893 : f32 = u_xlat28;
  let x_895 : f32 = u_xlat34;
  u_xlat34 = ((x_892 * x_893) + x_895);
  let x_897 : f32 = u_xlat25;
  let x_900 : vec4<f32> = x_151.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_897, x_897, x_897) * vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec3<f32> = u_xlat5;
  let x_905 : vec3<f32> = u_xlat11;
  u_xlat7.x = dot(-(x_903), x_905);
  let x_909 : f32 = u_xlat7.x;
  let x_911 : f32 = u_xlat7.x;
  u_xlat7.x = (x_909 + x_911);
  let x_914 : vec3<f32> = u_xlat11;
  let x_915 : vec3<f32> = u_xlat7;
  let x_919 : vec3<f32> = u_xlat5;
  u_xlat7 = ((x_914 * -(vec3<f32>(x_915.x, x_915.x, x_915.x))) + -(x_919));
  let x_923 : vec3<f32> = u_xlat11;
  let x_924 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(x_923, x_924);
  let x_926 : f32 = u_xlat40;
  u_xlat40 = clamp(x_926, 0.0f, 1.0f);
  let x_928 : f32 = u_xlat40;
  u_xlat40 = (-(x_928) + 1.0f);
  let x_931 : f32 = u_xlat40;
  let x_932 : f32 = u_xlat40;
  u_xlat40 = (x_931 * x_932);
  let x_934 : f32 = u_xlat40;
  let x_935 : f32 = u_xlat40;
  u_xlat40 = (x_934 * x_935);
  let x_938 : f32 = u_xlat14.x;
  u_xlat8.x = ((-(x_938) * 0.699999988f) + 1.700000048f);
  let x_946 : f32 = u_xlat14.x;
  let x_948 : f32 = u_xlat8.x;
  u_xlat14.x = (x_946 * x_948);
  let x_952 : f32 = u_xlat14.x;
  u_xlat14.x = (x_952 * 6.0f);
  let x_964 : vec3<f32> = u_xlat7;
  let x_966 : f32 = u_xlat14.x;
  let x_967 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_964, x_966);
  u_xlat8 = x_967;
  let x_969 : f32 = u_xlat8.w;
  u_xlat14.x = (x_969 + -1.0f);
  let x_973 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_975 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_973 * x_975) + 1.0f);
  let x_980 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_980, 0.0f);
  let x_984 : f32 = u_xlat14.x;
  u_xlat14.x = log2(x_984);
  let x_988 : f32 = u_xlat14.x;
  let x_990 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat14.x = (x_988 * x_990);
  let x_994 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_994);
  let x_998 : f32 = u_xlat14.x;
  let x_1000 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat14.x = (x_998 * x_1000);
  let x_1003 : vec4<f32> = u_xlat8;
  let x_1005 : vec3<f32> = u_xlat14;
  u_xlat7 = (vec3<f32>(x_1003.x, x_1003.y, x_1003.z) * vec3<f32>(x_1005.x, x_1005.x, x_1005.x));
  let x_1008 : f32 = u_xlat36;
  let x_1010 : f32 = u_xlat36;
  let x_1014 : vec2<f32> = ((vec2<f32>(x_1008, x_1008) * vec2<f32>(x_1010, x_1010)) + vec2<f32>(-1.0f, 1.0f));
  let x_1015 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_1014.x, x_1015.y, x_1014.y);
  let x_1018 : f32 = u_xlat14.z;
  u_xlat36 = (1.0f / x_1018);
  let x_1020 : f32 = u_xlat38;
  u_xlat38 = (x_1020 + -0.039999999f);
  let x_1023 : f32 = u_xlat40;
  let x_1024 : f32 = u_xlat38;
  u_xlat38 = ((x_1023 * x_1024) + 0.039999999f);
  let x_1028 : f32 = u_xlat36;
  let x_1029 : f32 = u_xlat38;
  u_xlat36 = (x_1028 * x_1029);
  let x_1031 : f32 = u_xlat36;
  let x_1033 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1031, x_1031, x_1031) * x_1033);
  let x_1035 : vec3<f32> = u_xlat13;
  let x_1036 : vec3<f32> = u_xlat4;
  let x_1038 : vec3<f32> = u_xlat7;
  u_xlat13 = ((x_1035 * x_1036) + x_1038);
  let x_1040 : f32 = u_xlat34;
  let x_1042 : f32 = x_89.unity_LightData.z;
  u_xlat34 = (x_1040 * x_1042);
  let x_1044 : vec3<f32> = u_xlat11;
  let x_1046 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat36 = dot(x_1044, vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1049, 0.0f, 1.0f);
  let x_1051 : f32 = u_xlat34;
  let x_1052 : f32 = u_xlat36;
  u_xlat34 = (x_1051 * x_1052);
  let x_1054 : f32 = u_xlat34;
  let x_1056 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1054, x_1054, x_1054) * x_1056);
  let x_1058 : vec3<f32> = u_xlat5;
  let x_1060 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat7 = (x_1058 + vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : vec3<f32> = u_xlat7;
  let x_1064 : vec3<f32> = u_xlat7;
  u_xlat34 = dot(x_1063, x_1064);
  let x_1066 : f32 = u_xlat34;
  u_xlat34 = max(x_1066, 1.17549435e-37f);
  let x_1068 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_1068);
  let x_1070 : f32 = u_xlat34;
  let x_1072 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1070, x_1070, x_1070) * x_1072);
  let x_1074 : vec3<f32> = u_xlat11;
  let x_1075 : vec3<f32> = u_xlat7;
  u_xlat34 = dot(x_1074, x_1075);
  let x_1077 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1077, 0.0f, 1.0f);
  let x_1080 : vec4<f32> = x_151.x_MainLightPosition;
  let x_1082 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_1080.x, x_1080.y, x_1080.z), x_1082);
  let x_1084 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1084, 0.0f, 1.0f);
  let x_1086 : f32 = u_xlat34;
  let x_1087 : f32 = u_xlat34;
  u_xlat34 = (x_1086 * x_1087);
  let x_1089 : f32 = u_xlat34;
  let x_1091 : f32 = u_xlat14.x;
  u_xlat34 = ((x_1089 * x_1091) + 1.000010014f);
  let x_1095 : f32 = u_xlat36;
  let x_1096 : f32 = u_xlat36;
  u_xlat36 = (x_1095 * x_1096);
  let x_1098 : f32 = u_xlat34;
  let x_1099 : f32 = u_xlat34;
  u_xlat34 = (x_1098 * x_1099);
  let x_1101 : f32 = u_xlat36;
  u_xlat36 = max(x_1101, 0.100000001f);
  let x_1104 : f32 = u_xlat34;
  let x_1105 : f32 = u_xlat36;
  u_xlat34 = (x_1104 * x_1105);
  let x_1108 : f32 = u_xlat6.x;
  let x_1109 : f32 = u_xlat34;
  u_xlat34 = (x_1108 * x_1109);
  let x_1111 : f32 = u_xlat37;
  let x_1112 : f32 = u_xlat34;
  u_xlat34 = (x_1111 / x_1112);
  let x_1114 : f32 = u_xlat34;
  let x_1118 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_1114, x_1114, x_1114) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1118);
  let x_1120 : vec3<f32> = u_xlat17;
  let x_1121 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_1120 * x_1121);
  let x_1125 : f32 = x_151.x_AdditionalLightsCount.x;
  let x_1127 : f32 = x_89.unity_LightData.y;
  u_xlat34 = min(x_1125, x_1127);
  let x_1130 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1130));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1142 : u32 = u_xlatu_loop_1;
    let x_1143 : u32 = u_xlatu34;
    if ((x_1142 < x_1143)) {
    } else {
      break;
    }
    let x_1146 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1146 >> 2u);
    let x_1149 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1149 & 3u));
    let x_1152 : u32 = u_xlatu38;
    let x_1155 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1152)];
    let x_1165 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1170 : vec4<u32> = indexable[x_1165];
    u_xlat38 = dot(x_1155, bitcast<vec4<f32>>(x_1170));
    let x_1174 : f32 = u_xlat38;
    u_xlati38 = i32(x_1174);
    let x_1176 : vec3<f32> = vs_INTERP0;
    let x_1188 : i32 = u_xlati38;
    let x_1190 : vec4<f32> = x_1187.x_AdditionalLightsPosition[x_1188];
    let x_1193 : i32 = u_xlati38;
    let x_1195 : vec4<f32> = x_1187.x_AdditionalLightsPosition[x_1193];
    let x_1197 : vec3<f32> = ((-(x_1176) * vec3<f32>(x_1190.w, x_1190.w, x_1190.w)) + vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
    let x_1198 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
    let x_1200 : vec4<f32> = u_xlat8;
    let x_1202 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1200.x, x_1200.y, x_1200.z), vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
    let x_1205 : f32 = u_xlat40;
    u_xlat40 = max(x_1205, 6.10351562e-05f);
    let x_1209 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1209);
    let x_1211 : f32 = u_xlat41;
    let x_1213 : vec4<f32> = u_xlat8;
    let x_1215 : vec3<f32> = (vec3<f32>(x_1211, x_1211, x_1211) * vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
    let x_1216 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
    let x_1219 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1219);
    let x_1221 : f32 = u_xlat40;
    let x_1222 : i32 = u_xlati38;
    let x_1224 : f32 = x_1187.x_AdditionalLightsAttenuation[x_1222].x;
    u_xlat40 = (x_1221 * x_1224);
    let x_1226 : f32 = u_xlat40;
    let x_1228 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1226) * x_1228) + 1.0f);
    let x_1231 : f32 = u_xlat40;
    u_xlat40 = max(x_1231, 0.0f);
    let x_1233 : f32 = u_xlat40;
    let x_1234 : f32 = u_xlat40;
    u_xlat40 = (x_1233 * x_1234);
    let x_1236 : f32 = u_xlat40;
    let x_1237 : f32 = u_xlat42;
    u_xlat40 = (x_1236 * x_1237);
    let x_1239 : i32 = u_xlati38;
    let x_1241 : vec4<f32> = x_1187.x_AdditionalLightsSpotDir[x_1239];
    let x_1243 : vec4<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1241.x, x_1241.y, x_1241.z), vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
    let x_1246 : f32 = u_xlat42;
    let x_1247 : i32 = u_xlati38;
    let x_1249 : f32 = x_1187.x_AdditionalLightsAttenuation[x_1247].z;
    let x_1251 : i32 = u_xlati38;
    let x_1253 : f32 = x_1187.x_AdditionalLightsAttenuation[x_1251].w;
    u_xlat42 = ((x_1246 * x_1249) + x_1253);
    let x_1255 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1255, 0.0f, 1.0f);
    let x_1257 : f32 = u_xlat42;
    let x_1258 : f32 = u_xlat42;
    u_xlat42 = (x_1257 * x_1258);
    let x_1260 : f32 = u_xlat40;
    let x_1261 : f32 = u_xlat42;
    u_xlat40 = (x_1260 * x_1261);
    let x_1264 : f32 = u_xlat25;
    let x_1266 : i32 = u_xlati38;
    let x_1268 : vec4<f32> = x_1187.x_AdditionalLightsColor[x_1266];
    u_xlat10 = (vec3<f32>(x_1264, x_1264, x_1264) * vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
    let x_1271 : vec3<f32> = u_xlat11;
    let x_1272 : vec4<f32> = u_xlat9;
    u_xlat38 = dot(x_1271, vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
    let x_1275 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1275, 0.0f, 1.0f);
    let x_1277 : f32 = u_xlat38;
    let x_1278 : f32 = u_xlat40;
    u_xlat38 = (x_1277 * x_1278);
    let x_1280 : f32 = u_xlat38;
    let x_1282 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1280, x_1280, x_1280) * x_1282);
    let x_1284 : vec4<f32> = u_xlat8;
    let x_1286 : f32 = u_xlat41;
    let x_1289 : vec3<f32> = u_xlat5;
    let x_1290 : vec3<f32> = ((vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * vec3<f32>(x_1286, x_1286, x_1286)) + x_1289);
    let x_1291 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
    let x_1293 : vec4<f32> = u_xlat8;
    let x_1295 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1293.x, x_1293.y, x_1293.z), vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
    let x_1298 : f32 = u_xlat38;
    u_xlat38 = max(x_1298, 1.17549435e-37f);
    let x_1300 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1300);
    let x_1302 : f32 = u_xlat38;
    let x_1304 : vec4<f32> = u_xlat8;
    let x_1306 : vec3<f32> = (vec3<f32>(x_1302, x_1302, x_1302) * vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
    let x_1307 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
    let x_1309 : vec3<f32> = u_xlat11;
    let x_1310 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1309, vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
    let x_1313 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1313, 0.0f, 1.0f);
    let x_1315 : vec4<f32> = u_xlat9;
    let x_1317 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1315.x, x_1315.y, x_1315.z), vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
    let x_1320 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1320, 0.0f, 1.0f);
    let x_1322 : f32 = u_xlat38;
    let x_1323 : f32 = u_xlat38;
    u_xlat38 = (x_1322 * x_1323);
    let x_1325 : f32 = u_xlat38;
    let x_1327 : f32 = u_xlat14.x;
    u_xlat38 = ((x_1325 * x_1327) + 1.000010014f);
    let x_1330 : f32 = u_xlat40;
    let x_1331 : f32 = u_xlat40;
    u_xlat40 = (x_1330 * x_1331);
    let x_1333 : f32 = u_xlat38;
    let x_1334 : f32 = u_xlat38;
    u_xlat38 = (x_1333 * x_1334);
    let x_1336 : f32 = u_xlat40;
    u_xlat40 = max(x_1336, 0.100000001f);
    let x_1338 : f32 = u_xlat38;
    let x_1339 : f32 = u_xlat40;
    u_xlat38 = (x_1338 * x_1339);
    let x_1342 : f32 = u_xlat6.x;
    let x_1343 : f32 = u_xlat38;
    u_xlat38 = (x_1342 * x_1343);
    let x_1345 : f32 = u_xlat37;
    let x_1346 : f32 = u_xlat38;
    u_xlat38 = (x_1345 / x_1346);
    let x_1348 : f32 = u_xlat38;
    let x_1351 : vec3<f32> = u_xlat4;
    let x_1352 : vec3<f32> = ((vec3<f32>(x_1348, x_1348, x_1348) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1351);
    let x_1353 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
    let x_1355 : vec4<f32> = u_xlat8;
    let x_1357 : vec3<f32> = u_xlat10;
    let x_1359 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1355.x, x_1355.y, x_1355.z) * x_1357) + x_1359);

    continuing {
      let x_1361 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1361 + bitcast<u32>(1i));
    }
  }
  let x_1363 : vec3<f32> = u_xlat13;
  let x_1364 : vec3<f32> = u_xlat3;
  let x_1367 : vec3<f32> = u_xlat17;
  u_xlat11 = ((x_1363 * vec3<f32>(x_1364.x, x_1364.x, x_1364.x)) + x_1367);
  let x_1369 : vec3<f32> = u_xlat7;
  let x_1370 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_1369 + x_1370);
  let x_1374 : vec4<f32> = vs_INTERP4;
  let x_1376 : vec3<f32> = u_xlat1;
  let x_1378 : vec3<f32> = u_xlat11;
  let x_1379 : vec3<f32> = ((vec3<f32>(x_1374.w, x_1374.w, x_1374.w) * x_1376) + x_1378);
  let x_1380 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1382 : bool = u_xlatb2;
  let x_1383 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1383, x_1382);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>, @location(6) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

