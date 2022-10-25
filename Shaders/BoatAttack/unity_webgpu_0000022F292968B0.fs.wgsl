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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_54 : UnityPerDraw;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_134 : PGlobals;

@group(1) @binding(4) var<uniform> x_144 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_238 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1128 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb12 : vec2<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat18 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlatb2 : bool;
  var u_xlatb14 : bool;
  var u_xlatb0 : bool;
  var x_357 : f32;
  var u_xlat14 : f32;
  var u_xlat26 : vec2<f32>;
  var x_406 : f32;
  var u_xlat24 : f32;
  var x_501 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlatb30 : bool;
  var u_xlatb42 : bool;
  var u_xlat42 : f32;
  var u_xlatu37 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati30 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0 = dot(x_30, x_31);
  let x_33 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_33);
  let x_35 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_35);
  let x_44 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_44);
  let x_59 : f32 = x_54.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_59 >= 0.0f);
  let x_66 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_66);
  let x_71 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_71);
  let x_75 : f32 = u_xlat12.y;
  let x_77 : f32 = u_xlat12.x;
  u_xlat12.x = (x_75 * x_77);
  let x_81 : vec3<f32> = vs_INTERP1;
  let x_83 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_81.z, x_81.x, x_81.y) * vec3<f32>(x_83.y, x_83.z, x_83.x));
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  let x_91 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_86.y, x_86.z, x_86.x) * vec3<f32>(x_88.z, x_88.x, x_88.y)) + -(x_91));
  let x_94 : vec3<f32> = u_xlat12;
  let x_96 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_94.x, x_94.x, x_94.x) * x_96);
  let x_98 : f32 = u_xlat0;
  let x_100 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : f32 = u_xlat0;
  let x_105 : vec4<f32> = vs_INTERP2;
  let x_107 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat12;
  let x_112 : f32 = u_xlat0;
  let x_114 : vec3<f32> = (x_111 * vec3<f32>(x_112, x_112, x_112));
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_130 : vec4<f32> = vs_INTERP3;
  let x_137 : f32 = x_134.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_130.x, x_130.y), x_137);
  u_xlat4 = x_138;
  let x_140 : vec4<f32> = u_xlat4;
  let x_147 : vec4<f32> = x_144.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_156 : vec4<f32> = vs_INTERP3;
  let x_159 : f32 = x_134.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_156.x, x_156.y), x_159);
  u_xlat6 = vec4<f32>(x_160.w, x_160.x, x_160.y, x_160.z);
  let x_163 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_163.y, x_163.z, x_163.w, x_163.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_170 : vec4<f32> = u_xlat7;
  let x_171 : vec4<f32> = u_xlat7;
  u_xlat0 = dot(x_170, x_171);
  let x_173 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_173);
  let x_176 : f32 = u_xlat0;
  let x_178 : vec4<f32> = u_xlat7;
  u_xlat18 = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_183 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_183 * 200.0f);
  let x_186 : f32 = u_xlat0;
  u_xlat0 = min(x_186, 1.0f);
  let x_188 : f32 = u_xlat0;
  let x_190 : vec4<f32> = u_xlat4;
  let x_192 : vec3<f32> = (vec3<f32>(x_188, x_188, x_188) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec3<f32> = u_xlat18;
  let x_199 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.y, x_197.y, x_197.y));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec3<f32> = u_xlat18;
  let x_204 : vec4<f32> = u_xlat2;
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = u_xlat18;
  let x_214 : vec3<f32> = u_xlat1;
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_212.z, x_212.z, x_212.z) * x_214) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec3<f32> = u_xlat1;
  let x_220 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_219, x_220);
  let x_222 : f32 = u_xlat0;
  u_xlat0 = max(x_222, 1.17549435e-37f);
  let x_225 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat0;
  let x_229 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_227, x_227, x_227) * x_229);
  let x_232 : vec3<f32> = vs_INTERP0;
  let x_241 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][1i];
  let x_243 : vec3<f32> = (vec3<f32>(x_232.y, x_232.y, x_232.y) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][0i];
  let x_249 : vec3<f32> = vs_INTERP0;
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_259 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][2i];
  let x_261 : vec3<f32> = vs_INTERP0;
  let x_264 : vec4<f32> = u_xlat2;
  let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.z, x_261.z, x_261.z)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat2;
  let x_272 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][3i];
  let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : vec4<f32> = u_xlat2;
  let x_279 : vec2<f32> = vec2<f32>(x_278.x, x_278.y);
  let x_281 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_279.x, x_279.y, x_281);
  let x_293 : vec3<f32> = txVec0;
  let x_295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_293.xy, x_293.z);
  u_xlat0 = x_295;
  let x_299 : f32 = x_238.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_299) + 1.0f);
  let x_302 : f32 = u_xlat0;
  let x_304 : f32 = x_238.x_MainLightShadowParams.x;
  let x_306 : f32 = u_xlat37;
  u_xlat0 = ((x_302 * x_304) + x_306);
  let x_310 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_310);
  let x_314 : f32 = u_xlat2.z;
  u_xlatb14 = (x_314 >= 1.0f);
  let x_316 : bool = u_xlatb14;
  let x_317 : bool = u_xlatb2;
  u_xlatb2 = (x_316 | x_317);
  let x_319 : bool = u_xlatb2;
  let x_320 : f32 = u_xlat0;
  u_xlat0 = select(x_320, 1.0f, x_319);
  let x_322 : vec3<f32> = u_xlat1;
  let x_324 : vec4<f32> = x_134.x_MainLightPosition;
  u_xlat1.x = dot(x_322, -(vec3<f32>(x_324.x, x_324.y, x_324.z)));
  let x_330 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_330, 0.0f, 1.0f);
  let x_333 : f32 = u_xlat0;
  let x_337 : vec4<f32> = x_134.x_MainLightColor;
  let x_339 : vec3<f32> = (vec3<f32>(x_333, x_333, x_333) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec3<f32> = u_xlat1;
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_342.x, x_342.x, x_342.x) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec3<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_347 * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_353 : f32 = u_xlat4.w;
  u_xlatb0 = (x_353 >= 0.400000006f);
  let x_356 : bool = u_xlatb0;
  if (x_356) {
    let x_361 : f32 = u_xlat4.w;
    x_357 = x_361;
  } else {
    x_357 = 0.0f;
  }
  let x_363 : f32 = x_357;
  u_xlat0 = x_363;
  let x_365 : f32 = u_xlat4.w;
  u_xlat2.x = (x_365 + -0.400000006f);
  let x_371 : f32 = u_xlat4.w;
  u_xlat14 = dpdxCoarse(x_371);
  let x_376 : f32 = u_xlat4.w;
  u_xlat26.x = dpdyCoarse(x_376);
  let x_380 : f32 = u_xlat26.x;
  let x_382 : f32 = u_xlat14;
  u_xlat14 = (abs(x_380) + abs(x_382));
  let x_385 : f32 = u_xlat14;
  u_xlat14 = max(x_385, 0.0001f);
  let x_389 : f32 = u_xlat2.x;
  let x_390 : f32 = u_xlat14;
  u_xlat2.x = (x_389 / x_390);
  let x_394 : f32 = u_xlat2.x;
  u_xlat2.x = (x_394 + 0.5f);
  let x_399 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_399, 0.0f, 1.0f);
  let x_403 : f32 = x_134.x_AlphaToMaskAvailable;
  u_xlatb14 = !((x_403 == 0.0f));
  let x_405 : bool = u_xlatb14;
  if (x_405) {
    let x_410 : f32 = u_xlat2.x;
    x_406 = x_410;
  } else {
    let x_412 : f32 = u_xlat0;
    x_406 = x_412;
  }
  let x_413 : f32 = x_406;
  u_xlat0 = x_413;
  let x_414 : f32 = u_xlat0;
  u_xlat2.x = (x_414 + -0.0001f);
  let x_419 : f32 = u_xlat2.x;
  u_xlatb2 = (x_419 < 0.0f);
  let x_421 : bool = u_xlatb2;
  if (((select(0i, 1i, x_421) * -1i) != 0i)) {
    discard;
  }
  let x_429 : vec3<f32> = u_xlat12;
  let x_430 : vec3<f32> = u_xlat18;
  u_xlat12 = (x_429 * vec3<f32>(x_430.y, x_430.y, x_430.y));
  let x_433 : vec3<f32> = u_xlat18;
  let x_435 : vec4<f32> = vs_INTERP2;
  let x_438 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_433.x, x_433.x, x_433.x) * vec3<f32>(x_435.x, x_435.y, x_435.z)) + x_438);
  let x_440 : vec3<f32> = u_xlat18;
  let x_442 : vec3<f32> = vs_INTERP1;
  let x_444 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_440.z, x_440.z, x_440.z) * x_442) + x_444);
  let x_446 : vec3<f32> = u_xlat12;
  let x_447 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_446, x_447);
  let x_451 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_451);
  let x_454 : vec3<f32> = u_xlat12;
  let x_455 : vec4<f32> = u_xlat2;
  let x_457 : vec3<f32> = (x_454 * vec3<f32>(x_455.x, x_455.x, x_455.x));
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_462 : f32 = x_134.unity_OrthoParams.w;
  u_xlatb12.x = (x_462 == 0.0f);
  let x_465 : vec3<f32> = vs_INTERP0;
  let x_470 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  let x_471 : vec3<f32> = (-(x_465) + x_470);
  let x_472 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_471.x, x_472.y, x_471.y, x_471.z);
  let x_475 : vec4<f32> = u_xlat2;
  let x_477 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_475.x, x_475.z, x_475.w), vec3<f32>(x_477.x, x_477.z, x_477.w));
  let x_480 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_480);
  let x_482 : f32 = u_xlat24;
  let x_484 : vec4<f32> = u_xlat2;
  let x_486 : vec3<f32> = (vec3<f32>(x_482, x_482, x_482) * vec3<f32>(x_484.x, x_484.z, x_484.w));
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_486.x, x_487.y, x_486.y, x_486.z);
  let x_491 : f32 = x_134.unity_MatrixV[0i].z;
  u_xlat4.x = x_491;
  let x_494 : f32 = x_134.unity_MatrixV[1i].z;
  u_xlat4.y = x_494;
  let x_497 : f32 = x_134.unity_MatrixV[2i].z;
  u_xlat4.z = x_497;
  let x_500 : bool = u_xlatb12.x;
  if (x_500) {
    let x_504 : vec4<f32> = u_xlat2;
    x_501 = vec3<f32>(x_504.x, x_504.z, x_504.w);
  } else {
    let x_507 : vec4<f32> = u_xlat4;
    x_501 = vec3<f32>(x_507.x, x_507.y, x_507.z);
  }
  let x_509 : vec3<f32> = x_501;
  u_xlat12 = x_509;
  let x_511 : f32 = vs_INTERP0.y;
  let x_513 : f32 = x_134.unity_MatrixV[1i].z;
  u_xlat2.x = (x_511 * x_513);
  let x_517 : f32 = x_134.unity_MatrixV[0i].z;
  let x_519 : f32 = vs_INTERP0.x;
  let x_522 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_517 * x_519) + x_522);
  let x_526 : f32 = x_134.unity_MatrixV[2i].z;
  let x_528 : f32 = vs_INTERP0.z;
  let x_531 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_526 * x_528) + x_531);
  let x_535 : f32 = u_xlat2.x;
  let x_537 : f32 = x_134.unity_MatrixV[3i].z;
  u_xlat2.x = (x_535 + x_537);
  let x_541 : f32 = u_xlat2.x;
  let x_544 : f32 = x_134.x_ProjectionParams.y;
  u_xlat2.x = (-(x_541) + -(x_544));
  let x_549 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_549, 0.0f);
  let x_553 : f32 = u_xlat2.x;
  let x_556 : f32 = x_134.unity_FogParams.x;
  u_xlat2.x = (x_553 * x_556);
  u_xlat3.w = 1.0f;
  let x_562 : vec4<f32> = x_54.unity_SHAr;
  let x_563 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_562, x_563);
  let x_568 : vec4<f32> = x_54.unity_SHAg;
  let x_569 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_568, x_569);
  let x_574 : vec4<f32> = x_54.unity_SHAb;
  let x_575 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_574, x_575);
  let x_578 : vec4<f32> = u_xlat3;
  let x_580 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_578.y, x_578.z, x_578.z, x_578.x) * vec4<f32>(x_580.x, x_580.y, x_580.z, x_580.z));
  let x_586 : vec4<f32> = x_54.unity_SHBr;
  let x_587 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_586, x_587);
  let x_592 : vec4<f32> = x_54.unity_SHBg;
  let x_593 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_592, x_593);
  let x_598 : vec4<f32> = x_54.unity_SHBb;
  let x_599 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_598, x_599);
  let x_603 : f32 = u_xlat3.y;
  let x_605 : f32 = u_xlat3.y;
  u_xlat26.x = (x_603 * x_605);
  let x_609 : f32 = u_xlat3.x;
  let x_611 : f32 = u_xlat3.x;
  let x_614 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_609 * x_611) + -(x_614));
  let x_620 : vec4<f32> = x_54.unity_SHC;
  let x_622 : vec2<f32> = u_xlat26;
  let x_625 : vec4<f32> = u_xlat8;
  u_xlat18 = ((vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_622.x, x_622.x, x_622.x)) + vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec4<f32> = u_xlat4;
  let x_630 : vec3<f32> = u_xlat18;
  let x_631 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) + x_630);
  let x_632 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat4;
  let x_637 : vec3<f32> = max(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_638 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_642 : vec4<f32> = x_134.x_ScaledScreenParams;
  let x_643 : vec2<f32> = vec2<f32>(x_642.x, x_642.y);
  u_xlat26 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_643.x, x_643.y));
  let x_648 : vec2<f32> = u_xlat26;
  let x_649 : vec4<f32> = hlslcc_FragCoord;
  let x_651 : vec2<f32> = (x_648 * vec2<f32>(x_649.x, x_649.y));
  let x_652 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
  let x_655 : f32 = u_xlat7.y;
  let x_658 : f32 = x_134.x_ScaleBiasRt.x;
  let x_661 : f32 = x_134.x_ScaleBiasRt.y;
  u_xlat26.x = ((x_655 * x_658) + x_661);
  let x_665 : f32 = u_xlat26.x;
  u_xlat7.z = (-(x_665) + 1.0f);
  let x_670 : f32 = u_xlat6.x;
  u_xlat6.x = x_670;
  let x_673 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_673, 0.0f, 1.0f);
  let x_676 : f32 = u_xlat0;
  u_xlat0 = min(x_676, 1.0f);
  let x_678 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_678 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_683 : f32 = u_xlat6.x;
  u_xlat26.x = (-(x_683) + 1.0f);
  let x_689 : f32 = u_xlat26.x;
  let x_691 : f32 = u_xlat26.x;
  u_xlat38 = (x_689 * x_691);
  let x_693 : f32 = u_xlat38;
  u_xlat38 = max(x_693, 0.0078125f);
  let x_697 : f32 = u_xlat38;
  let x_698 : f32 = u_xlat38;
  u_xlat39 = (x_697 * x_698);
  let x_702 : f32 = u_xlat6.x;
  u_xlat40 = (x_702 + 0.040000021f);
  let x_705 : f32 = u_xlat40;
  u_xlat40 = min(x_705, 1.0f);
  let x_708 : f32 = u_xlat38;
  u_xlat41 = ((x_708 * 4.0f) + 2.0f);
  let x_717 : vec4<f32> = u_xlat7;
  let x_720 : f32 = x_134.x_GlobalMipBias.x;
  let x_721 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_717.x, x_717.z), x_720);
  u_xlat6.x = x_721.x;
  let x_725 : f32 = u_xlat6.x;
  u_xlat18.x = (x_725 + -1.0f);
  let x_730 : f32 = x_134.x_AmbientOcclusionParam.w;
  let x_732 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_730 * x_732) + 1.0f);
  let x_737 : f32 = u_xlat6.x;
  let x_739 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_737, x_739);
  let x_744 : vec4<f32> = vs_INTERP9;
  let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
  let x_747 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_745.x, x_745.y, x_747);
  let x_755 : vec3<f32> = txVec1;
  let x_757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_755.xy, x_755.z);
  u_xlat30 = x_757;
  let x_758 : f32 = u_xlat30;
  let x_760 : f32 = x_238.x_MainLightShadowParams.x;
  let x_762 : f32 = u_xlat37;
  u_xlat37 = ((x_758 * x_760) + x_762);
  let x_766 : f32 = vs_INTERP9.z;
  u_xlatb30 = (0.0f >= x_766);
  let x_770 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_770 >= 1.0f);
  let x_772 : bool = u_xlatb42;
  let x_773 : bool = u_xlatb30;
  u_xlatb30 = (x_772 | x_773);
  let x_775 : bool = u_xlatb30;
  let x_776 : f32 = u_xlat37;
  u_xlat37 = select(x_776, 1.0f, x_775);
  let x_778 : vec3<f32> = vs_INTERP0;
  let x_780 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  let x_782 : vec3<f32> = (x_778 + -(x_780));
  let x_783 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat7;
  let x_787 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_785.x, x_785.y, x_785.z), vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : f32 = u_xlat30;
  let x_792 : f32 = x_238.x_MainLightShadowParams.z;
  let x_795 : f32 = x_238.x_MainLightShadowParams.w;
  u_xlat30 = ((x_790 * x_792) + x_795);
  let x_797 : f32 = u_xlat30;
  u_xlat30 = clamp(x_797, 0.0f, 1.0f);
  let x_800 : f32 = u_xlat37;
  u_xlat42 = (-(x_800) + 1.0f);
  let x_803 : f32 = u_xlat30;
  let x_804 : f32 = u_xlat42;
  let x_806 : f32 = u_xlat37;
  u_xlat37 = ((x_803 * x_804) + x_806);
  let x_808 : vec3<f32> = u_xlat18;
  let x_811 : vec4<f32> = x_134.x_MainLightColor;
  let x_813 : vec3<f32> = (vec3<f32>(x_808.x, x_808.x, x_808.x) * vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_816 : vec3<f32> = u_xlat12;
  let x_818 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_816), vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : f32 = u_xlat30;
  let x_822 : f32 = u_xlat30;
  u_xlat30 = (x_821 + x_822);
  let x_824 : vec4<f32> = u_xlat3;
  let x_826 : f32 = u_xlat30;
  let x_830 : vec3<f32> = u_xlat12;
  let x_832 : vec3<f32> = ((vec3<f32>(x_824.x, x_824.y, x_824.z) * -(vec3<f32>(x_826, x_826, x_826))) + -(x_830));
  let x_833 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat3;
  let x_837 : vec3<f32> = u_xlat12;
  u_xlat30 = dot(vec3<f32>(x_835.x, x_835.y, x_835.z), x_837);
  let x_839 : f32 = u_xlat30;
  u_xlat30 = clamp(x_839, 0.0f, 1.0f);
  let x_841 : f32 = u_xlat30;
  u_xlat30 = (-(x_841) + 1.0f);
  let x_844 : f32 = u_xlat30;
  let x_845 : f32 = u_xlat30;
  u_xlat30 = (x_844 * x_845);
  let x_847 : f32 = u_xlat30;
  let x_848 : f32 = u_xlat30;
  u_xlat30 = (x_847 * x_848);
  let x_851 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_851) * 0.699999988f) + 1.700000048f);
  let x_858 : f32 = u_xlat26.x;
  let x_859 : f32 = u_xlat42;
  u_xlat26.x = (x_858 * x_859);
  let x_863 : f32 = u_xlat26.x;
  u_xlat26.x = (x_863 * 6.0f);
  let x_875 : vec4<f32> = u_xlat8;
  let x_878 : f32 = u_xlat26.x;
  let x_879 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_875.x, x_875.y, x_875.z), x_878);
  u_xlat8 = x_879;
  let x_881 : f32 = u_xlat8.w;
  u_xlat26.x = (x_881 + -1.0f);
  let x_885 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_887 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_885 * x_887) + 1.0f);
  let x_892 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_892, 0.0f);
  let x_896 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_896);
  let x_900 : f32 = u_xlat26.x;
  let x_902 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_900 * x_902);
  let x_906 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_906);
  let x_910 : f32 = u_xlat26.x;
  let x_912 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_910 * x_912);
  let x_915 : vec4<f32> = u_xlat8;
  let x_917 : vec2<f32> = u_xlat26;
  let x_919 : vec3<f32> = (vec3<f32>(x_915.x, x_915.y, x_915.z) * vec3<f32>(x_917.x, x_917.x, x_917.x));
  let x_920 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : f32 = u_xlat38;
  let x_924 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_922, x_922) * vec2<f32>(x_924, x_924)) + vec2<f32>(-1.0f, 1.0f));
  let x_930 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_930);
  let x_932 : f32 = u_xlat40;
  u_xlat40 = (x_932 + -0.039999999f);
  let x_935 : f32 = u_xlat30;
  let x_936 : f32 = u_xlat40;
  u_xlat40 = ((x_935 * x_936) + 0.039999999f);
  let x_940 : f32 = u_xlat38;
  let x_941 : f32 = u_xlat40;
  u_xlat38 = (x_940 * x_941);
  let x_943 : f32 = u_xlat38;
  let x_945 : vec4<f32> = u_xlat8;
  let x_947 : vec3<f32> = (vec3<f32>(x_943, x_943, x_943) * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec4<f32> = u_xlat4;
  let x_952 : vec3<f32> = u_xlat5;
  let x_954 : vec4<f32> = u_xlat8;
  let x_956 : vec3<f32> = ((vec3<f32>(x_950.x, x_950.y, x_950.z) * x_952) + vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_957 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : f32 = u_xlat37;
  let x_961 : f32 = x_54.unity_LightData.z;
  u_xlat37 = (x_959 * x_961);
  let x_963 : vec4<f32> = u_xlat3;
  let x_966 : vec4<f32> = x_134.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_963.x, x_963.y, x_963.z), vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : f32 = u_xlat38;
  u_xlat38 = clamp(x_969, 0.0f, 1.0f);
  let x_971 : f32 = u_xlat37;
  let x_972 : f32 = u_xlat38;
  u_xlat37 = (x_971 * x_972);
  let x_974 : f32 = u_xlat37;
  let x_976 : vec4<f32> = u_xlat7;
  let x_978 : vec3<f32> = (vec3<f32>(x_974, x_974, x_974) * vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
  let x_981 : vec3<f32> = u_xlat12;
  let x_983 : vec4<f32> = x_134.x_MainLightPosition;
  let x_985 : vec3<f32> = (x_981 + vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec4<f32> = u_xlat8;
  let x_990 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_988.x, x_988.y, x_988.z), vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_993 : f32 = u_xlat37;
  u_xlat37 = max(x_993, 1.17549435e-37f);
  let x_995 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_995);
  let x_997 : f32 = u_xlat37;
  let x_999 : vec4<f32> = u_xlat8;
  let x_1001 : vec3<f32> = (vec3<f32>(x_997, x_997, x_997) * vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec4<f32> = u_xlat3;
  let x_1006 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1004.x, x_1004.y, x_1004.z), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1009, 0.0f, 1.0f);
  let x_1012 : vec4<f32> = x_134.x_MainLightPosition;
  let x_1014 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1012.x, x_1012.y, x_1012.z), vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1017, 0.0f, 1.0f);
  let x_1019 : f32 = u_xlat37;
  let x_1020 : f32 = u_xlat37;
  u_xlat37 = (x_1019 * x_1020);
  let x_1022 : f32 = u_xlat37;
  let x_1024 : f32 = u_xlat26.x;
  u_xlat37 = ((x_1022 * x_1024) + 1.000010014f);
  let x_1028 : f32 = u_xlat38;
  let x_1029 : f32 = u_xlat38;
  u_xlat38 = (x_1028 * x_1029);
  let x_1031 : f32 = u_xlat37;
  let x_1032 : f32 = u_xlat37;
  u_xlat37 = (x_1031 * x_1032);
  let x_1034 : f32 = u_xlat38;
  u_xlat38 = max(x_1034, 0.100000001f);
  let x_1037 : f32 = u_xlat37;
  let x_1038 : f32 = u_xlat38;
  u_xlat37 = (x_1037 * x_1038);
  let x_1040 : f32 = u_xlat41;
  let x_1041 : f32 = u_xlat37;
  u_xlat37 = (x_1040 * x_1041);
  let x_1043 : f32 = u_xlat39;
  let x_1044 : f32 = u_xlat37;
  u_xlat37 = (x_1043 / x_1044);
  let x_1046 : f32 = u_xlat37;
  let x_1050 : vec3<f32> = u_xlat5;
  let x_1051 : vec3<f32> = ((vec3<f32>(x_1046, x_1046, x_1046) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1050);
  let x_1052 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat7;
  let x_1056 : vec4<f32> = u_xlat8;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1054.x, x_1054.y, x_1054.z) * vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1063 : f32 = x_134.x_AdditionalLightsCount.x;
  let x_1065 : f32 = x_54.unity_LightData.y;
  u_xlat37 = min(x_1063, x_1065);
  let x_1069 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_1069));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1081 : u32 = u_xlatu_loop_1;
    let x_1082 : u32 = u_xlatu37;
    if ((x_1081 < x_1082)) {
    } else {
      break;
    }
    let x_1085 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1085 >> 2u);
    let x_1089 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1089 & 3u));
    let x_1092 : u32 = u_xlatu40;
    let x_1095 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1092)];
    let x_1105 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1110 : vec4<u32> = indexable[x_1105];
    u_xlat40 = dot(x_1095, bitcast<vec4<f32>>(x_1110));
    let x_1114 : f32 = u_xlat40;
    u_xlati40 = i32(x_1114);
    let x_1117 : vec3<f32> = vs_INTERP0;
    let x_1129 : i32 = u_xlati40;
    let x_1131 : vec4<f32> = x_1128.x_AdditionalLightsPosition[x_1129];
    let x_1134 : i32 = u_xlati40;
    let x_1136 : vec4<f32> = x_1128.x_AdditionalLightsPosition[x_1134];
    u_xlat9 = ((-(x_1117) * vec3<f32>(x_1131.w, x_1131.w, x_1131.w)) + vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
    let x_1139 : vec3<f32> = u_xlat9;
    let x_1140 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1139, x_1140);
    let x_1142 : f32 = u_xlat30;
    u_xlat30 = max(x_1142, 6.10351562e-05f);
    let x_1145 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1145);
    let x_1148 : f32 = u_xlat42;
    let x_1150 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1148, x_1148, x_1148) * x_1150);
    let x_1153 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_1153);
    let x_1155 : f32 = u_xlat30;
    let x_1156 : i32 = u_xlati40;
    let x_1158 : f32 = x_1128.x_AdditionalLightsAttenuation[x_1156].x;
    u_xlat30 = (x_1155 * x_1158);
    let x_1160 : f32 = u_xlat30;
    let x_1162 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1160) * x_1162) + 1.0f);
    let x_1165 : f32 = u_xlat30;
    u_xlat30 = max(x_1165, 0.0f);
    let x_1167 : f32 = u_xlat30;
    let x_1168 : f32 = u_xlat30;
    u_xlat30 = (x_1167 * x_1168);
    let x_1170 : f32 = u_xlat30;
    let x_1171 : f32 = u_xlat43;
    u_xlat30 = (x_1170 * x_1171);
    let x_1173 : i32 = u_xlati40;
    let x_1175 : vec4<f32> = x_1128.x_AdditionalLightsSpotDir[x_1173];
    let x_1177 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1175.x, x_1175.y, x_1175.z), x_1177);
    let x_1179 : f32 = u_xlat43;
    let x_1180 : i32 = u_xlati40;
    let x_1182 : f32 = x_1128.x_AdditionalLightsAttenuation[x_1180].z;
    let x_1184 : i32 = u_xlati40;
    let x_1186 : f32 = x_1128.x_AdditionalLightsAttenuation[x_1184].w;
    u_xlat43 = ((x_1179 * x_1182) + x_1186);
    let x_1188 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1188, 0.0f, 1.0f);
    let x_1190 : f32 = u_xlat43;
    let x_1191 : f32 = u_xlat43;
    u_xlat43 = (x_1190 * x_1191);
    let x_1193 : f32 = u_xlat30;
    let x_1194 : f32 = u_xlat43;
    u_xlat30 = (x_1193 * x_1194);
    let x_1197 : vec3<f32> = u_xlat18;
    let x_1199 : i32 = u_xlati40;
    let x_1201 : vec4<f32> = x_1128.x_AdditionalLightsColor[x_1199];
    u_xlat11 = (vec3<f32>(x_1197.x, x_1197.x, x_1197.x) * vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
    let x_1204 : vec4<f32> = u_xlat3;
    let x_1206 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1204.x, x_1204.y, x_1204.z), x_1206);
    let x_1208 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1208, 0.0f, 1.0f);
    let x_1210 : f32 = u_xlat40;
    let x_1211 : f32 = u_xlat30;
    u_xlat40 = (x_1210 * x_1211);
    let x_1213 : f32 = u_xlat40;
    let x_1215 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1213, x_1213, x_1213) * x_1215);
    let x_1217 : vec3<f32> = u_xlat9;
    let x_1218 : f32 = u_xlat42;
    let x_1221 : vec3<f32> = u_xlat12;
    u_xlat9 = ((x_1217 * vec3<f32>(x_1218, x_1218, x_1218)) + x_1221);
    let x_1223 : vec3<f32> = u_xlat9;
    let x_1224 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(x_1223, x_1224);
    let x_1226 : f32 = u_xlat40;
    u_xlat40 = max(x_1226, 1.17549435e-37f);
    let x_1228 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1228);
    let x_1230 : f32 = u_xlat40;
    let x_1232 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1230, x_1230, x_1230) * x_1232);
    let x_1234 : vec4<f32> = u_xlat3;
    let x_1236 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1234.x, x_1234.y, x_1234.z), x_1236);
    let x_1238 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1238, 0.0f, 1.0f);
    let x_1240 : vec3<f32> = u_xlat10;
    let x_1241 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1240, x_1241);
    let x_1243 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1243, 0.0f, 1.0f);
    let x_1245 : f32 = u_xlat40;
    let x_1246 : f32 = u_xlat40;
    u_xlat40 = (x_1245 * x_1246);
    let x_1248 : f32 = u_xlat40;
    let x_1250 : f32 = u_xlat26.x;
    u_xlat40 = ((x_1248 * x_1250) + 1.000010014f);
    let x_1253 : f32 = u_xlat30;
    let x_1254 : f32 = u_xlat30;
    u_xlat30 = (x_1253 * x_1254);
    let x_1256 : f32 = u_xlat40;
    let x_1257 : f32 = u_xlat40;
    u_xlat40 = (x_1256 * x_1257);
    let x_1259 : f32 = u_xlat30;
    u_xlat30 = max(x_1259, 0.100000001f);
    let x_1261 : f32 = u_xlat40;
    let x_1262 : f32 = u_xlat30;
    u_xlat40 = (x_1261 * x_1262);
    let x_1264 : f32 = u_xlat41;
    let x_1265 : f32 = u_xlat40;
    u_xlat40 = (x_1264 * x_1265);
    let x_1267 : f32 = u_xlat39;
    let x_1268 : f32 = u_xlat40;
    u_xlat40 = (x_1267 / x_1268);
    let x_1270 : f32 = u_xlat40;
    let x_1273 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1270, x_1270, x_1270) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1273);
    let x_1275 : vec3<f32> = u_xlat9;
    let x_1276 : vec3<f32> = u_xlat11;
    let x_1278 : vec4<f32> = u_xlat8;
    let x_1280 : vec3<f32> = ((x_1275 * x_1276) + vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
    let x_1281 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);

    continuing {
      let x_1283 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1283 + bitcast<u32>(1i));
    }
  }
  let x_1285 : vec4<f32> = u_xlat4;
  let x_1287 : vec4<f32> = u_xlat6;
  let x_1290 : vec4<f32> = u_xlat7;
  u_xlat12 = ((vec3<f32>(x_1285.x, x_1285.y, x_1285.z) * vec3<f32>(x_1287.x, x_1287.x, x_1287.x)) + vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1293 : vec4<f32> = u_xlat8;
  let x_1295 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_1293.x, x_1293.y, x_1293.z) + x_1295);
  let x_1297 : vec4<f32> = vs_INTERP4;
  let x_1299 : vec3<f32> = u_xlat1;
  let x_1301 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_1297.w, x_1297.w, x_1297.w) * x_1299) + x_1301);
  let x_1304 : f32 = u_xlat2.x;
  let x_1306 : f32 = u_xlat2.x;
  u_xlat1.x = (x_1304 * -(x_1306));
  let x_1311 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1311);
  let x_1314 : vec3<f32> = u_xlat12;
  let x_1317 : vec4<f32> = x_134.unity_FogColor;
  u_xlat12 = (x_1314 + -(vec3<f32>(x_1317.x, x_1317.y, x_1317.z)));
  let x_1323 : vec3<f32> = u_xlat1;
  let x_1325 : vec3<f32> = u_xlat12;
  let x_1328 : vec4<f32> = x_134.unity_FogColor;
  let x_1330 : vec3<f32> = ((vec3<f32>(x_1323.x, x_1323.x, x_1323.x) * x_1325) + vec3<f32>(x_1328.x, x_1328.y, x_1328.z));
  let x_1331 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
  let x_1333 : bool = u_xlatb14;
  let x_1334 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1334, x_1333);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(5) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

