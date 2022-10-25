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
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_90 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_145 : UnityPerDraw;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_199 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_257 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1359 : AdditionalLights;

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
  var u_xlat0 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat2 : vec3<f32>;
  var x_133 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb37 : bool;
  var u_xlatb38 : bool;
  var u_xlat38 : f32;
  var x_519 : f32;
  var u_xlatu2 : vec3<u32>;
  var u_xlatu26 : u32;
  var u_xlatu3 : u32;
  var u_xlati26 : i32;
  var u_xlati14 : i32;
  var u_xlatu14 : u32;
  var u_xlati2 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat14 : vec3<f32>;
  var x_652 : f32;
  var u_xlatb14 : vec2<bool>;
  var x_683 : f32;
  var u_xlat26 : f32;
  var u_xlatb2 : bool;
  var x_730 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat29 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati17 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat21 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
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
  u_xlat0.x = dot(x_65, x_66);
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_72);
  let x_76 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_76);
  let x_79 : vec3<f32> = u_xlat0;
  let x_81 : vec3<f32> = vs_INTERP1;
  u_xlat0 = (vec3<f32>(x_79.x, x_79.x, x_79.x) * x_81);
  let x_94 : f32 = x_90.unity_OrthoParams.w;
  u_xlatb36 = (x_94 == 0.0f);
  let x_99 : vec3<f32> = vs_INTERP0;
  let x_104 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_99) + x_104);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec3<f32> = u_xlat1;
  u_xlat37 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat37;
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_121 : f32 = x_90.unity_MatrixV[0i].z;
  u_xlat2.x = x_121;
  let x_125 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat2.y = x_125;
  let x_130 : f32 = x_90.unity_MatrixV[2i].z;
  u_xlat2.z = x_130;
  let x_132 : bool = u_xlatb36;
  if (x_132) {
    let x_136 : vec3<f32> = u_xlat1;
    x_133 = x_136;
  } else {
    let x_138 : vec3<f32> = u_xlat2;
    x_133 = x_138;
  }
  let x_139 : vec3<f32> = x_133;
  u_xlat1 = x_139;
  let x_140 : vec3<f32> = u_xlat1;
  let x_148 : vec4<f32> = x_145.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_152 : vec4<f32> = x_145.unity_WorldToObject[0i];
  let x_154 : vec3<f32> = u_xlat1;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + x_157);
  let x_160 : vec4<f32> = x_145.unity_WorldToObject[2i];
  let x_162 : vec3<f32> = u_xlat1;
  let x_165 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + x_165);
  let x_168 : vec3<f32> = u_xlat2;
  let x_169 : vec3<f32> = u_xlat2;
  u_xlat36 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat36;
  let x_175 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_173, x_173, x_173) * x_175);
  let x_189 : vec4<f32> = vs_INTERP3;
  let x_192 : f32 = x_90.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_189.x, x_189.y), x_192);
  u_xlat3 = x_193;
  let x_195 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = x_199.Color_C30C7CA3;
  let x_203 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_212 : vec4<f32> = vs_INTERP3;
  let x_215 : f32 = x_90.x_GlobalMipBias.x;
  let x_216 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_212.x, x_212.y), x_215);
  u_xlat5 = vec4<f32>(x_216.w, x_216.x, x_216.y, x_216.z);
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_219.y, x_219.z, x_219.w, x_219.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_227 : vec4<f32> = u_xlat6;
  let x_228 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_227, x_228);
  let x_230 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_230);
  let x_233 : f32 = u_xlat36;
  let x_235 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_240 : f32 = vs_INTERP4.y;
  u_xlat36 = (x_240 * 200.0f);
  let x_243 : f32 = u_xlat36;
  u_xlat36 = min(x_243, 1.0f);
  let x_245 : f32 = u_xlat36;
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec3<f32> = (vec3<f32>(x_245, x_245, x_245) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec3<f32> = vs_INTERP0;
  let x_259 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres0;
  let x_262 : vec3<f32> = (x_252 + -(vec3<f32>(x_259.x, x_259.y, x_259.z)));
  let x_263 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec3<f32> = vs_INTERP0;
  let x_268 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres1;
  let x_271 : vec3<f32> = (x_266 + -(vec3<f32>(x_268.x, x_268.y, x_268.z)));
  let x_272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_275 : vec3<f32> = vs_INTERP0;
  let x_278 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres2;
  let x_281 : vec3<f32> = (x_275 + -(vec3<f32>(x_278.x, x_278.y, x_278.z)));
  let x_282 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_285 : vec3<f32> = vs_INTERP0;
  let x_288 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_285 + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_292 : vec4<f32> = u_xlat6;
  let x_294 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_292.x, x_292.y, x_292.z), vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_298 : vec4<f32> = u_xlat7;
  let x_300 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_304 : vec4<f32> = u_xlat8;
  let x_306 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_310 : vec3<f32> = u_xlat9;
  let x_311 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_310, x_311);
  let x_317 : vec4<f32> = u_xlat6;
  let x_320 : vec4<f32> = x_257.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_317 < x_320);
  let x_323 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_323);
  let x_327 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_327);
  let x_331 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_331);
  let x_335 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_335);
  let x_339 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_339);
  let x_344 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_344);
  let x_348 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_348);
  let x_351 : vec4<f32> = u_xlat6;
  let x_353 : vec4<f32> = u_xlat7;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) + vec3<f32>(x_353.y, x_353.z, x_353.w));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec3<f32> = max(vec3<f32>(x_358.x, x_358.y, x_358.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_362 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_362.x, x_361.x, x_361.y, x_361.z);
  let x_364 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(x_364, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_369 : f32 = u_xlat36;
  u_xlat36 = (-(x_369) + 4.0f);
  let x_373 : f32 = u_xlat36;
  u_xlatu36 = u32(x_373);
  let x_376 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_376) << bitcast<u32>(2i));
  let x_379 : vec3<f32> = vs_INTERP0;
  let x_381 : i32 = u_xlati36;
  let x_384 : i32 = u_xlati36;
  let x_388 : vec4<f32> = x_257.x_MainLightWorldToShadow[((x_381 + 1i) / 4i)][((x_384 + 1i) % 4i)];
  let x_390 : vec3<f32> = (vec3<f32>(x_379.y, x_379.y, x_379.y) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : i32 = u_xlati36;
  let x_395 : i32 = u_xlati36;
  let x_398 : vec4<f32> = x_257.x_MainLightWorldToShadow[(x_393 / 4i)][(x_395 % 4i)];
  let x_400 : vec3<f32> = vs_INTERP0;
  let x_403 : vec4<f32> = u_xlat6;
  let x_405 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_400.x, x_400.x, x_400.x)) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : i32 = u_xlati36;
  let x_411 : i32 = u_xlati36;
  let x_415 : vec4<f32> = x_257.x_MainLightWorldToShadow[((x_408 + 2i) / 4i)][((x_411 + 2i) % 4i)];
  let x_417 : vec3<f32> = vs_INTERP0;
  let x_420 : vec4<f32> = u_xlat6;
  let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.z, x_417.z, x_417.z)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat6;
  let x_427 : i32 = u_xlati36;
  let x_430 : i32 = u_xlati36;
  let x_434 : vec4<f32> = x_257.x_MainLightWorldToShadow[((x_427 + 3i) / 4i)][((x_430 + 3i) % 4i)];
  let x_436 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : vec4<f32> = u_xlat6;
  let x_441 : vec2<f32> = vec2<f32>(x_440.x, x_440.y);
  let x_443 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_441.x, x_441.y, x_443);
  let x_455 : vec3<f32> = txVec0;
  let x_457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_455.xy, x_455.z);
  u_xlat36 = x_457;
  let x_460 : f32 = x_257.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_460) + 1.0f);
  let x_463 : f32 = u_xlat36;
  let x_465 : f32 = x_257.x_MainLightShadowParams.x;
  let x_467 : f32 = u_xlat37;
  u_xlat36 = ((x_463 * x_465) + x_467);
  let x_471 : f32 = u_xlat6.z;
  u_xlatb37 = (0.0f >= x_471);
  let x_475 : f32 = u_xlat6.z;
  u_xlatb38 = (x_475 >= 1.0f);
  let x_477 : bool = u_xlatb37;
  let x_478 : bool = u_xlatb38;
  u_xlatb37 = (x_477 | x_478);
  let x_480 : bool = u_xlatb37;
  let x_481 : f32 = u_xlat36;
  u_xlat36 = select(x_481, 1.0f, x_480);
  let x_483 : vec3<f32> = u_xlat0;
  let x_485 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_483, -(vec3<f32>(x_485.x, x_485.y, x_485.z)));
  let x_491 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_491, 0.0f, 1.0f);
  let x_494 : f32 = u_xlat36;
  let x_497 : vec4<f32> = x_90.x_MainLightColor;
  let x_499 : vec3<f32> = (vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec3<f32> = u_xlat0;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_502.x, x_502.x, x_502.x) * vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec3<f32> = u_xlat0;
  let x_508 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_507 * vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_512 : f32 = x_145.unity_LODFade.x;
  u_xlatb37 = (x_512 < 0.0f);
  let x_516 : f32 = x_145.unity_LODFade.x;
  u_xlat38 = (x_516 + 1.0f);
  let x_518 : bool = u_xlatb37;
  if (x_518) {
    let x_522 : f32 = u_xlat38;
    x_519 = x_522;
  } else {
    let x_525 : f32 = x_145.unity_LODFade.x;
    x_519 = x_525;
  }
  let x_526 : f32 = x_519;
  u_xlat37 = x_526;
  let x_528 : f32 = u_xlat37;
  u_xlatb38 = (0.5f >= x_528);
  let x_530 : vec3<f32> = u_xlat2;
  let x_534 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat2 = (abs(x_530) * vec3<f32>(x_534.x, x_534.y, x_534.x));
  let x_540 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_540);
  let x_544 : u32 = u_xlatu2.z;
  u_xlatu26 = (x_544 * 1025u);
  let x_548 : u32 = u_xlatu26;
  u_xlatu3 = (x_548 >> 6u);
  let x_552 : u32 = u_xlatu26;
  let x_553 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_552 ^ x_553));
  let x_556 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_556) * 9u);
  let x_560 : u32 = u_xlatu26;
  u_xlatu3 = (x_560 >> 11u);
  let x_563 : u32 = u_xlatu26;
  let x_564 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_563 ^ x_564));
  let x_567 : i32 = u_xlati26;
  u_xlati26 = (x_567 * 32769i);
  let x_571 : i32 = u_xlati26;
  let x_574 : u32 = u_xlatu2.y;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_571) ^ x_574));
  let x_578 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_578) * 1025u);
  let x_581 : u32 = u_xlatu14;
  u_xlatu26 = (x_581 >> 6u);
  let x_583 : u32 = u_xlatu26;
  let x_584 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_583 ^ x_584));
  let x_587 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_587) * 9u);
  let x_590 : u32 = u_xlatu14;
  u_xlatu26 = (x_590 >> 11u);
  let x_592 : u32 = u_xlatu26;
  let x_593 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_592 ^ x_593));
  let x_596 : i32 = u_xlati14;
  u_xlati14 = (x_596 * 32769i);
  let x_599 : i32 = u_xlati14;
  let x_602 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_599) ^ x_602));
  let x_605 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_605) * 1025u);
  let x_610 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_610 >> 6u);
  let x_612 : u32 = u_xlatu14;
  let x_614 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_612 ^ x_614));
  let x_617 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_617) * 9u);
  let x_622 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_622 >> 11u);
  let x_624 : u32 = u_xlatu14;
  let x_626 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_624 ^ x_626));
  let x_629 : i32 = u_xlati2;
  u_xlati2 = (x_629 * 32769i);
  param = 1065353216i;
  let x_635 : i32 = u_xlati2;
  param_1 = x_635;
  param_2 = 0i;
  param_3 = 23i;
  let x_638 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_638);
  let x_642 : f32 = u_xlat2.x;
  u_xlat2.x = (x_642 + -1.0f);
  let x_647 : f32 = u_xlat2.x;
  u_xlat14.x = (-(x_647) + 1.0f);
  let x_651 : bool = u_xlatb38;
  if (x_651) {
    let x_656 : f32 = u_xlat2.x;
    x_652 = x_656;
  } else {
    let x_659 : f32 = u_xlat14.x;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat2.x = x_660;
  let x_662 : f32 = u_xlat37;
  let x_665 : f32 = u_xlat2.x;
  u_xlat37 = ((x_662 * 2.0f) + -(x_665));
  let x_668 : f32 = u_xlat37;
  let x_670 : f32 = u_xlat3.w;
  u_xlat2.x = (x_668 * x_670);
  let x_677 : f32 = u_xlat2.x;
  u_xlatb14.x = (x_677 >= 0.400000006f);
  let x_682 : bool = u_xlatb14.x;
  if (x_682) {
    let x_687 : f32 = u_xlat2.x;
    x_683 = x_687;
  } else {
    x_683 = 0.0f;
  }
  let x_689 : f32 = x_683;
  u_xlat14.x = x_689;
  let x_692 : f32 = u_xlat3.w;
  let x_693 : f32 = u_xlat37;
  u_xlat37 = ((x_692 * x_693) + -0.400000006f);
  let x_699 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_699);
  let x_702 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_702);
  let x_706 : f32 = u_xlat2.x;
  let x_708 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_706) + abs(x_708));
  let x_713 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_713, 0.0001f);
  let x_717 : f32 = u_xlat37;
  let x_719 : f32 = u_xlat2.x;
  u_xlat37 = (x_717 / x_719);
  let x_721 : f32 = u_xlat37;
  u_xlat37 = (x_721 + 0.5f);
  let x_723 : f32 = u_xlat37;
  u_xlat37 = clamp(x_723, 0.0f, 1.0f);
  let x_727 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_727 == 0.0f));
  let x_729 : bool = u_xlatb2;
  if (x_729) {
    let x_733 : f32 = u_xlat37;
    x_730 = x_733;
  } else {
    let x_736 : f32 = u_xlat14.x;
    x_730 = x_736;
  }
  let x_737 : f32 = x_730;
  u_xlat37 = x_737;
  let x_738 : f32 = u_xlat37;
  u_xlat14.x = (x_738 + -0.0001f);
  let x_743 : f32 = u_xlat14.x;
  u_xlatb14.x = (x_743 < 0.0f);
  let x_747 : bool = u_xlatb14.x;
  if (((select(0i, 1i, x_747) * -1i) != 0i)) {
    discard;
  }
  let x_757 : f32 = vs_INTERP2.w;
  u_xlatb14.x = (0.0f < x_757);
  let x_761 : f32 = x_145.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_761 >= 0.0f);
  let x_765 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_765);
  let x_769 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_769);
  let x_773 : f32 = u_xlat14.y;
  let x_775 : f32 = u_xlat14.x;
  u_xlat14.x = (x_773 * x_775);
  let x_778 : vec3<f32> = vs_INTERP1;
  let x_780 : vec4<f32> = vs_INTERP2;
  let x_782 : vec3<f32> = (vec3<f32>(x_778.z, x_778.x, x_778.y) * vec3<f32>(x_780.y, x_780.z, x_780.x));
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec3<f32> = vs_INTERP1;
  let x_787 : vec4<f32> = vs_INTERP2;
  let x_790 : vec4<f32> = u_xlat3;
  let x_793 : vec3<f32> = ((vec3<f32>(x_785.y, x_785.z, x_785.x) * vec3<f32>(x_787.z, x_787.x, x_787.y)) + -(vec3<f32>(x_790.x, x_790.y, x_790.z)));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec3<f32> = u_xlat14;
  let x_798 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_796.x, x_796.x, x_796.x) * vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec3<f32> = u_xlat14;
  let x_802 : vec3<f32> = u_xlat17;
  u_xlat14 = (x_801 * vec3<f32>(x_802.y, x_802.y, x_802.y));
  let x_805 : vec3<f32> = u_xlat17;
  let x_807 : vec4<f32> = vs_INTERP2;
  let x_810 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_805.x, x_805.x, x_805.x) * vec3<f32>(x_807.x, x_807.y, x_807.z)) + x_810);
  let x_812 : vec3<f32> = u_xlat17;
  let x_814 : vec3<f32> = vs_INTERP1;
  let x_816 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_812.z, x_812.z, x_812.z) * x_814) + x_816);
  let x_818 : vec3<f32> = u_xlat14;
  let x_819 : vec3<f32> = u_xlat14;
  u_xlat3.x = dot(x_818, x_819);
  let x_823 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_823);
  let x_826 : vec3<f32> = u_xlat14;
  let x_827 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_826 * vec3<f32>(x_827.x, x_827.x, x_827.x));
  let x_831 : f32 = vs_INTERP0.y;
  let x_833 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat3.x = (x_831 * x_833);
  let x_837 : f32 = x_90.unity_MatrixV[0i].z;
  let x_839 : f32 = vs_INTERP0.x;
  let x_842 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_837 * x_839) + x_842);
  let x_846 : f32 = x_90.unity_MatrixV[2i].z;
  let x_848 : f32 = vs_INTERP0.z;
  let x_851 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_846 * x_848) + x_851);
  let x_855 : f32 = u_xlat3.x;
  let x_857 : f32 = x_90.unity_MatrixV[3i].z;
  u_xlat3.x = (x_855 + x_857);
  let x_861 : f32 = u_xlat3.x;
  let x_864 : f32 = x_90.x_ProjectionParams.y;
  u_xlat3.x = (-(x_861) + -(x_864));
  let x_869 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_869, 0.0f);
  let x_873 : f32 = u_xlat3.x;
  let x_876 : f32 = x_90.unity_FogParams.x;
  u_xlat3.x = (x_873 * x_876);
  let x_886 : vec2<f32> = vs_INTERP5;
  let x_888 : f32 = x_90.x_GlobalMipBias.x;
  let x_889 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_886, x_888);
  u_xlat6 = x_889;
  let x_895 : vec2<f32> = vs_INTERP5;
  let x_897 : f32 = x_90.x_GlobalMipBias.x;
  let x_898 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_895, x_897);
  u_xlat15 = vec3<f32>(x_898.x, x_898.y, x_898.z);
  let x_900 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_900.x, x_900.y, x_900.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_906 : vec3<f32> = u_xlat14;
  let x_907 : vec3<f32> = u_xlat17;
  u_xlat40 = dot(x_906, x_907);
  let x_909 : f32 = u_xlat40;
  u_xlat40 = (x_909 + 0.5f);
  let x_911 : vec3<f32> = u_xlat15;
  let x_912 : f32 = u_xlat40;
  u_xlat15 = (x_911 * vec3<f32>(x_912, x_912, x_912));
  let x_916 : f32 = u_xlat6.w;
  u_xlat40 = max(x_916, 0.0001f);
  let x_918 : vec3<f32> = u_xlat15;
  let x_919 : f32 = u_xlat40;
  u_xlat15 = (x_918 / vec3<f32>(x_919, x_919, x_919));
  let x_924 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
  let x_929 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_925.x, x_925.y));
  let x_930 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_929.x, x_929.y, x_930.z);
  let x_932 : vec3<f32> = u_xlat17;
  let x_934 : vec4<f32> = hlslcc_FragCoord;
  let x_936 : vec2<f32> = (vec2<f32>(x_932.x, x_932.y) * vec2<f32>(x_934.x, x_934.y));
  let x_937 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
  let x_940 : f32 = u_xlat6.y;
  let x_943 : f32 = x_90.x_ScaleBiasRt.x;
  let x_946 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat40 = ((x_940 * x_943) + x_946);
  let x_948 : f32 = u_xlat40;
  u_xlat6.z = (-(x_948) + 1.0f);
  let x_953 : f32 = u_xlat5.x;
  u_xlat5.x = x_953;
  let x_956 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_956, 0.0f, 1.0f);
  let x_959 : f32 = u_xlat37;
  u_xlat37 = x_959;
  let x_960 : f32 = u_xlat37;
  u_xlat37 = clamp(x_960, 0.0f, 1.0f);
  let x_963 : f32 = u_xlat5.x;
  u_xlat40 = (-(x_963) + 1.0f);
  let x_966 : f32 = u_xlat40;
  let x_967 : f32 = u_xlat40;
  u_xlat17.x = (x_966 * x_967);
  let x_971 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_971, 0.0078125f);
  let x_977 : f32 = u_xlat17.x;
  let x_979 : f32 = u_xlat17.x;
  u_xlat29 = (x_977 * x_979);
  let x_982 : f32 = u_xlat5.x;
  u_xlat5.x = (x_982 + 0.040000021f);
  let x_987 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_987, 1.0f);
  let x_992 : f32 = u_xlat17.x;
  u_xlat41 = ((x_992 * 4.0f) + 2.0f);
  let x_1000 : vec4<f32> = u_xlat6;
  let x_1003 : f32 = x_90.x_GlobalMipBias.x;
  let x_1004 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1000.x, x_1000.z), x_1003);
  u_xlat6.x = x_1004.x;
  let x_1009 : f32 = u_xlat6.x;
  u_xlat18 = (x_1009 + -1.0f);
  let x_1012 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1013 : f32 = u_xlat18;
  u_xlat18 = ((x_1012 * x_1013) + 1.0f);
  let x_1017 : f32 = u_xlat6.x;
  let x_1019 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_1017, x_1019);
  let x_1022 : vec3<f32> = vs_INTERP0;
  let x_1024 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  let x_1026 : vec3<f32> = (x_1022 + -(x_1024));
  let x_1027 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1030 : vec4<f32> = u_xlat7;
  let x_1032 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1030.x, x_1030.y, x_1030.z), vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : f32 = u_xlat30;
  let x_1037 : f32 = x_257.x_MainLightShadowParams.z;
  let x_1040 : f32 = x_257.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1035 * x_1037) + x_1040);
  let x_1042 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1042, 0.0f, 1.0f);
  let x_1045 : f32 = u_xlat36;
  u_xlat42 = (-(x_1045) + 1.0f);
  let x_1048 : f32 = u_xlat30;
  let x_1049 : f32 = u_xlat42;
  let x_1051 : f32 = u_xlat36;
  u_xlat36 = ((x_1048 * x_1049) + x_1051);
  let x_1053 : f32 = u_xlat18;
  let x_1056 : vec4<f32> = x_90.x_MainLightColor;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1053, x_1053, x_1053) * vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec3<f32> = u_xlat1;
  let x_1063 : vec3<f32> = u_xlat14;
  u_xlat30 = dot(-(x_1061), x_1063);
  let x_1065 : f32 = u_xlat30;
  let x_1066 : f32 = u_xlat30;
  u_xlat30 = (x_1065 + x_1066);
  let x_1068 : vec3<f32> = u_xlat14;
  let x_1069 : f32 = u_xlat30;
  let x_1073 : vec3<f32> = u_xlat1;
  let x_1075 : vec3<f32> = ((x_1068 * -(vec3<f32>(x_1069, x_1069, x_1069))) + -(x_1073));
  let x_1076 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1078 : vec3<f32> = u_xlat14;
  let x_1079 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1078, x_1079);
  let x_1081 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1081, 0.0f, 1.0f);
  let x_1083 : f32 = u_xlat30;
  u_xlat30 = (-(x_1083) + 1.0f);
  let x_1086 : f32 = u_xlat30;
  let x_1087 : f32 = u_xlat30;
  u_xlat30 = (x_1086 * x_1087);
  let x_1089 : f32 = u_xlat30;
  let x_1090 : f32 = u_xlat30;
  u_xlat30 = (x_1089 * x_1090);
  let x_1092 : f32 = u_xlat40;
  u_xlat42 = ((-(x_1092) * 0.699999988f) + 1.700000048f);
  let x_1098 : f32 = u_xlat40;
  let x_1099 : f32 = u_xlat42;
  u_xlat4.w = (x_1098 * x_1099);
  let x_1102 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_1102 * vec4<f32>(0.959999979f, 0.959999979f, 0.959999979f, 6.0f));
  let x_1115 : vec4<f32> = u_xlat8;
  let x_1118 : f32 = u_xlat4.w;
  let x_1119 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1115.x, x_1115.y, x_1115.z), x_1118);
  u_xlat8 = x_1119;
  let x_1121 : f32 = u_xlat8.w;
  u_xlat40 = (x_1121 + -1.0f);
  let x_1124 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1125 : f32 = u_xlat40;
  u_xlat40 = ((x_1124 * x_1125) + 1.0f);
  let x_1128 : f32 = u_xlat40;
  u_xlat40 = max(x_1128, 0.0f);
  let x_1130 : f32 = u_xlat40;
  u_xlat40 = log2(x_1130);
  let x_1132 : f32 = u_xlat40;
  let x_1134 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_1132 * x_1134);
  let x_1136 : f32 = u_xlat40;
  u_xlat40 = exp2(x_1136);
  let x_1138 : f32 = u_xlat40;
  let x_1140 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_1138 * x_1140);
  let x_1142 : vec4<f32> = u_xlat8;
  let x_1144 : f32 = u_xlat40;
  let x_1146 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.y, x_1142.z) * vec3<f32>(x_1144, x_1144, x_1144));
  let x_1147 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1149 : vec3<f32> = u_xlat17;
  let x_1151 : vec3<f32> = u_xlat17;
  let x_1155 : vec2<f32> = ((vec2<f32>(x_1149.x, x_1149.x) * vec2<f32>(x_1151.x, x_1151.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1156 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_1155.x, x_1155.y, x_1156.z);
  let x_1159 : f32 = u_xlat9.y;
  u_xlat40 = (1.0f / x_1159);
  let x_1162 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1162 + -0.039999999f);
  let x_1166 : f32 = u_xlat30;
  let x_1168 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1166 * x_1168) + 0.039999999f);
  let x_1173 : f32 = u_xlat40;
  let x_1175 : f32 = u_xlat5.x;
  u_xlat40 = (x_1173 * x_1175);
  let x_1177 : f32 = u_xlat40;
  let x_1179 : vec4<f32> = u_xlat8;
  let x_1181 : vec3<f32> = (vec3<f32>(x_1177, x_1177, x_1177) * vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : vec3<f32> = u_xlat15;
  let x_1185 : vec4<f32> = u_xlat4;
  let x_1188 : vec4<f32> = u_xlat8;
  u_xlat15 = ((x_1184 * vec3<f32>(x_1185.x, x_1185.y, x_1185.z)) + vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : f32 = u_xlat36;
  let x_1193 : f32 = x_145.unity_LightData.z;
  u_xlat36 = (x_1191 * x_1193);
  let x_1195 : vec3<f32> = u_xlat14;
  let x_1197 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat40 = dot(x_1195, vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1200 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1200, 0.0f, 1.0f);
  let x_1202 : f32 = u_xlat36;
  let x_1203 : f32 = u_xlat40;
  u_xlat36 = (x_1202 * x_1203);
  let x_1205 : f32 = u_xlat36;
  let x_1207 : vec4<f32> = u_xlat7;
  let x_1209 : vec3<f32> = (vec3<f32>(x_1205, x_1205, x_1205) * vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec3<f32> = u_xlat1;
  let x_1214 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1216 : vec3<f32> = (x_1212 + vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1219 : vec4<f32> = u_xlat8;
  let x_1221 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1219.x, x_1219.y, x_1219.z), vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : f32 = u_xlat36;
  u_xlat36 = max(x_1224, 1.17549435e-37f);
  let x_1227 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1227);
  let x_1229 : f32 = u_xlat36;
  let x_1231 : vec4<f32> = u_xlat8;
  let x_1233 : vec3<f32> = (vec3<f32>(x_1229, x_1229, x_1229) * vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
  let x_1234 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1236 : vec3<f32> = u_xlat14;
  let x_1237 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(x_1236, vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
  let x_1240 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1240, 0.0f, 1.0f);
  let x_1243 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1245 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_1243.x, x_1243.y, x_1243.z), vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
  let x_1248 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1248, 0.0f, 1.0f);
  let x_1250 : f32 = u_xlat36;
  let x_1251 : f32 = u_xlat36;
  u_xlat36 = (x_1250 * x_1251);
  let x_1253 : f32 = u_xlat36;
  let x_1255 : f32 = u_xlat9.x;
  u_xlat36 = ((x_1253 * x_1255) + 1.000010014f);
  let x_1259 : f32 = u_xlat40;
  let x_1260 : f32 = u_xlat40;
  u_xlat40 = (x_1259 * x_1260);
  let x_1262 : f32 = u_xlat36;
  let x_1263 : f32 = u_xlat36;
  u_xlat36 = (x_1262 * x_1263);
  let x_1265 : f32 = u_xlat40;
  u_xlat40 = max(x_1265, 0.100000001f);
  let x_1268 : f32 = u_xlat36;
  let x_1269 : f32 = u_xlat40;
  u_xlat36 = (x_1268 * x_1269);
  let x_1271 : f32 = u_xlat41;
  let x_1272 : f32 = u_xlat36;
  u_xlat36 = (x_1271 * x_1272);
  let x_1274 : f32 = u_xlat29;
  let x_1275 : f32 = u_xlat36;
  u_xlat36 = (x_1274 / x_1275);
  let x_1277 : f32 = u_xlat36;
  let x_1281 : vec4<f32> = u_xlat4;
  let x_1283 : vec3<f32> = ((vec3<f32>(x_1277, x_1277, x_1277) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1284 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
  let x_1286 : vec4<f32> = u_xlat7;
  let x_1288 : vec4<f32> = u_xlat8;
  let x_1290 : vec3<f32> = (vec3<f32>(x_1286.x, x_1286.y, x_1286.z) * vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1295 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1297 : f32 = x_145.unity_LightData.y;
  u_xlat36 = min(x_1295, x_1297);
  let x_1299 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1299));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1311 : u32 = u_xlatu_loop_1;
    let x_1312 : u32 = u_xlatu36;
    if ((x_1311 < x_1312)) {
    } else {
      break;
    }
    let x_1315 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1315 >> 2u);
    let x_1318 : u32 = u_xlatu_loop_1;
    u_xlati17 = bitcast<i32>((x_1318 & 3u));
    let x_1321 : u32 = u_xlatu5;
    let x_1324 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1321)];
    let x_1334 : i32 = u_xlati17;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1339 : vec4<u32> = indexable[x_1334];
    u_xlat5.x = dot(x_1324, bitcast<vec4<f32>>(x_1339));
    let x_1345 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1345);
    let x_1348 : vec3<f32> = vs_INTERP0;
    let x_1360 : i32 = u_xlati5;
    let x_1362 : vec4<f32> = x_1359.x_AdditionalLightsPosition[x_1360];
    let x_1365 : i32 = u_xlati5;
    let x_1367 : vec4<f32> = x_1359.x_AdditionalLightsPosition[x_1365];
    u_xlat21 = ((-(x_1348) * vec3<f32>(x_1362.w, x_1362.w, x_1362.w)) + vec3<f32>(x_1367.x, x_1367.y, x_1367.z));
    let x_1370 : vec3<f32> = u_xlat21;
    let x_1371 : vec3<f32> = u_xlat21;
    u_xlat17.x = dot(x_1370, x_1371);
    let x_1375 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1375, 6.10351562e-05f);
    let x_1380 : f32 = u_xlat17.x;
    u_xlat30 = inverseSqrt(x_1380);
    let x_1383 : f32 = u_xlat30;
    let x_1385 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1383, x_1383, x_1383) * x_1385);
    let x_1388 : f32 = u_xlat17.x;
    u_xlat42 = (1.0f / x_1388);
    let x_1391 : f32 = u_xlat17.x;
    let x_1392 : i32 = u_xlati5;
    let x_1394 : f32 = x_1359.x_AdditionalLightsAttenuation[x_1392].x;
    u_xlat17.x = (x_1391 * x_1394);
    let x_1398 : f32 = u_xlat17.x;
    let x_1401 : f32 = u_xlat17.x;
    u_xlat17.x = ((-(x_1398) * x_1401) + 1.0f);
    let x_1406 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1406, 0.0f);
    let x_1410 : f32 = u_xlat17.x;
    let x_1412 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1410 * x_1412);
    let x_1416 : f32 = u_xlat17.x;
    let x_1417 : f32 = u_xlat42;
    u_xlat17.x = (x_1416 * x_1417);
    let x_1420 : i32 = u_xlati5;
    let x_1422 : vec4<f32> = x_1359.x_AdditionalLightsSpotDir[x_1420];
    let x_1424 : vec3<f32> = u_xlat10;
    u_xlat42 = dot(vec3<f32>(x_1422.x, x_1422.y, x_1422.z), x_1424);
    let x_1426 : f32 = u_xlat42;
    let x_1427 : i32 = u_xlati5;
    let x_1429 : f32 = x_1359.x_AdditionalLightsAttenuation[x_1427].z;
    let x_1431 : i32 = u_xlati5;
    let x_1433 : f32 = x_1359.x_AdditionalLightsAttenuation[x_1431].w;
    u_xlat42 = ((x_1426 * x_1429) + x_1433);
    let x_1435 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1435, 0.0f, 1.0f);
    let x_1437 : f32 = u_xlat42;
    let x_1438 : f32 = u_xlat42;
    u_xlat42 = (x_1437 * x_1438);
    let x_1441 : f32 = u_xlat17.x;
    let x_1442 : f32 = u_xlat42;
    u_xlat17.x = (x_1441 * x_1442);
    let x_1446 : f32 = u_xlat18;
    let x_1448 : i32 = u_xlati5;
    let x_1450 : vec4<f32> = x_1359.x_AdditionalLightsColor[x_1448];
    u_xlat11 = (vec3<f32>(x_1446, x_1446, x_1446) * vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
    let x_1453 : vec3<f32> = u_xlat14;
    let x_1454 : vec3<f32> = u_xlat10;
    u_xlat5.x = dot(x_1453, x_1454);
    let x_1458 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1458, 0.0f, 1.0f);
    let x_1462 : f32 = u_xlat5.x;
    let x_1464 : f32 = u_xlat17.x;
    u_xlat5.x = (x_1462 * x_1464);
    let x_1467 : vec4<f32> = u_xlat5;
    let x_1469 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1467.x, x_1467.x, x_1467.x) * x_1469);
    let x_1471 : vec3<f32> = u_xlat21;
    let x_1472 : f32 = u_xlat30;
    let x_1475 : vec3<f32> = u_xlat1;
    u_xlat21 = ((x_1471 * vec3<f32>(x_1472, x_1472, x_1472)) + x_1475);
    let x_1477 : vec3<f32> = u_xlat21;
    let x_1478 : vec3<f32> = u_xlat21;
    u_xlat5.x = dot(x_1477, x_1478);
    let x_1482 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1482, 1.17549435e-37f);
    let x_1486 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_1486);
    let x_1489 : vec4<f32> = u_xlat5;
    let x_1491 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1489.x, x_1489.x, x_1489.x) * x_1491);
    let x_1493 : vec3<f32> = u_xlat14;
    let x_1494 : vec3<f32> = u_xlat21;
    u_xlat5.x = dot(x_1493, x_1494);
    let x_1498 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1498, 0.0f, 1.0f);
    let x_1501 : vec3<f32> = u_xlat10;
    let x_1502 : vec3<f32> = u_xlat21;
    u_xlat5.y = dot(x_1501, x_1502);
    let x_1506 : f32 = u_xlat5.y;
    u_xlat5.y = clamp(x_1506, 0.0f, 1.0f);
    let x_1509 : vec4<f32> = u_xlat5;
    let x_1511 : vec4<f32> = u_xlat5;
    let x_1513 : vec2<f32> = (vec2<f32>(x_1509.x, x_1509.y) * vec2<f32>(x_1511.x, x_1511.y));
    let x_1514 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1513.x, x_1513.y, x_1514.z, x_1514.w);
    let x_1517 : f32 = u_xlat5.x;
    let x_1519 : f32 = u_xlat9.x;
    u_xlat5.x = ((x_1517 * x_1519) + 1.000010014f);
    let x_1524 : f32 = u_xlat5.x;
    let x_1526 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1524 * x_1526);
    let x_1530 : f32 = u_xlat5.y;
    u_xlat17.x = max(x_1530, 0.100000001f);
    let x_1534 : f32 = u_xlat17.x;
    let x_1536 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1534 * x_1536);
    let x_1539 : f32 = u_xlat41;
    let x_1541 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1539 * x_1541);
    let x_1544 : f32 = u_xlat29;
    let x_1546 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1544 / x_1546);
    let x_1549 : vec4<f32> = u_xlat5;
    let x_1552 : vec4<f32> = u_xlat4;
    u_xlat21 = ((vec3<f32>(x_1549.x, x_1549.x, x_1549.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1552.x, x_1552.y, x_1552.z));
    let x_1555 : vec3<f32> = u_xlat21;
    let x_1556 : vec3<f32> = u_xlat11;
    let x_1558 : vec4<f32> = u_xlat8;
    let x_1560 : vec3<f32> = ((x_1555 * x_1556) + vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
    let x_1561 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1561.w);

    continuing {
      let x_1563 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1563 + bitcast<u32>(1i));
    }
  }
  let x_1565 : vec3<f32> = u_xlat15;
  let x_1566 : vec4<f32> = u_xlat6;
  let x_1569 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1565 * vec3<f32>(x_1566.x, x_1566.x, x_1566.x)) + vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
  let x_1572 : vec4<f32> = u_xlat8;
  let x_1574 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1572.x, x_1572.y, x_1572.z) + x_1574);
  let x_1576 : vec4<f32> = vs_INTERP4;
  let x_1578 : vec3<f32> = u_xlat0;
  let x_1580 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1576.w, x_1576.w, x_1576.w) * x_1578) + x_1580);
  let x_1583 : f32 = u_xlat3.x;
  let x_1585 : f32 = u_xlat3.x;
  u_xlat36 = (x_1583 * -(x_1585));
  let x_1588 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1588);
  let x_1590 : vec3<f32> = u_xlat0;
  let x_1593 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_1590 + -(vec3<f32>(x_1593.x, x_1593.y, x_1593.z)));
  let x_1599 : f32 = u_xlat36;
  let x_1601 : vec3<f32> = u_xlat0;
  let x_1604 : vec4<f32> = x_90.unity_FogColor;
  let x_1606 : vec3<f32> = ((vec3<f32>(x_1599, x_1599, x_1599) * x_1601) + vec3<f32>(x_1604.x, x_1604.y, x_1604.z));
  let x_1607 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1607.w);
  let x_1609 : bool = u_xlatb2;
  let x_1610 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1610, x_1609);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP5 = vs_INTERP5_param;
  main_1();
  return main_out(SV_Target0);
}

