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

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_89 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_153 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_269 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_359 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_974 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1399 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1506 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb14 : vec2<bool>;
  var u_xlat14 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat5 : vec3<f32>;
  var x_179 : f32;
  var x_192 : f32;
  var x_204 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlatb16 : bool;
  var x_463 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlatu16 : vec3<u32>;
  var u_xlatu44 : u32;
  var u_xlatu3 : u32;
  var u_xlati44 : i32;
  var u_xlati30 : i32;
  var u_xlatu30 : u32;
  var u_xlati16 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat30 : f32;
  var x_596 : f32;
  var x_621 : f32;
  var x_666 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat32 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var x_1058 : f32;
  var x_1069 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatu43 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu18 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatu49 : u32;
  var u_xlati51 : i32;
  var u_xlati49 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1801 : f32;
  var x_1814 : f32;
  var x_1866 : f32;
  var x_1877 : vec3<f32>;
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
  u_xlatb14.x = (0.0f < x_79);
  let x_93 : f32 = x_89.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_93 >= 0.0f);
  let x_100 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_100);
  let x_105 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_105);
  let x_109 : f32 = u_xlat14.y;
  let x_111 : f32 = u_xlat14.x;
  u_xlat14.x = (x_109 * x_111);
  let x_115 : vec3<f32> = vs_INTERP1;
  let x_117 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_115.z, x_115.x, x_115.y) * vec3<f32>(x_117.y, x_117.z, x_117.x));
  let x_120 : vec3<f32> = vs_INTERP1;
  let x_122 : vec4<f32> = vs_INTERP2;
  let x_125 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_120.y, x_120.z, x_120.x) * vec3<f32>(x_122.z, x_122.x, x_122.y)) + -(x_125));
  let x_128 : vec3<f32> = u_xlat14;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_132 : f32 = u_xlat0;
  let x_134 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_132, x_132, x_132) * x_134);
  let x_137 : f32 = u_xlat0;
  let x_139 : vec4<f32> = vs_INTERP2;
  u_xlat2 = (vec3<f32>(x_137, x_137, x_137) * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_143 : vec3<f32> = u_xlat14;
  let x_144 : f32 = u_xlat0;
  let x_146 : vec3<f32> = (x_143 * vec3<f32>(x_144, x_144, x_144));
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_156 : f32 = x_153.unity_OrthoParams.w;
  u_xlatb0 = (x_156 == 0.0f);
  let x_160 : vec3<f32> = vs_INTERP0;
  let x_165 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_160) + x_165);
  let x_168 : vec3<f32> = u_xlat4;
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat43;
  let x_175 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_173, x_173, x_173) * x_175);
  let x_178 : bool = u_xlatb0;
  if (x_178) {
    let x_183 : f32 = u_xlat4.x;
    x_179 = x_183;
  } else {
    let x_188 : f32 = x_153.unity_MatrixV[0i].z;
    x_179 = x_188;
  }
  let x_189 : f32 = x_179;
  u_xlat5.x = x_189;
  let x_191 : bool = u_xlatb0;
  if (x_191) {
    let x_196 : f32 = u_xlat4.y;
    x_192 = x_196;
  } else {
    let x_200 : f32 = x_153.unity_MatrixV[1i].z;
    x_192 = x_200;
  }
  let x_201 : f32 = x_192;
  u_xlat5.y = x_201;
  let x_203 : bool = u_xlatb0;
  if (x_203) {
    let x_208 : f32 = u_xlat4.z;
    x_204 = x_208;
  } else {
    let x_212 : f32 = x_153.unity_MatrixV[2i].z;
    x_204 = x_212;
  }
  let x_213 : f32 = x_204;
  u_xlat5.z = x_213;
  let x_215 : vec3<f32> = u_xlat5;
  let x_219 : vec4<f32> = x_89.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_215.y, x_215.y, x_215.y) * vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_223 : vec4<f32> = x_89.unity_WorldToObject[0i];
  let x_225 : vec3<f32> = u_xlat5;
  let x_228 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.x, x_225.x, x_225.x)) + x_228);
  let x_231 : vec4<f32> = x_89.unity_WorldToObject[2i];
  let x_233 : vec3<f32> = u_xlat5;
  let x_236 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233.z, x_233.z, x_233.z)) + x_236);
  let x_238 : vec3<f32> = u_xlat4;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat0 = dot(x_238, x_239);
  let x_241 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_241);
  let x_243 : f32 = u_xlat0;
  let x_245 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_243, x_243, x_243) * x_245);
  let x_259 : vec4<f32> = vs_INTERP3;
  let x_262 : f32 = x_153.x_GlobalMipBias.x;
  let x_263 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_259.x, x_259.y), x_262);
  u_xlat6 = x_263;
  let x_265 : vec4<f32> = u_xlat6;
  let x_271 : vec4<f32> = x_269.Color_C30C7CA3;
  let x_273 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_282 : vec4<f32> = vs_INTERP3;
  let x_285 : f32 = x_153.x_GlobalMipBias.x;
  let x_286 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_282.x, x_282.y), x_285);
  u_xlat8 = vec4<f32>(x_286.w, x_286.x, x_286.y, x_286.z);
  let x_289 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_289.y, x_289.z, x_289.w, x_289.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_296 : vec4<f32> = u_xlat9;
  let x_297 : vec4<f32> = u_xlat9;
  u_xlat0 = dot(x_296, x_297);
  let x_299 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_299);
  let x_302 : f32 = u_xlat0;
  let x_304 : vec4<f32> = u_xlat9;
  u_xlat22 = (vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_309 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_309 * 200.0f);
  let x_312 : f32 = u_xlat0;
  u_xlat0 = min(x_312, 1.0f);
  let x_314 : f32 = u_xlat0;
  let x_316 : vec4<f32> = u_xlat6;
  let x_318 : vec3<f32> = (vec3<f32>(x_314, x_314, x_314) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat3;
  let x_323 : vec3<f32> = u_xlat22;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.y, x_323.y, x_323.y));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec3<f32> = u_xlat22;
  let x_330 : vec3<f32> = u_xlat2;
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_328.x, x_328.x, x_328.x) * x_330) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec3<f32> = u_xlat22;
  let x_337 : vec3<f32> = u_xlat1;
  let x_339 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_335.z, x_335.z, x_335.z) * x_337) + x_339);
  let x_341 : vec3<f32> = u_xlat1;
  let x_342 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_341, x_342);
  let x_344 : f32 = u_xlat0;
  u_xlat0 = max(x_344, 1.17549435e-37f);
  let x_347 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_347);
  let x_349 : f32 = u_xlat0;
  let x_351 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_349, x_349, x_349) * x_351);
  let x_353 : vec3<f32> = vs_INTERP0;
  let x_361 : vec4<f32> = x_359.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_353.y, x_353.y, x_353.y) * vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_365 : vec4<f32> = x_359.x_MainLightWorldToShadow[0i][0i];
  let x_367 : vec3<f32> = vs_INTERP0;
  let x_370 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.x, x_367.x, x_367.x)) + x_370);
  let x_373 : vec4<f32> = x_359.x_MainLightWorldToShadow[0i][2i];
  let x_375 : vec3<f32> = vs_INTERP0;
  let x_378 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_375.z, x_375.z, x_375.z)) + x_378);
  let x_380 : vec3<f32> = u_xlat2;
  let x_382 : vec4<f32> = x_359.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_380 + vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_386 : vec3<f32> = u_xlat2;
  let x_387 : vec2<f32> = vec2<f32>(x_386.x, x_386.y);
  let x_389 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_387.x, x_387.y, x_389);
  let x_401 : vec3<f32> = txVec0;
  let x_403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_401.xy, x_401.z);
  u_xlat0 = x_403;
  let x_406 : f32 = x_359.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_406) + 1.0f);
  let x_409 : f32 = u_xlat0;
  let x_411 : f32 = x_359.x_MainLightShadowParams.x;
  let x_413 : f32 = u_xlat43;
  u_xlat0 = ((x_409 * x_411) + x_413);
  let x_417 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_417);
  let x_421 : f32 = u_xlat2.z;
  u_xlatb16 = (x_421 >= 1.0f);
  let x_423 : bool = u_xlatb16;
  let x_424 : bool = u_xlatb2;
  u_xlatb2 = (x_423 | x_424);
  let x_426 : bool = u_xlatb2;
  let x_427 : f32 = u_xlat0;
  u_xlat0 = select(x_427, 1.0f, x_426);
  let x_429 : vec3<f32> = u_xlat1;
  let x_431 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat1.x = dot(x_429, -(vec3<f32>(x_431.x, x_431.y, x_431.z)));
  let x_437 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_437, 0.0f, 1.0f);
  let x_440 : f32 = u_xlat0;
  let x_444 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_440, x_440, x_440) * vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : vec3<f32> = u_xlat1;
  let x_449 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_447.x, x_447.x, x_447.x) * x_449);
  let x_451 : vec3<f32> = u_xlat1;
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_451 * vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_456 : f32 = x_89.unity_LODFade.x;
  u_xlatb0 = (x_456 < 0.0f);
  let x_459 : f32 = x_89.unity_LODFade.x;
  u_xlat2.x = (x_459 + 1.0f);
  let x_462 : bool = u_xlatb0;
  if (x_462) {
    let x_467 : f32 = u_xlat2.x;
    x_463 = x_467;
  } else {
    let x_470 : f32 = x_89.unity_LODFade.x;
    x_463 = x_470;
  }
  let x_471 : f32 = x_463;
  u_xlat0 = x_471;
  let x_473 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_473);
  let x_476 : vec3<f32> = u_xlat4;
  let x_479 : vec4<f32> = x_153.x_ScreenParams;
  u_xlat16 = (abs(x_476) * vec3<f32>(x_479.x, x_479.y, x_479.x));
  let x_485 : vec3<f32> = u_xlat16;
  u_xlatu16 = vec3<u32>(x_485);
  let x_489 : u32 = u_xlatu16.z;
  u_xlatu44 = (x_489 * 1025u);
  let x_493 : u32 = u_xlatu44;
  u_xlatu3 = (x_493 >> 6u);
  let x_497 : u32 = u_xlatu44;
  let x_498 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_497 ^ x_498));
  let x_501 : i32 = u_xlati44;
  u_xlatu44 = (bitcast<u32>(x_501) * 9u);
  let x_505 : u32 = u_xlatu44;
  u_xlatu3 = (x_505 >> 11u);
  let x_508 : u32 = u_xlatu44;
  let x_509 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_508 ^ x_509));
  let x_512 : i32 = u_xlati44;
  u_xlati44 = (x_512 * 32769i);
  let x_516 : i32 = u_xlati44;
  let x_519 : u32 = u_xlatu16.y;
  u_xlati30 = bitcast<i32>((bitcast<u32>(x_516) ^ x_519));
  let x_523 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_523) * 1025u);
  let x_526 : u32 = u_xlatu30;
  u_xlatu44 = (x_526 >> 6u);
  let x_528 : u32 = u_xlatu44;
  let x_529 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_528 ^ x_529));
  let x_532 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_532) * 9u);
  let x_535 : u32 = u_xlatu30;
  u_xlatu44 = (x_535 >> 11u);
  let x_537 : u32 = u_xlatu44;
  let x_538 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_537 ^ x_538));
  let x_541 : i32 = u_xlati30;
  u_xlati30 = (x_541 * 32769i);
  let x_544 : i32 = u_xlati30;
  let x_547 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_544) ^ x_547));
  let x_550 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_550) * 1025u);
  let x_555 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_555 >> 6u);
  let x_557 : u32 = u_xlatu30;
  let x_559 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_557 ^ x_559));
  let x_562 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_562) * 9u);
  let x_567 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_567 >> 11u);
  let x_569 : u32 = u_xlatu30;
  let x_571 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_569 ^ x_571));
  let x_574 : i32 = u_xlati16;
  u_xlati16 = (x_574 * 32769i);
  param = 1065353216i;
  let x_580 : i32 = u_xlati16;
  param_1 = x_580;
  param_2 = 0i;
  param_3 = 23i;
  let x_583 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat16.x = bitcast<f32>(x_583);
  let x_587 : f32 = u_xlat16.x;
  u_xlat16.x = (x_587 + -1.0f);
  let x_592 : f32 = u_xlat16.x;
  u_xlat30 = (-(x_592) + 1.0f);
  let x_595 : bool = u_xlatb2;
  if (x_595) {
    let x_600 : f32 = u_xlat16.x;
    x_596 = x_600;
  } else {
    let x_602 : f32 = u_xlat30;
    x_596 = x_602;
  }
  let x_603 : f32 = x_596;
  u_xlat2.x = x_603;
  let x_605 : f32 = u_xlat0;
  let x_608 : f32 = u_xlat2.x;
  u_xlat0 = ((x_605 * 2.0f) + -(x_608));
  let x_611 : f32 = u_xlat0;
  let x_613 : f32 = u_xlat6.w;
  u_xlat2.x = (x_611 * x_613);
  let x_617 : f32 = u_xlat2.x;
  u_xlatb16 = (x_617 >= 0.400000006f);
  let x_620 : bool = u_xlatb16;
  if (x_620) {
    let x_625 : f32 = u_xlat2.x;
    x_621 = x_625;
  } else {
    x_621 = 0.0f;
  }
  let x_627 : f32 = x_621;
  u_xlat16.x = x_627;
  let x_630 : f32 = u_xlat6.w;
  let x_631 : f32 = u_xlat0;
  u_xlat0 = ((x_630 * x_631) + -0.400000006f);
  let x_636 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_636);
  let x_639 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_639);
  let x_643 : f32 = u_xlat2.x;
  let x_645 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_643) + abs(x_645));
  let x_650 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_650, 0.0001f);
  let x_654 : f32 = u_xlat0;
  let x_656 : f32 = u_xlat2.x;
  u_xlat0 = (x_654 / x_656);
  let x_658 : f32 = u_xlat0;
  u_xlat0 = (x_658 + 0.5f);
  let x_660 : f32 = u_xlat0;
  u_xlat0 = clamp(x_660, 0.0f, 1.0f);
  let x_663 : f32 = x_153.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_663 == 0.0f));
  let x_665 : bool = u_xlatb2;
  if (x_665) {
    let x_669 : f32 = u_xlat0;
    x_666 = x_669;
  } else {
    let x_672 : f32 = u_xlat16.x;
    x_666 = x_672;
  }
  let x_673 : f32 = x_666;
  u_xlat0 = x_673;
  let x_674 : f32 = u_xlat0;
  u_xlat16.x = (x_674 + -0.0001f);
  let x_679 : f32 = u_xlat16.x;
  u_xlatb16 = (x_679 < 0.0f);
  let x_681 : bool = u_xlatb16;
  if (((select(0i, 1i, x_681) * -1i) != 0i)) {
    discard;
  }
  let x_689 : vec3<f32> = u_xlat14;
  let x_690 : vec3<f32> = u_xlat22;
  u_xlat14 = (x_689 * vec3<f32>(x_690.y, x_690.y, x_690.y));
  let x_693 : vec3<f32> = u_xlat22;
  let x_695 : vec4<f32> = vs_INTERP2;
  let x_698 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_693.x, x_693.x, x_693.x) * vec3<f32>(x_695.x, x_695.y, x_695.z)) + x_698);
  let x_700 : vec3<f32> = u_xlat22;
  let x_702 : vec3<f32> = vs_INTERP1;
  let x_704 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_700.z, x_700.z, x_700.z) * x_702) + x_704);
  let x_706 : vec3<f32> = u_xlat14;
  let x_707 : vec3<f32> = u_xlat14;
  u_xlat16.x = dot(x_706, x_707);
  let x_711 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_711);
  let x_714 : vec3<f32> = u_xlat14;
  let x_715 : vec3<f32> = u_xlat16;
  let x_717 : vec3<f32> = (x_714 * vec3<f32>(x_715.x, x_715.x, x_715.x));
  let x_718 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  u_xlat3.w = 1.0f;
  let x_723 : vec4<f32> = x_89.unity_SHAr;
  let x_724 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_723, x_724);
  let x_729 : vec4<f32> = x_89.unity_SHAg;
  let x_730 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_729, x_730);
  let x_735 : vec4<f32> = x_89.unity_SHAb;
  let x_736 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_735, x_736);
  let x_739 : vec4<f32> = u_xlat3;
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_739.y, x_739.z, x_739.z, x_739.x) * vec4<f32>(x_741.x, x_741.y, x_741.z, x_741.z));
  let x_746 : vec4<f32> = x_89.unity_SHBr;
  let x_747 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_746, x_747);
  let x_752 : vec4<f32> = x_89.unity_SHBg;
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_752, x_753);
  let x_757 : vec4<f32> = x_89.unity_SHBb;
  let x_758 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_757, x_758);
  let x_762 : f32 = u_xlat3.y;
  let x_764 : f32 = u_xlat3.y;
  u_xlat14.x = (x_762 * x_764);
  let x_768 : f32 = u_xlat3.x;
  let x_770 : f32 = u_xlat3.x;
  let x_773 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_768 * x_770) + -(x_773));
  let x_779 : vec4<f32> = x_89.unity_SHC;
  let x_781 : vec3<f32> = u_xlat14;
  let x_784 : vec4<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_779.x, x_779.y, x_779.z) * vec3<f32>(x_781.x, x_781.x, x_781.x)) + vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec3<f32> = u_xlat14;
  let x_788 : vec3<f32> = u_xlat4;
  u_xlat14 = (x_787 + x_788);
  let x_790 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_790, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_795 : vec4<f32> = x_153.x_ScaledScreenParams;
  let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
  let x_800 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_796.x, x_796.y));
  let x_801 : vec3<f32> = u_xlat16;
  u_xlat16 = vec3<f32>(x_800.x, x_800.y, x_801.z);
  let x_803 : vec3<f32> = u_xlat16;
  let x_805 : vec4<f32> = hlslcc_FragCoord;
  let x_807 : vec2<f32> = (vec2<f32>(x_803.x, x_803.y) * vec2<f32>(x_805.x, x_805.y));
  let x_808 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_807.x, x_807.y, x_808.z);
  let x_811 : f32 = u_xlat4.y;
  let x_814 : f32 = x_153.x_ScaleBiasRt.x;
  let x_817 : f32 = x_153.x_ScaleBiasRt.y;
  u_xlat16.x = ((x_811 * x_814) + x_817);
  let x_821 : f32 = u_xlat16.x;
  u_xlat4.z = (-(x_821) + 1.0f);
  let x_826 : f32 = u_xlat8.x;
  u_xlat8.x = x_826;
  let x_829 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_829, 0.0f, 1.0f);
  let x_832 : f32 = u_xlat0;
  u_xlat0 = x_832;
  let x_833 : f32 = u_xlat0;
  u_xlat0 = clamp(x_833, 0.0f, 1.0f);
  let x_835 : vec4<f32> = u_xlat7;
  u_xlat16 = (vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_842 : f32 = u_xlat8.x;
  u_xlat45 = (-(x_842) + 1.0f);
  let x_846 : f32 = u_xlat45;
  let x_847 : f32 = u_xlat45;
  u_xlat18 = (x_846 * x_847);
  let x_849 : f32 = u_xlat18;
  u_xlat18 = max(x_849, 0.0078125f);
  let x_853 : f32 = u_xlat18;
  let x_854 : f32 = u_xlat18;
  u_xlat46 = (x_853 * x_854);
  let x_858 : f32 = u_xlat8.x;
  u_xlat47 = (x_858 + 0.040000021f);
  let x_861 : f32 = u_xlat47;
  u_xlat47 = min(x_861, 1.0f);
  let x_863 : f32 = u_xlat18;
  u_xlat6.x = ((x_863 * 4.0f) + 2.0f);
  let x_873 : vec3<f32> = u_xlat4;
  let x_876 : f32 = x_153.x_GlobalMipBias.x;
  let x_877 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_873.x, x_873.z), x_876);
  u_xlat4.x = x_877.x;
  let x_882 : f32 = u_xlat4.x;
  u_xlat32 = (x_882 + -1.0f);
  let x_886 : f32 = x_153.x_AmbientOcclusionParam.w;
  let x_887 : f32 = u_xlat32;
  u_xlat32 = ((x_886 * x_887) + 1.0f);
  let x_891 : f32 = u_xlat4.x;
  let x_893 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_891, x_893);
  let x_898 : vec4<f32> = vs_INTERP9;
  let x_899 : vec2<f32> = vec2<f32>(x_898.x, x_898.y);
  let x_901 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_899.x, x_899.y, x_901);
  let x_909 : vec3<f32> = txVec1;
  let x_911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_909.xy, x_909.z);
  u_xlat20.x = x_911;
  let x_914 : f32 = u_xlat20.x;
  let x_916 : f32 = x_359.x_MainLightShadowParams.x;
  let x_918 : f32 = u_xlat43;
  u_xlat43 = ((x_914 * x_916) + x_918);
  let x_922 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_922);
  let x_927 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_927 >= 1.0f);
  let x_929 : bool = u_xlatb34;
  let x_931 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_929 | x_931);
  let x_935 : bool = u_xlatb20.x;
  let x_936 : f32 = u_xlat43;
  u_xlat43 = select(x_936, 1.0f, x_935);
  let x_938 : vec3<f32> = vs_INTERP0;
  let x_940 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  u_xlat20 = (x_938 + -(x_940));
  let x_943 : vec3<f32> = u_xlat20;
  let x_944 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_943, x_944);
  let x_948 : f32 = u_xlat20.x;
  let x_950 : f32 = x_359.x_MainLightShadowParams.z;
  let x_953 : f32 = x_359.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_948 * x_950) + x_953);
  let x_957 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_957, 0.0f, 1.0f);
  let x_961 : f32 = u_xlat43;
  u_xlat34 = (-(x_961) + 1.0f);
  let x_965 : f32 = u_xlat20.x;
  let x_966 : f32 = u_xlat34;
  let x_968 : f32 = u_xlat43;
  u_xlat43 = ((x_965 * x_966) + x_968);
  let x_976 : f32 = x_974.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_976 == -1.0f));
  let x_980 : bool = u_xlatb20.x;
  if (x_980) {
    let x_983 : vec3<f32> = vs_INTERP0;
    let x_986 : vec4<f32> = x_974.x_MainLightWorldToLight[1i];
    let x_988 : vec2<f32> = (vec2<f32>(x_983.y, x_983.y) * vec2<f32>(x_986.x, x_986.y));
    let x_989 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_988.x, x_988.y, x_989.z);
    let x_992 : vec4<f32> = x_974.x_MainLightWorldToLight[0i];
    let x_994 : vec3<f32> = vs_INTERP0;
    let x_997 : vec3<f32> = u_xlat20;
    let x_999 : vec2<f32> = ((vec2<f32>(x_992.x, x_992.y) * vec2<f32>(x_994.x, x_994.x)) + vec2<f32>(x_997.x, x_997.y));
    let x_1000 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_999.x, x_999.y, x_1000.z);
    let x_1003 : vec4<f32> = x_974.x_MainLightWorldToLight[2i];
    let x_1005 : vec3<f32> = vs_INTERP0;
    let x_1008 : vec3<f32> = u_xlat20;
    let x_1010 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.y) * vec2<f32>(x_1005.z, x_1005.z)) + vec2<f32>(x_1008.x, x_1008.y));
    let x_1011 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1010.x, x_1010.y, x_1011.z);
    let x_1013 : vec3<f32> = u_xlat20;
    let x_1016 : vec4<f32> = x_974.x_MainLightWorldToLight[3i];
    let x_1018 : vec2<f32> = (vec2<f32>(x_1013.x, x_1013.y) + vec2<f32>(x_1016.x, x_1016.y));
    let x_1019 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1018.x, x_1018.y, x_1019.z);
    let x_1021 : vec3<f32> = u_xlat20;
    let x_1025 : vec2<f32> = ((vec2<f32>(x_1021.x, x_1021.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1026 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1025.x, x_1025.y, x_1026.z);
    let x_1033 : vec3<f32> = u_xlat20;
    let x_1036 : f32 = x_153.x_GlobalMipBias.x;
    let x_1037 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1033.x, x_1033.y), x_1036);
    u_xlat7 = x_1037;
    let x_1039 : f32 = x_974.x_MainLightCookieTextureFormat;
    let x_1041 : f32 = x_974.x_MainLightCookieTextureFormat;
    let x_1043 : f32 = x_974.x_MainLightCookieTextureFormat;
    let x_1045 : f32 = x_974.x_MainLightCookieTextureFormat;
    let x_1046 : vec4<f32> = vec4<f32>(x_1039, x_1041, x_1043, x_1045);
    let x_1054 : vec4<bool> = (vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1046.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1054.x, x_1054.y);
    let x_1057 : bool = u_xlatb20.y;
    if (x_1057) {
      let x_1062 : f32 = u_xlat7.w;
      x_1058 = x_1062;
    } else {
      let x_1065 : f32 = u_xlat7.x;
      x_1058 = x_1065;
    }
    let x_1066 : f32 = x_1058;
    u_xlat34 = x_1066;
    let x_1068 : bool = u_xlatb20.x;
    if (x_1068) {
      let x_1072 : vec4<f32> = u_xlat7;
      x_1069 = vec3<f32>(x_1072.x, x_1072.y, x_1072.z);
    } else {
      let x_1075 : f32 = u_xlat34;
      x_1069 = vec3<f32>(x_1075, x_1075, x_1075);
    }
    let x_1077 : vec3<f32> = x_1069;
    u_xlat20 = x_1077;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1082 : vec3<f32> = u_xlat20;
  let x_1084 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat20 = (x_1082 * vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
  let x_1087 : f32 = u_xlat32;
  let x_1089 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1087, x_1087, x_1087) * x_1089);
  let x_1091 : vec3<f32> = u_xlat5;
  let x_1093 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1091), vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1098 : f32 = u_xlat7.x;
  let x_1100 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1098 + x_1100);
  let x_1103 : vec4<f32> = u_xlat3;
  let x_1105 : vec4<f32> = u_xlat7;
  let x_1109 : vec3<f32> = u_xlat5;
  let x_1111 : vec3<f32> = ((vec3<f32>(x_1103.x, x_1103.y, x_1103.z) * -(vec3<f32>(x_1105.x, x_1105.x, x_1105.x))) + -(x_1109));
  let x_1112 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1115 : vec4<f32> = u_xlat3;
  let x_1117 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_1115.x, x_1115.y, x_1115.z), x_1117);
  let x_1119 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1119, 0.0f, 1.0f);
  let x_1121 : f32 = u_xlat49;
  u_xlat49 = (-(x_1121) + 1.0f);
  let x_1124 : f32 = u_xlat49;
  let x_1125 : f32 = u_xlat49;
  u_xlat49 = (x_1124 * x_1125);
  let x_1127 : f32 = u_xlat49;
  let x_1128 : f32 = u_xlat49;
  u_xlat49 = (x_1127 * x_1128);
  let x_1130 : f32 = u_xlat45;
  u_xlat8.x = ((-(x_1130) * 0.699999988f) + 1.700000048f);
  let x_1137 : f32 = u_xlat45;
  let x_1139 : f32 = u_xlat8.x;
  u_xlat45 = (x_1137 * x_1139);
  let x_1141 : f32 = u_xlat45;
  u_xlat45 = (x_1141 * 6.0f);
  let x_1152 : vec4<f32> = u_xlat7;
  let x_1154 : f32 = u_xlat45;
  let x_1155 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1152.x, x_1152.y, x_1152.z), x_1154);
  u_xlat8 = x_1155;
  let x_1157 : f32 = u_xlat8.w;
  u_xlat45 = (x_1157 + -1.0f);
  let x_1160 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_1161 : f32 = u_xlat45;
  u_xlat45 = ((x_1160 * x_1161) + 1.0f);
  let x_1164 : f32 = u_xlat45;
  u_xlat45 = max(x_1164, 0.0f);
  let x_1166 : f32 = u_xlat45;
  u_xlat45 = log2(x_1166);
  let x_1168 : f32 = u_xlat45;
  let x_1170 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_1168 * x_1170);
  let x_1172 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1172);
  let x_1174 : f32 = u_xlat45;
  let x_1176 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_1174 * x_1176);
  let x_1178 : vec4<f32> = u_xlat8;
  let x_1180 : f32 = u_xlat45;
  let x_1182 : vec3<f32> = (vec3<f32>(x_1178.x, x_1178.y, x_1178.z) * vec3<f32>(x_1180, x_1180, x_1180));
  let x_1183 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
  let x_1185 : f32 = u_xlat18;
  let x_1187 : f32 = u_xlat18;
  let x_1191 : vec2<f32> = ((vec2<f32>(x_1185, x_1185) * vec2<f32>(x_1187, x_1187)) + vec2<f32>(-1.0f, 1.0f));
  let x_1192 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
  let x_1195 : f32 = u_xlat8.y;
  u_xlat45 = (1.0f / x_1195);
  let x_1197 : f32 = u_xlat47;
  u_xlat18 = (x_1197 + -0.039999999f);
  let x_1200 : f32 = u_xlat49;
  let x_1201 : f32 = u_xlat18;
  u_xlat18 = ((x_1200 * x_1201) + 0.039999999f);
  let x_1205 : f32 = u_xlat45;
  let x_1206 : f32 = u_xlat18;
  u_xlat45 = (x_1205 * x_1206);
  let x_1208 : f32 = u_xlat45;
  let x_1210 : vec4<f32> = u_xlat7;
  let x_1212 : vec3<f32> = (vec3<f32>(x_1208, x_1208, x_1208) * vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
  let x_1213 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1215 : vec3<f32> = u_xlat14;
  let x_1216 : vec3<f32> = u_xlat16;
  let x_1218 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_1215 * x_1216) + vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1221 : f32 = u_xlat43;
  let x_1223 : f32 = x_89.unity_LightData.z;
  u_xlat43 = (x_1221 * x_1223);
  let x_1225 : vec4<f32> = u_xlat3;
  let x_1228 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1225.x, x_1225.y, x_1225.z), vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1231, 0.0f, 1.0f);
  let x_1233 : f32 = u_xlat43;
  let x_1234 : f32 = u_xlat45;
  u_xlat43 = (x_1233 * x_1234);
  let x_1236 : f32 = u_xlat43;
  let x_1238 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1236, x_1236, x_1236) * x_1238);
  let x_1240 : vec3<f32> = u_xlat5;
  let x_1242 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1244 : vec3<f32> = (x_1240 + vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
  let x_1245 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
  let x_1247 : vec4<f32> = u_xlat7;
  let x_1249 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1247.x, x_1247.y, x_1247.z), vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : f32 = u_xlat43;
  u_xlat43 = max(x_1252, 1.17549435e-37f);
  let x_1254 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1254);
  let x_1256 : f32 = u_xlat43;
  let x_1258 : vec4<f32> = u_xlat7;
  let x_1260 : vec3<f32> = (vec3<f32>(x_1256, x_1256, x_1256) * vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
  let x_1263 : vec4<f32> = u_xlat3;
  let x_1265 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1263.x, x_1263.y, x_1263.z), vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
  let x_1268 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1268, 0.0f, 1.0f);
  let x_1271 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1273 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1271.x, x_1271.y, x_1271.z), vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
  let x_1276 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1276, 0.0f, 1.0f);
  let x_1278 : f32 = u_xlat43;
  let x_1279 : f32 = u_xlat43;
  u_xlat43 = (x_1278 * x_1279);
  let x_1281 : f32 = u_xlat43;
  let x_1283 : f32 = u_xlat8.x;
  u_xlat43 = ((x_1281 * x_1283) + 1.000010014f);
  let x_1287 : f32 = u_xlat45;
  let x_1288 : f32 = u_xlat45;
  u_xlat45 = (x_1287 * x_1288);
  let x_1290 : f32 = u_xlat43;
  let x_1291 : f32 = u_xlat43;
  u_xlat43 = (x_1290 * x_1291);
  let x_1293 : f32 = u_xlat45;
  u_xlat45 = max(x_1293, 0.100000001f);
  let x_1296 : f32 = u_xlat43;
  let x_1297 : f32 = u_xlat45;
  u_xlat43 = (x_1296 * x_1297);
  let x_1300 : f32 = u_xlat6.x;
  let x_1301 : f32 = u_xlat43;
  u_xlat43 = (x_1300 * x_1301);
  let x_1303 : f32 = u_xlat46;
  let x_1304 : f32 = u_xlat43;
  u_xlat43 = (x_1303 / x_1304);
  let x_1306 : f32 = u_xlat43;
  let x_1310 : vec3<f32> = u_xlat16;
  let x_1311 : vec3<f32> = ((vec3<f32>(x_1306, x_1306, x_1306) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1310);
  let x_1312 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
  let x_1314 : vec3<f32> = u_xlat20;
  let x_1315 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1314 * vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
  let x_1320 : f32 = x_153.x_AdditionalLightsCount.x;
  let x_1322 : f32 = x_89.unity_LightData.y;
  u_xlat43 = min(x_1320, x_1322);
  let x_1325 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1325));
  let x_1330 : f32 = x_974.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1332 : f32 = x_974.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1334 : f32 = x_974.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1336 : f32 = x_974.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1337 : vec4<f32> = vec4<f32>(x_1330, x_1332, x_1334, x_1336);
  let x_1343 : vec4<bool> = (vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1337.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1343.x, x_1343.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1354 : u32 = u_xlatu_loop_1;
    let x_1355 : u32 = u_xlatu43;
    if ((x_1354 < x_1355)) {
    } else {
      break;
    }
    let x_1358 : u32 = u_xlatu_loop_1;
    u_xlatu18 = (x_1358 >> 2u);
    let x_1361 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1361 & 3u));
    let x_1364 : u32 = u_xlatu18;
    let x_1367 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1364)];
    let x_1377 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1382 : vec4<u32> = indexable[x_1377];
    u_xlat18 = dot(x_1367, bitcast<vec4<f32>>(x_1382));
    let x_1385 : f32 = u_xlat18;
    u_xlatu18 = bitcast<u32>(i32(x_1385));
    let x_1388 : vec3<f32> = vs_INTERP0;
    let x_1400 : u32 = u_xlatu18;
    let x_1403 : vec4<f32> = x_1399.x_AdditionalLightsPosition[bitcast<i32>(x_1400)];
    let x_1406 : u32 = u_xlatu18;
    let x_1409 : vec4<f32> = x_1399.x_AdditionalLightsPosition[bitcast<i32>(x_1406)];
    let x_1411 : vec3<f32> = ((-(x_1388) * vec3<f32>(x_1403.w, x_1403.w, x_1403.w)) + vec3<f32>(x_1409.x, x_1409.y, x_1409.z));
    let x_1412 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1412.w);
    let x_1414 : vec4<f32> = u_xlat9;
    let x_1416 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1414.x, x_1414.y, x_1414.z), vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
    let x_1419 : f32 = u_xlat47;
    u_xlat47 = max(x_1419, 6.10351562e-05f);
    let x_1423 : f32 = u_xlat47;
    u_xlat35 = inverseSqrt(x_1423);
    let x_1426 : f32 = u_xlat35;
    let x_1428 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1426, x_1426, x_1426) * vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
    let x_1431 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1431);
    let x_1433 : f32 = u_xlat47;
    let x_1434 : u32 = u_xlatu18;
    let x_1437 : f32 = x_1399.x_AdditionalLightsAttenuation[bitcast<i32>(x_1434)].x;
    u_xlat47 = (x_1433 * x_1437);
    let x_1439 : f32 = u_xlat47;
    let x_1441 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1439) * x_1441) + 1.0f);
    let x_1444 : f32 = u_xlat47;
    u_xlat47 = max(x_1444, 0.0f);
    let x_1446 : f32 = u_xlat47;
    let x_1447 : f32 = u_xlat47;
    u_xlat47 = (x_1446 * x_1447);
    let x_1449 : f32 = u_xlat47;
    let x_1450 : f32 = u_xlat49;
    u_xlat47 = (x_1449 * x_1450);
    let x_1452 : u32 = u_xlatu18;
    let x_1455 : vec4<f32> = x_1399.x_AdditionalLightsSpotDir[bitcast<i32>(x_1452)];
    let x_1457 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1455.x, x_1455.y, x_1455.z), x_1457);
    let x_1459 : f32 = u_xlat49;
    let x_1460 : u32 = u_xlatu18;
    let x_1463 : f32 = x_1399.x_AdditionalLightsAttenuation[bitcast<i32>(x_1460)].z;
    let x_1465 : u32 = u_xlatu18;
    let x_1468 : f32 = x_1399.x_AdditionalLightsAttenuation[bitcast<i32>(x_1465)].w;
    u_xlat49 = ((x_1459 * x_1463) + x_1468);
    let x_1470 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1470, 0.0f, 1.0f);
    let x_1472 : f32 = u_xlat49;
    let x_1473 : f32 = u_xlat49;
    u_xlat49 = (x_1472 * x_1473);
    let x_1475 : f32 = u_xlat47;
    let x_1476 : f32 = u_xlat49;
    u_xlat47 = (x_1475 * x_1476);
    let x_1479 : u32 = u_xlatu18;
    u_xlatu49 = (x_1479 >> 5u);
    let x_1482 : u32 = u_xlatu18;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1482) & 31i)));
    let x_1488 : i32 = u_xlati51;
    let x_1490 : u32 = u_xlatu49;
    let x_1493 : f32 = x_974.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1490)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1488) & bitcast<u32>(x_1493)));
    let x_1497 : i32 = u_xlati49;
    if ((x_1497 != 0i)) {
      let x_1507 : u32 = u_xlatu18;
      let x_1510 : f32 = x_1506.x_AdditionalLightsLightTypes[bitcast<i32>(x_1507)].el;
      u_xlati49 = i32(x_1510);
      let x_1512 : i32 = u_xlati49;
      u_xlati51 = select(1i, 0i, (x_1512 != 0i));
      let x_1516 : u32 = u_xlatu18;
      u_xlati52 = (bitcast<i32>(x_1516) << bitcast<u32>(2i));
      let x_1519 : i32 = u_xlati51;
      if ((x_1519 != 0i)) {
        let x_1524 : vec3<f32> = vs_INTERP0;
        let x_1526 : i32 = u_xlati52;
        let x_1529 : i32 = u_xlati52;
        let x_1533 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[((x_1526 + 1i) / 4i)][((x_1529 + 1i) % 4i)];
        let x_1535 : vec3<f32> = (vec3<f32>(x_1524.y, x_1524.y, x_1524.y) * vec3<f32>(x_1533.x, x_1533.y, x_1533.w));
        let x_1536 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
        let x_1538 : i32 = u_xlati52;
        let x_1540 : i32 = u_xlati52;
        let x_1543 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[(x_1538 / 4i)][(x_1540 % 4i)];
        let x_1545 : vec3<f32> = vs_INTERP0;
        let x_1548 : vec4<f32> = u_xlat11;
        let x_1550 : vec3<f32> = ((vec3<f32>(x_1543.x, x_1543.y, x_1543.w) * vec3<f32>(x_1545.x, x_1545.x, x_1545.x)) + vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
        let x_1551 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
        let x_1553 : i32 = u_xlati52;
        let x_1556 : i32 = u_xlati52;
        let x_1560 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[((x_1553 + 2i) / 4i)][((x_1556 + 2i) % 4i)];
        let x_1562 : vec3<f32> = vs_INTERP0;
        let x_1565 : vec4<f32> = u_xlat11;
        let x_1567 : vec3<f32> = ((vec3<f32>(x_1560.x, x_1560.y, x_1560.w) * vec3<f32>(x_1562.z, x_1562.z, x_1562.z)) + vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
        let x_1568 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1568.w);
        let x_1570 : vec4<f32> = u_xlat11;
        let x_1572 : i32 = u_xlati52;
        let x_1575 : i32 = u_xlati52;
        let x_1579 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[((x_1572 + 3i) / 4i)][((x_1575 + 3i) % 4i)];
        let x_1581 : vec3<f32> = (vec3<f32>(x_1570.x, x_1570.y, x_1570.z) + vec3<f32>(x_1579.x, x_1579.y, x_1579.w));
        let x_1582 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);
        let x_1584 : vec4<f32> = u_xlat11;
        let x_1586 : vec4<f32> = u_xlat11;
        let x_1588 : vec2<f32> = (vec2<f32>(x_1584.x, x_1584.y) / vec2<f32>(x_1586.z, x_1586.z));
        let x_1589 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1588.x, x_1588.y, x_1589.z, x_1589.w);
        let x_1591 : vec4<f32> = u_xlat11;
        let x_1594 : vec2<f32> = ((vec2<f32>(x_1591.x, x_1591.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1595 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1594.x, x_1594.y, x_1595.z, x_1595.w);
        let x_1597 : vec4<f32> = u_xlat11;
        let x_1601 : vec2<f32> = clamp(vec2<f32>(x_1597.x, x_1597.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1602 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1601.x, x_1601.y, x_1602.z, x_1602.w);
        let x_1604 : u32 = u_xlatu18;
        let x_1607 : vec4<f32> = x_1506.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1604)];
        let x_1609 : vec4<f32> = u_xlat11;
        let x_1612 : u32 = u_xlatu18;
        let x_1615 : vec4<f32> = x_1506.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1612)];
        let x_1617 : vec2<f32> = ((vec2<f32>(x_1607.x, x_1607.y) * vec2<f32>(x_1609.x, x_1609.y)) + vec2<f32>(x_1615.z, x_1615.w));
        let x_1618 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1617.x, x_1617.y, x_1618.z, x_1618.w);
      } else {
        let x_1622 : i32 = u_xlati49;
        u_xlatb49 = (x_1622 == 1i);
        let x_1624 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1624);
        let x_1626 : i32 = u_xlati49;
        if ((x_1626 != 0i)) {
          let x_1632 : vec3<f32> = vs_INTERP0;
          let x_1634 : i32 = u_xlati52;
          let x_1637 : i32 = u_xlati52;
          let x_1641 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[((x_1634 + 1i) / 4i)][((x_1637 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1632.y, x_1632.y) * vec2<f32>(x_1641.x, x_1641.y));
          let x_1644 : i32 = u_xlati52;
          let x_1646 : i32 = u_xlati52;
          let x_1649 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[(x_1644 / 4i)][(x_1646 % 4i)];
          let x_1651 : vec3<f32> = vs_INTERP0;
          let x_1654 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1649.x, x_1649.y) * vec2<f32>(x_1651.x, x_1651.x)) + x_1654);
          let x_1656 : i32 = u_xlati52;
          let x_1659 : i32 = u_xlati52;
          let x_1663 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[((x_1656 + 2i) / 4i)][((x_1659 + 2i) % 4i)];
          let x_1665 : vec3<f32> = vs_INTERP0;
          let x_1668 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1663.x, x_1663.y) * vec2<f32>(x_1665.z, x_1665.z)) + x_1668);
          let x_1670 : vec2<f32> = u_xlat39;
          let x_1671 : i32 = u_xlati52;
          let x_1674 : i32 = u_xlati52;
          let x_1678 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[((x_1671 + 3i) / 4i)][((x_1674 + 3i) % 4i)];
          u_xlat39 = (x_1670 + vec2<f32>(x_1678.x, x_1678.y));
          let x_1681 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1681 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1684 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1684);
          let x_1686 : u32 = u_xlatu18;
          let x_1689 : vec4<f32> = x_1506.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1686)];
          let x_1691 : vec2<f32> = u_xlat39;
          let x_1693 : u32 = u_xlatu18;
          let x_1696 : vec4<f32> = x_1506.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1693)];
          let x_1698 : vec2<f32> = ((vec2<f32>(x_1689.x, x_1689.y) * x_1691) + vec2<f32>(x_1696.z, x_1696.w));
          let x_1699 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1698.x, x_1698.y, x_1699.z, x_1699.w);
        } else {
          let x_1703 : vec3<f32> = vs_INTERP0;
          let x_1705 : i32 = u_xlati52;
          let x_1708 : i32 = u_xlati52;
          let x_1712 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[((x_1705 + 1i) / 4i)][((x_1708 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1703.y, x_1703.y, x_1703.y, x_1703.y) * x_1712);
          let x_1714 : i32 = u_xlati52;
          let x_1716 : i32 = u_xlati52;
          let x_1719 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[(x_1714 / 4i)][(x_1716 % 4i)];
          let x_1720 : vec3<f32> = vs_INTERP0;
          let x_1723 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1719 * vec4<f32>(x_1720.x, x_1720.x, x_1720.x, x_1720.x)) + x_1723);
          let x_1725 : i32 = u_xlati52;
          let x_1728 : i32 = u_xlati52;
          let x_1732 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[((x_1725 + 2i) / 4i)][((x_1728 + 2i) % 4i)];
          let x_1733 : vec3<f32> = vs_INTERP0;
          let x_1736 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1732 * vec4<f32>(x_1733.z, x_1733.z, x_1733.z, x_1733.z)) + x_1736);
          let x_1738 : vec4<f32> = u_xlat12;
          let x_1739 : i32 = u_xlati52;
          let x_1742 : i32 = u_xlati52;
          let x_1746 : vec4<f32> = x_1506.x_AdditionalLightsWorldToLights[((x_1739 + 3i) / 4i)][((x_1742 + 3i) % 4i)];
          u_xlat12 = (x_1738 + x_1746);
          let x_1748 : vec4<f32> = u_xlat12;
          let x_1750 : vec4<f32> = u_xlat12;
          let x_1752 : vec3<f32> = (vec3<f32>(x_1748.x, x_1748.y, x_1748.z) / vec3<f32>(x_1750.w, x_1750.w, x_1750.w));
          let x_1753 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
          let x_1755 : vec4<f32> = u_xlat12;
          let x_1757 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1755.x, x_1755.y, x_1755.z), vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
          let x_1760 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1760);
          let x_1762 : f32 = u_xlat49;
          let x_1764 : vec4<f32> = u_xlat12;
          let x_1766 : vec3<f32> = (vec3<f32>(x_1762, x_1762, x_1762) * vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
          let x_1767 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
          let x_1769 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1769.x, x_1769.y, x_1769.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1774 : f32 = u_xlat49;
          u_xlat49 = max(x_1774, 0.000001f);
          let x_1777 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1777);
          let x_1780 : f32 = u_xlat49;
          let x_1782 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1780, x_1780, x_1780) * vec3<f32>(x_1782.z, x_1782.x, x_1782.y));
          let x_1786 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1786);
          let x_1790 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1790, 0.0f, 1.0f);
          let x_1794 : vec3<f32> = u_xlat13;
          let x_1797 : vec4<bool> = (vec4<f32>(x_1794.y, x_1794.z, x_1794.y, x_1794.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1797.x, x_1797.y);
          let x_1800 : bool = u_xlatb39.x;
          if (x_1800) {
            let x_1805 : f32 = u_xlat13.x;
            x_1801 = x_1805;
          } else {
            let x_1808 : f32 = u_xlat13.x;
            x_1801 = -(x_1808);
          }
          let x_1810 : f32 = x_1801;
          u_xlat39.x = x_1810;
          let x_1813 : bool = u_xlatb39.y;
          if (x_1813) {
            let x_1818 : f32 = u_xlat13.x;
            x_1814 = x_1818;
          } else {
            let x_1821 : f32 = u_xlat13.x;
            x_1814 = -(x_1821);
          }
          let x_1823 : f32 = x_1814;
          u_xlat39.y = x_1823;
          let x_1825 : vec4<f32> = u_xlat12;
          let x_1827 : f32 = u_xlat49;
          let x_1830 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1825.x, x_1825.y) * vec2<f32>(x_1827, x_1827)) + x_1830);
          let x_1832 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1832 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1835 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1835, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1839 : u32 = u_xlatu18;
          let x_1842 : vec4<f32> = x_1506.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1839)];
          let x_1844 : vec2<f32> = u_xlat39;
          let x_1846 : u32 = u_xlatu18;
          let x_1849 : vec4<f32> = x_1506.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1846)];
          let x_1851 : vec2<f32> = ((vec2<f32>(x_1842.x, x_1842.y) * x_1844) + vec2<f32>(x_1849.z, x_1849.w));
          let x_1852 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1851.x, x_1851.y, x_1852.z, x_1852.w);
        }
      }
      let x_1859 : vec4<f32> = u_xlat11;
      let x_1862 : f32 = x_153.x_GlobalMipBias.x;
      let x_1863 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1859.x, x_1859.y), x_1862);
      u_xlat11 = x_1863;
      let x_1865 : bool = u_xlatb7.y;
      if (x_1865) {
        let x_1870 : f32 = u_xlat11.w;
        x_1866 = x_1870;
      } else {
        let x_1873 : f32 = u_xlat11.x;
        x_1866 = x_1873;
      }
      let x_1874 : f32 = x_1866;
      u_xlat49 = x_1874;
      let x_1876 : bool = u_xlatb7.x;
      if (x_1876) {
        let x_1880 : vec4<f32> = u_xlat11;
        x_1877 = vec3<f32>(x_1880.x, x_1880.y, x_1880.z);
      } else {
        let x_1883 : f32 = u_xlat49;
        x_1877 = vec3<f32>(x_1883, x_1883, x_1883);
      }
      let x_1885 : vec3<f32> = x_1877;
      let x_1886 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1892 : vec4<f32> = u_xlat11;
    let x_1894 : u32 = u_xlatu18;
    let x_1897 : vec4<f32> = x_1399.x_AdditionalLightsColor[bitcast<i32>(x_1894)];
    let x_1899 : vec3<f32> = (vec3<f32>(x_1892.x, x_1892.y, x_1892.z) * vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
    let x_1900 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
    let x_1902 : f32 = u_xlat32;
    let x_1904 : vec4<f32> = u_xlat11;
    let x_1906 : vec3<f32> = (vec3<f32>(x_1902, x_1902, x_1902) * vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
    let x_1907 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
    let x_1909 : vec4<f32> = u_xlat3;
    let x_1911 : vec3<f32> = u_xlat10;
    u_xlat18 = dot(vec3<f32>(x_1909.x, x_1909.y, x_1909.z), x_1911);
    let x_1913 : f32 = u_xlat18;
    u_xlat18 = clamp(x_1913, 0.0f, 1.0f);
    let x_1915 : f32 = u_xlat18;
    let x_1916 : f32 = u_xlat47;
    u_xlat18 = (x_1915 * x_1916);
    let x_1918 : f32 = u_xlat18;
    let x_1920 : vec4<f32> = u_xlat11;
    let x_1922 : vec3<f32> = (vec3<f32>(x_1918, x_1918, x_1918) * vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
    let x_1923 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
    let x_1925 : vec4<f32> = u_xlat9;
    let x_1927 : f32 = u_xlat35;
    let x_1930 : vec3<f32> = u_xlat5;
    let x_1931 : vec3<f32> = ((vec3<f32>(x_1925.x, x_1925.y, x_1925.z) * vec3<f32>(x_1927, x_1927, x_1927)) + x_1930);
    let x_1932 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1932.w);
    let x_1934 : vec4<f32> = u_xlat9;
    let x_1936 : vec4<f32> = u_xlat9;
    u_xlat18 = dot(vec3<f32>(x_1934.x, x_1934.y, x_1934.z), vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
    let x_1939 : f32 = u_xlat18;
    u_xlat18 = max(x_1939, 1.17549435e-37f);
    let x_1941 : f32 = u_xlat18;
    u_xlat18 = inverseSqrt(x_1941);
    let x_1943 : f32 = u_xlat18;
    let x_1945 : vec4<f32> = u_xlat9;
    let x_1947 : vec3<f32> = (vec3<f32>(x_1943, x_1943, x_1943) * vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
    let x_1948 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
    let x_1950 : vec4<f32> = u_xlat3;
    let x_1952 : vec4<f32> = u_xlat9;
    u_xlat18 = dot(vec3<f32>(x_1950.x, x_1950.y, x_1950.z), vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : f32 = u_xlat18;
    u_xlat18 = clamp(x_1955, 0.0f, 1.0f);
    let x_1957 : vec3<f32> = u_xlat10;
    let x_1958 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(x_1957, vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
    let x_1961 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1961, 0.0f, 1.0f);
    let x_1963 : f32 = u_xlat18;
    let x_1964 : f32 = u_xlat18;
    u_xlat18 = (x_1963 * x_1964);
    let x_1966 : f32 = u_xlat18;
    let x_1968 : f32 = u_xlat8.x;
    u_xlat18 = ((x_1966 * x_1968) + 1.000010014f);
    let x_1971 : f32 = u_xlat47;
    let x_1972 : f32 = u_xlat47;
    u_xlat47 = (x_1971 * x_1972);
    let x_1974 : f32 = u_xlat18;
    let x_1975 : f32 = u_xlat18;
    u_xlat18 = (x_1974 * x_1975);
    let x_1977 : f32 = u_xlat47;
    u_xlat47 = max(x_1977, 0.100000001f);
    let x_1979 : f32 = u_xlat18;
    let x_1980 : f32 = u_xlat47;
    u_xlat18 = (x_1979 * x_1980);
    let x_1983 : f32 = u_xlat6.x;
    let x_1984 : f32 = u_xlat18;
    u_xlat18 = (x_1983 * x_1984);
    let x_1986 : f32 = u_xlat46;
    let x_1987 : f32 = u_xlat18;
    u_xlat18 = (x_1986 / x_1987);
    let x_1989 : f32 = u_xlat18;
    let x_1992 : vec3<f32> = u_xlat16;
    let x_1993 : vec3<f32> = ((vec3<f32>(x_1989, x_1989, x_1989) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1992);
    let x_1994 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
    let x_1996 : vec4<f32> = u_xlat9;
    let x_1998 : vec4<f32> = u_xlat11;
    let x_2001 : vec3<f32> = u_xlat22;
    u_xlat22 = ((vec3<f32>(x_1996.x, x_1996.y, x_1996.z) * vec3<f32>(x_1998.x, x_1998.y, x_1998.z)) + x_2001);

    continuing {
      let x_2003 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2003 + bitcast<u32>(1i));
    }
  }
  let x_2005 : vec3<f32> = u_xlat14;
  let x_2006 : vec3<f32> = u_xlat4;
  let x_2009 : vec3<f32> = u_xlat20;
  u_xlat14 = ((x_2005 * vec3<f32>(x_2006.x, x_2006.x, x_2006.x)) + x_2009);
  let x_2011 : vec3<f32> = u_xlat22;
  let x_2012 : vec3<f32> = u_xlat14;
  u_xlat14 = (x_2011 + x_2012);
  let x_2016 : vec4<f32> = vs_INTERP4;
  let x_2018 : vec3<f32> = u_xlat1;
  let x_2020 : vec3<f32> = u_xlat14;
  let x_2021 : vec3<f32> = ((vec3<f32>(x_2016.w, x_2016.w, x_2016.w) * x_2018) + x_2020);
  let x_2022 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
  let x_2024 : bool = u_xlatb2;
  let x_2025 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2025, x_2024);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

