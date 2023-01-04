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

@group(1) @binding(1) var<uniform> x_1075 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb11 : vec2<bool>;
  var u_xlat11 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat17 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb2 : bool;
  var u_xlatb13 : bool;
  var u_xlatb0 : bool;
  var x_357 : f32;
  var u_xlat13 : f32;
  var u_xlat24 : f32;
  var x_403 : f32;
  var u_xlat22 : f32;
  var x_487 : f32;
  var x_500 : f32;
  var x_512 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat27 : f32;
  var u_xlat38 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu34 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati16 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat19 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
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
  u_xlatb11.x = (0.0f < x_44);
  let x_59 : f32 = x_54.unity_WorldTransformParams.w;
  u_xlatb11.y = (x_59 >= 0.0f);
  let x_66 : bool = u_xlatb11.x;
  u_xlat11.x = select(-1.0f, 1.0f, x_66);
  let x_71 : bool = u_xlatb11.y;
  u_xlat11.y = select(-1.0f, 1.0f, x_71);
  let x_75 : f32 = u_xlat11.y;
  let x_77 : f32 = u_xlat11.x;
  u_xlat11.x = (x_75 * x_77);
  let x_81 : vec3<f32> = vs_INTERP1;
  let x_83 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_81.z, x_81.x, x_81.y) * vec3<f32>(x_83.y, x_83.z, x_83.x));
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  let x_91 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_86.y, x_86.z, x_86.x) * vec3<f32>(x_88.z, x_88.x, x_88.y)) + -(x_91));
  let x_94 : vec3<f32> = u_xlat11;
  let x_96 : vec3<f32> = u_xlat1;
  u_xlat11 = (vec3<f32>(x_94.x, x_94.x, x_94.x) * x_96);
  let x_98 : f32 = u_xlat0;
  let x_100 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : f32 = u_xlat0;
  let x_105 : vec4<f32> = vs_INTERP2;
  let x_107 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat11;
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
  u_xlat17 = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
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
  let x_197 : vec3<f32> = u_xlat17;
  let x_199 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.y, x_197.y, x_197.y));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec3<f32> = u_xlat17;
  let x_204 : vec4<f32> = u_xlat2;
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = u_xlat17;
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
  u_xlat34 = (-(x_299) + 1.0f);
  let x_302 : f32 = u_xlat0;
  let x_304 : f32 = x_238.x_MainLightShadowParams.x;
  let x_306 : f32 = u_xlat34;
  u_xlat0 = ((x_302 * x_304) + x_306);
  let x_310 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_310);
  let x_314 : f32 = u_xlat2.z;
  u_xlatb13 = (x_314 >= 1.0f);
  let x_316 : bool = u_xlatb13;
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
  u_xlat13 = dpdxCoarse(x_371);
  let x_375 : f32 = u_xlat4.w;
  u_xlat24 = dpdyCoarse(x_375);
  let x_377 : f32 = u_xlat24;
  let x_379 : f32 = u_xlat13;
  u_xlat13 = (abs(x_377) + abs(x_379));
  let x_382 : f32 = u_xlat13;
  u_xlat13 = max(x_382, 0.0001f);
  let x_386 : f32 = u_xlat2.x;
  let x_387 : f32 = u_xlat13;
  u_xlat2.x = (x_386 / x_387);
  let x_391 : f32 = u_xlat2.x;
  u_xlat2.x = (x_391 + 0.5f);
  let x_396 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_396, 0.0f, 1.0f);
  let x_400 : f32 = x_134.x_AlphaToMaskAvailable;
  u_xlatb13 = !((x_400 == 0.0f));
  let x_402 : bool = u_xlatb13;
  if (x_402) {
    let x_407 : f32 = u_xlat2.x;
    x_403 = x_407;
  } else {
    let x_409 : f32 = u_xlat0;
    x_403 = x_409;
  }
  let x_410 : f32 = x_403;
  u_xlat0 = x_410;
  let x_411 : f32 = u_xlat0;
  u_xlat2.x = (x_411 + -0.0001f);
  let x_416 : f32 = u_xlat2.x;
  u_xlatb2 = (x_416 < 0.0f);
  let x_418 : bool = u_xlatb2;
  if (((select(0i, 1i, x_418) * -1i) != 0i)) {
    discard;
  }
  let x_426 : vec3<f32> = u_xlat11;
  let x_427 : vec3<f32> = u_xlat17;
  u_xlat11 = (x_426 * vec3<f32>(x_427.y, x_427.y, x_427.y));
  let x_430 : vec3<f32> = u_xlat17;
  let x_432 : vec4<f32> = vs_INTERP2;
  let x_435 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_430.x, x_430.x, x_430.x) * vec3<f32>(x_432.x, x_432.y, x_432.z)) + x_435);
  let x_437 : vec3<f32> = u_xlat17;
  let x_439 : vec3<f32> = vs_INTERP1;
  let x_441 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_437.z, x_437.z, x_437.z) * x_439) + x_441);
  let x_443 : vec3<f32> = u_xlat11;
  let x_444 : vec3<f32> = u_xlat11;
  u_xlat2.x = dot(x_443, x_444);
  let x_448 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_448);
  let x_451 : vec3<f32> = u_xlat11;
  let x_452 : vec4<f32> = u_xlat2;
  let x_454 : vec3<f32> = (x_451 * vec3<f32>(x_452.x, x_452.x, x_452.x));
  let x_455 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_458 : f32 = x_134.unity_OrthoParams.w;
  u_xlatb11.x = (x_458 == 0.0f);
  let x_461 : vec3<f32> = vs_INTERP0;
  let x_466 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  let x_467 : vec3<f32> = (-(x_461) + x_466);
  let x_468 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_467.x, x_468.y, x_467.y, x_467.z);
  let x_471 : vec4<f32> = u_xlat2;
  let x_473 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_471.x, x_471.z, x_471.w), vec3<f32>(x_473.x, x_473.z, x_473.w));
  let x_476 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_476);
  let x_478 : f32 = u_xlat22;
  let x_480 : vec4<f32> = u_xlat2;
  let x_482 : vec3<f32> = (vec3<f32>(x_478, x_478, x_478) * vec3<f32>(x_480.x, x_480.z, x_480.w));
  let x_483 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_482.x, x_483.y, x_482.y, x_482.z);
  let x_486 : bool = u_xlatb11.x;
  if (x_486) {
    let x_491 : f32 = u_xlat2.x;
    x_487 = x_491;
  } else {
    let x_495 : f32 = x_134.unity_MatrixV[0i].z;
    x_487 = x_495;
  }
  let x_496 : f32 = x_487;
  u_xlat4.x = x_496;
  let x_499 : bool = u_xlatb11.x;
  if (x_499) {
    let x_504 : f32 = u_xlat2.z;
    x_500 = x_504;
  } else {
    let x_507 : f32 = x_134.unity_MatrixV[1i].z;
    x_500 = x_507;
  }
  let x_508 : f32 = x_500;
  u_xlat4.y = x_508;
  let x_511 : bool = u_xlatb11.x;
  if (x_511) {
    let x_516 : f32 = u_xlat2.w;
    x_512 = x_516;
  } else {
    let x_519 : f32 = x_134.unity_MatrixV[2i].z;
    x_512 = x_519;
  }
  let x_520 : f32 = x_512;
  u_xlat4.z = x_520;
  u_xlat3.w = 1.0f;
  let x_525 : vec4<f32> = x_54.unity_SHAr;
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_525, x_526);
  let x_531 : vec4<f32> = x_54.unity_SHAg;
  let x_532 : vec4<f32> = u_xlat3;
  u_xlat7.y = dot(x_531, x_532);
  let x_537 : vec4<f32> = x_54.unity_SHAb;
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat7.z = dot(x_537, x_538);
  let x_542 : vec4<f32> = u_xlat3;
  let x_544 : vec4<f32> = u_xlat3;
  u_xlat8 = (vec4<f32>(x_542.y, x_542.z, x_542.z, x_542.x) * vec4<f32>(x_544.x, x_544.y, x_544.z, x_544.z));
  let x_550 : vec4<f32> = x_54.unity_SHBr;
  let x_551 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_550, x_551);
  let x_556 : vec4<f32> = x_54.unity_SHBg;
  let x_557 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_556, x_557);
  let x_562 : vec4<f32> = x_54.unity_SHBb;
  let x_563 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_562, x_563);
  let x_567 : f32 = u_xlat3.y;
  let x_569 : f32 = u_xlat3.y;
  u_xlat11.x = (x_567 * x_569);
  let x_573 : f32 = u_xlat3.x;
  let x_575 : f32 = u_xlat3.x;
  let x_578 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_573 * x_575) + -(x_578));
  let x_584 : vec4<f32> = x_54.unity_SHC;
  let x_586 : vec3<f32> = u_xlat11;
  let x_589 : vec3<f32> = u_xlat9;
  u_xlat11 = ((vec3<f32>(x_584.x, x_584.y, x_584.z) * vec3<f32>(x_586.x, x_586.x, x_586.x)) + x_589);
  let x_591 : vec3<f32> = u_xlat11;
  let x_592 : vec4<f32> = u_xlat7;
  u_xlat11 = (x_591 + vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec3<f32> = u_xlat11;
  u_xlat11 = max(x_595, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_600 : vec4<f32> = x_134.x_ScaledScreenParams;
  let x_601 : vec2<f32> = vec2<f32>(x_600.x, x_600.y);
  let x_605 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_601.x, x_601.y));
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_605.x, x_606.y, x_605.y, x_606.w);
  let x_608 : vec4<f32> = u_xlat2;
  let x_610 : vec4<f32> = hlslcc_FragCoord;
  let x_612 : vec2<f32> = (vec2<f32>(x_608.x, x_608.z) * vec2<f32>(x_610.x, x_610.y));
  let x_613 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
  let x_616 : f32 = u_xlat7.y;
  let x_619 : f32 = x_134.x_ScaleBiasRt.x;
  let x_622 : f32 = x_134.x_ScaleBiasRt.y;
  u_xlat2.x = ((x_616 * x_619) + x_622);
  let x_626 : f32 = u_xlat2.x;
  u_xlat7.z = (-(x_626) + 1.0f);
  let x_631 : f32 = u_xlat6.x;
  u_xlat6.x = x_631;
  let x_634 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_634, 0.0f, 1.0f);
  let x_637 : f32 = u_xlat0;
  u_xlat0 = min(x_637, 1.0f);
  let x_639 : vec3<f32> = u_xlat5;
  let x_642 : vec3<f32> = (x_639 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_642.x, x_643.y, x_642.y, x_642.z);
  let x_647 : f32 = u_xlat6.x;
  u_xlat36 = (-(x_647) + 1.0f);
  let x_651 : f32 = u_xlat36;
  let x_652 : f32 = u_xlat36;
  u_xlat37 = (x_651 * x_652);
  let x_654 : f32 = u_xlat37;
  u_xlat37 = max(x_654, 0.0078125f);
  let x_657 : f32 = u_xlat37;
  let x_658 : f32 = u_xlat37;
  u_xlat5.x = (x_657 * x_658);
  let x_663 : f32 = u_xlat6.x;
  u_xlat16 = (x_663 + 0.040000021f);
  let x_666 : f32 = u_xlat16;
  u_xlat16 = min(x_666, 1.0f);
  let x_669 : f32 = u_xlat37;
  u_xlat27 = ((x_669 * 4.0f) + 2.0f);
  let x_679 : vec4<f32> = u_xlat7;
  let x_682 : f32 = x_134.x_GlobalMipBias.x;
  let x_683 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_679.x, x_679.z), x_682);
  u_xlat38 = x_683.x;
  let x_685 : f32 = u_xlat38;
  u_xlat6.x = (x_685 + -1.0f);
  let x_690 : f32 = x_134.x_AmbientOcclusionParam.w;
  let x_692 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_690 * x_692) + 1.0f);
  let x_696 : f32 = u_xlat38;
  let x_698 : f32 = vs_INTERP4.w;
  u_xlat38 = min(x_696, x_698);
  let x_702 : vec4<f32> = vs_INTERP9;
  let x_703 : vec2<f32> = vec2<f32>(x_702.x, x_702.y);
  let x_705 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_703.x, x_703.y, x_705);
  let x_712 : vec3<f32> = txVec1;
  let x_714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_712.xy, x_712.z);
  u_xlat17.x = x_714;
  let x_717 : f32 = u_xlat17.x;
  let x_719 : f32 = x_238.x_MainLightShadowParams.x;
  let x_721 : f32 = u_xlat34;
  u_xlat34 = ((x_717 * x_719) + x_721);
  let x_725 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_725);
  let x_729 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_729 >= 1.0f);
  let x_731 : bool = u_xlatb28;
  let x_732 : bool = u_xlatb17;
  u_xlatb17 = (x_731 | x_732);
  let x_734 : bool = u_xlatb17;
  let x_735 : f32 = u_xlat34;
  u_xlat34 = select(x_735, 1.0f, x_734);
  let x_737 : vec3<f32> = vs_INTERP0;
  let x_739 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  u_xlat17 = (x_737 + -(x_739));
  let x_742 : vec3<f32> = u_xlat17;
  let x_743 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_742, x_743);
  let x_747 : f32 = u_xlat17.x;
  let x_749 : f32 = x_238.x_MainLightShadowParams.z;
  let x_752 : f32 = x_238.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_747 * x_749) + x_752);
  let x_756 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_756, 0.0f, 1.0f);
  let x_760 : f32 = u_xlat34;
  u_xlat28 = (-(x_760) + 1.0f);
  let x_764 : f32 = u_xlat17.x;
  let x_765 : f32 = u_xlat28;
  let x_767 : f32 = u_xlat34;
  u_xlat34 = ((x_764 * x_765) + x_767);
  let x_769 : vec4<f32> = u_xlat6;
  let x_772 : vec4<f32> = x_134.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_769.x, x_769.x, x_769.x) * vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat4;
  let x_778 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(vec3<f32>(x_775.x, x_775.y, x_775.z)), vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_783 : f32 = u_xlat7.x;
  let x_785 : f32 = u_xlat7.x;
  u_xlat7.x = (x_783 + x_785);
  let x_788 : vec4<f32> = u_xlat3;
  let x_790 : vec4<f32> = u_xlat7;
  let x_794 : vec4<f32> = u_xlat4;
  let x_797 : vec3<f32> = ((vec3<f32>(x_788.x, x_788.y, x_788.z) * -(vec3<f32>(x_790.x, x_790.x, x_790.x))) + -(vec3<f32>(x_794.x, x_794.y, x_794.z)));
  let x_798 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_801 : vec4<f32> = u_xlat3;
  let x_803 : vec4<f32> = u_xlat4;
  u_xlat40 = dot(vec3<f32>(x_801.x, x_801.y, x_801.z), vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : f32 = u_xlat40;
  u_xlat40 = clamp(x_806, 0.0f, 1.0f);
  let x_808 : f32 = u_xlat40;
  u_xlat40 = (-(x_808) + 1.0f);
  let x_811 : f32 = u_xlat40;
  let x_812 : f32 = u_xlat40;
  u_xlat40 = (x_811 * x_812);
  let x_814 : f32 = u_xlat40;
  let x_815 : f32 = u_xlat40;
  u_xlat40 = (x_814 * x_815);
  let x_817 : f32 = u_xlat36;
  u_xlat8.x = ((-(x_817) * 0.699999988f) + 1.700000048f);
  let x_824 : f32 = u_xlat36;
  let x_826 : f32 = u_xlat8.x;
  u_xlat36 = (x_824 * x_826);
  let x_828 : f32 = u_xlat36;
  u_xlat36 = (x_828 * 6.0f);
  let x_839 : vec4<f32> = u_xlat7;
  let x_841 : f32 = u_xlat36;
  let x_842 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_839.x, x_839.y, x_839.z), x_841);
  u_xlat8 = x_842;
  let x_844 : f32 = u_xlat8.w;
  u_xlat36 = (x_844 + -1.0f);
  let x_847 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_848 : f32 = u_xlat36;
  u_xlat36 = ((x_847 * x_848) + 1.0f);
  let x_851 : f32 = u_xlat36;
  u_xlat36 = max(x_851, 0.0f);
  let x_853 : f32 = u_xlat36;
  u_xlat36 = log2(x_853);
  let x_855 : f32 = u_xlat36;
  let x_857 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_855 * x_857);
  let x_859 : f32 = u_xlat36;
  u_xlat36 = exp2(x_859);
  let x_861 : f32 = u_xlat36;
  let x_863 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_861 * x_863);
  let x_865 : vec4<f32> = u_xlat8;
  let x_867 : f32 = u_xlat36;
  let x_869 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) * vec3<f32>(x_867, x_867, x_867));
  let x_870 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : f32 = u_xlat37;
  let x_874 : f32 = u_xlat37;
  let x_878 : vec2<f32> = ((vec2<f32>(x_872, x_872) * vec2<f32>(x_874, x_874)) + vec2<f32>(-1.0f, 1.0f));
  let x_879 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
  let x_882 : f32 = u_xlat8.y;
  u_xlat36 = (1.0f / x_882);
  let x_884 : f32 = u_xlat16;
  u_xlat37 = (x_884 + -0.039999999f);
  let x_887 : f32 = u_xlat40;
  let x_888 : f32 = u_xlat37;
  u_xlat37 = ((x_887 * x_888) + 0.039999999f);
  let x_892 : f32 = u_xlat36;
  let x_893 : f32 = u_xlat37;
  u_xlat36 = (x_892 * x_893);
  let x_895 : f32 = u_xlat36;
  let x_897 : vec4<f32> = u_xlat7;
  let x_899 : vec3<f32> = (vec3<f32>(x_895, x_895, x_895) * vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec3<f32> = u_xlat11;
  let x_903 : vec4<f32> = u_xlat2;
  let x_906 : vec4<f32> = u_xlat7;
  u_xlat11 = ((x_902 * vec3<f32>(x_903.x, x_903.z, x_903.w)) + vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : f32 = u_xlat34;
  let x_911 : f32 = x_54.unity_LightData.z;
  u_xlat34 = (x_909 * x_911);
  let x_913 : vec4<f32> = u_xlat3;
  let x_916 : vec4<f32> = x_134.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_913.x, x_913.y, x_913.z), vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : f32 = u_xlat36;
  u_xlat36 = clamp(x_919, 0.0f, 1.0f);
  let x_921 : f32 = u_xlat34;
  let x_922 : f32 = u_xlat36;
  u_xlat34 = (x_921 * x_922);
  let x_924 : f32 = u_xlat34;
  let x_926 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_924, x_924, x_924) * x_926);
  let x_928 : vec4<f32> = u_xlat4;
  let x_931 : vec4<f32> = x_134.x_MainLightPosition;
  let x_933 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) + vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec4<f32> = u_xlat7;
  let x_938 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_936.x, x_936.y, x_936.z), vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : f32 = u_xlat34;
  u_xlat34 = max(x_941, 1.17549435e-37f);
  let x_943 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_943);
  let x_945 : f32 = u_xlat34;
  let x_947 : vec4<f32> = u_xlat7;
  let x_949 : vec3<f32> = (vec3<f32>(x_945, x_945, x_945) * vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat3;
  let x_954 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_952.x, x_952.y, x_952.z), vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_957 : f32 = u_xlat34;
  u_xlat34 = clamp(x_957, 0.0f, 1.0f);
  let x_960 : vec4<f32> = x_134.x_MainLightPosition;
  let x_962 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_960.x, x_960.y, x_960.z), vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : f32 = u_xlat36;
  u_xlat36 = clamp(x_965, 0.0f, 1.0f);
  let x_967 : f32 = u_xlat34;
  let x_968 : f32 = u_xlat34;
  u_xlat34 = (x_967 * x_968);
  let x_970 : f32 = u_xlat34;
  let x_972 : f32 = u_xlat8.x;
  u_xlat34 = ((x_970 * x_972) + 1.000010014f);
  let x_976 : f32 = u_xlat36;
  let x_977 : f32 = u_xlat36;
  u_xlat36 = (x_976 * x_977);
  let x_979 : f32 = u_xlat34;
  let x_980 : f32 = u_xlat34;
  u_xlat34 = (x_979 * x_980);
  let x_982 : f32 = u_xlat36;
  u_xlat36 = max(x_982, 0.100000001f);
  let x_985 : f32 = u_xlat34;
  let x_986 : f32 = u_xlat36;
  u_xlat34 = (x_985 * x_986);
  let x_988 : f32 = u_xlat27;
  let x_989 : f32 = u_xlat34;
  u_xlat34 = (x_988 * x_989);
  let x_992 : f32 = u_xlat5.x;
  let x_993 : f32 = u_xlat34;
  u_xlat34 = (x_992 / x_993);
  let x_995 : f32 = u_xlat34;
  let x_999 : vec4<f32> = u_xlat2;
  let x_1001 : vec3<f32> = ((vec3<f32>(x_995, x_995, x_995) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_999.x, x_999.z, x_999.w));
  let x_1002 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec3<f32> = u_xlat17;
  let x_1005 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1004 * vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1010 : f32 = x_134.x_AdditionalLightsCount.x;
  let x_1012 : f32 = x_54.unity_LightData.y;
  u_xlat34 = min(x_1010, x_1012);
  let x_1016 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1016));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1028 : u32 = u_xlatu_loop_1;
    let x_1029 : u32 = u_xlatu34;
    if ((x_1028 < x_1029)) {
    } else {
      break;
    }
    let x_1032 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_1032 >> 2u);
    let x_1036 : u32 = u_xlatu_loop_1;
    u_xlati16 = bitcast<i32>((x_1036 & 3u));
    let x_1039 : u32 = u_xlatu37;
    let x_1042 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1039)];
    let x_1052 : i32 = u_xlati16;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1057 : vec4<u32> = indexable[x_1052];
    u_xlat37 = dot(x_1042, bitcast<vec4<f32>>(x_1057));
    let x_1061 : f32 = u_xlat37;
    u_xlati37 = i32(x_1061);
    let x_1064 : vec3<f32> = vs_INTERP0;
    let x_1076 : i32 = u_xlati37;
    let x_1078 : vec4<f32> = x_1075.x_AdditionalLightsPosition[x_1076];
    let x_1081 : i32 = u_xlati37;
    let x_1083 : vec4<f32> = x_1075.x_AdditionalLightsPosition[x_1081];
    u_xlat19 = ((-(x_1064) * vec3<f32>(x_1078.w, x_1078.w, x_1078.w)) + vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
    let x_1086 : vec3<f32> = u_xlat19;
    let x_1087 : vec3<f32> = u_xlat19;
    u_xlat16 = dot(x_1086, x_1087);
    let x_1089 : f32 = u_xlat16;
    u_xlat16 = max(x_1089, 6.10351562e-05f);
    let x_1092 : f32 = u_xlat16;
    u_xlat40 = inverseSqrt(x_1092);
    let x_1094 : f32 = u_xlat40;
    let x_1096 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1094, x_1094, x_1094) * x_1096);
    let x_1099 : f32 = u_xlat16;
    u_xlat42 = (1.0f / x_1099);
    let x_1101 : f32 = u_xlat16;
    let x_1102 : i32 = u_xlati37;
    let x_1104 : f32 = x_1075.x_AdditionalLightsAttenuation[x_1102].x;
    u_xlat16 = (x_1101 * x_1104);
    let x_1106 : f32 = u_xlat16;
    let x_1108 : f32 = u_xlat16;
    u_xlat16 = ((-(x_1106) * x_1108) + 1.0f);
    let x_1111 : f32 = u_xlat16;
    u_xlat16 = max(x_1111, 0.0f);
    let x_1113 : f32 = u_xlat16;
    let x_1114 : f32 = u_xlat16;
    u_xlat16 = (x_1113 * x_1114);
    let x_1116 : f32 = u_xlat16;
    let x_1117 : f32 = u_xlat42;
    u_xlat16 = (x_1116 * x_1117);
    let x_1119 : i32 = u_xlati37;
    let x_1121 : vec4<f32> = x_1075.x_AdditionalLightsSpotDir[x_1119];
    let x_1123 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1121.x, x_1121.y, x_1121.z), x_1123);
    let x_1125 : f32 = u_xlat42;
    let x_1126 : i32 = u_xlati37;
    let x_1128 : f32 = x_1075.x_AdditionalLightsAttenuation[x_1126].z;
    let x_1130 : i32 = u_xlati37;
    let x_1132 : f32 = x_1075.x_AdditionalLightsAttenuation[x_1130].w;
    u_xlat42 = ((x_1125 * x_1128) + x_1132);
    let x_1134 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1134, 0.0f, 1.0f);
    let x_1136 : f32 = u_xlat42;
    let x_1137 : f32 = u_xlat42;
    u_xlat42 = (x_1136 * x_1137);
    let x_1139 : f32 = u_xlat16;
    let x_1140 : f32 = u_xlat42;
    u_xlat16 = (x_1139 * x_1140);
    let x_1143 : vec4<f32> = u_xlat6;
    let x_1145 : i32 = u_xlati37;
    let x_1147 : vec4<f32> = x_1075.x_AdditionalLightsColor[x_1145];
    u_xlat10 = (vec3<f32>(x_1143.x, x_1143.x, x_1143.x) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
    let x_1150 : vec4<f32> = u_xlat3;
    let x_1152 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_1150.x, x_1150.y, x_1150.z), x_1152);
    let x_1154 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1154, 0.0f, 1.0f);
    let x_1156 : f32 = u_xlat37;
    let x_1157 : f32 = u_xlat16;
    u_xlat37 = (x_1156 * x_1157);
    let x_1159 : f32 = u_xlat37;
    let x_1161 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1159, x_1159, x_1159) * x_1161);
    let x_1163 : vec3<f32> = u_xlat19;
    let x_1164 : f32 = u_xlat40;
    let x_1167 : vec4<f32> = u_xlat4;
    u_xlat19 = ((x_1163 * vec3<f32>(x_1164, x_1164, x_1164)) + vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
    let x_1170 : vec3<f32> = u_xlat19;
    let x_1171 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1170, x_1171);
    let x_1173 : f32 = u_xlat37;
    u_xlat37 = max(x_1173, 1.17549435e-37f);
    let x_1175 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1175);
    let x_1177 : f32 = u_xlat37;
    let x_1179 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1177, x_1177, x_1177) * x_1179);
    let x_1181 : vec4<f32> = u_xlat3;
    let x_1183 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(vec3<f32>(x_1181.x, x_1181.y, x_1181.z), x_1183);
    let x_1185 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1185, 0.0f, 1.0f);
    let x_1187 : vec3<f32> = u_xlat9;
    let x_1188 : vec3<f32> = u_xlat19;
    u_xlat16 = dot(x_1187, x_1188);
    let x_1190 : f32 = u_xlat16;
    u_xlat16 = clamp(x_1190, 0.0f, 1.0f);
    let x_1192 : f32 = u_xlat37;
    let x_1193 : f32 = u_xlat37;
    u_xlat37 = (x_1192 * x_1193);
    let x_1195 : f32 = u_xlat37;
    let x_1197 : f32 = u_xlat8.x;
    u_xlat37 = ((x_1195 * x_1197) + 1.000010014f);
    let x_1200 : f32 = u_xlat16;
    let x_1201 : f32 = u_xlat16;
    u_xlat16 = (x_1200 * x_1201);
    let x_1203 : f32 = u_xlat37;
    let x_1204 : f32 = u_xlat37;
    u_xlat37 = (x_1203 * x_1204);
    let x_1206 : f32 = u_xlat16;
    u_xlat16 = max(x_1206, 0.100000001f);
    let x_1208 : f32 = u_xlat37;
    let x_1209 : f32 = u_xlat16;
    u_xlat37 = (x_1208 * x_1209);
    let x_1211 : f32 = u_xlat27;
    let x_1212 : f32 = u_xlat37;
    u_xlat37 = (x_1211 * x_1212);
    let x_1215 : f32 = u_xlat5.x;
    let x_1216 : f32 = u_xlat37;
    u_xlat37 = (x_1215 / x_1216);
    let x_1218 : f32 = u_xlat37;
    let x_1221 : vec4<f32> = u_xlat2;
    u_xlat19 = ((vec3<f32>(x_1218, x_1218, x_1218) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1221.x, x_1221.z, x_1221.w));
    let x_1224 : vec3<f32> = u_xlat19;
    let x_1225 : vec3<f32> = u_xlat10;
    let x_1227 : vec4<f32> = u_xlat7;
    let x_1229 : vec3<f32> = ((x_1224 * x_1225) + vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
    let x_1230 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);

    continuing {
      let x_1232 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1232 + bitcast<u32>(1i));
    }
  }
  let x_1234 : vec3<f32> = u_xlat11;
  let x_1235 : f32 = u_xlat38;
  let x_1238 : vec3<f32> = u_xlat17;
  u_xlat11 = ((x_1234 * vec3<f32>(x_1235, x_1235, x_1235)) + x_1238);
  let x_1240 : vec4<f32> = u_xlat7;
  let x_1242 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_1240.x, x_1240.y, x_1240.z) + x_1242);
  let x_1246 : vec4<f32> = vs_INTERP4;
  let x_1248 : vec3<f32> = u_xlat1;
  let x_1250 : vec3<f32> = u_xlat11;
  let x_1251 : vec3<f32> = ((vec3<f32>(x_1246.w, x_1246.w, x_1246.w) * x_1248) + x_1250);
  let x_1252 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : bool = u_xlatb13;
  let x_1255 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1255, x_1254);
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

