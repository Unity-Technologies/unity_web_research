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
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_TimeParameters : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_BA_CloudData : vec4<f32>,
}

struct UnityPerMaterial {
  x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_TexelSize : vec4<f32>,
  Color_7eff2e7fc27440719d0a871a39dabdd3 : vec4<f32>,
  Vector1_2a375228e8d3437382814520b0cd8644 : f32,
  Vector1_5f4b185241524942830132fc71554a33 : f32,
  Vector1_2d1f70e8efb04843b1f8184ae06925e0 : f32,
  Vector1_33982692 : f32,
  Vector1_10DA9AB3 : f32,
  @size(4)
  padding_3 : u32,
  Vector2_65050940ec244ae3bf42db206c2dccca : vec2<f32>,
  Texture2D_4B382D9C_TexelSize : vec4<f32>,
  Texture2D_3DC46A50_TexelSize : vec4<f32>,
  x_BA_SkyboxMatrix : mat4x4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_43 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_162 : PGlobals;

@group(0) @binding(1) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(4) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_427 : UnityPerMaterial;

var<private> vs_INTERP0 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0 : texture_2d<f32>;

@group(0) @binding(3) var sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0 : sampler;

@group(0) @binding(2) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(5) var samplerTexture2D_3DC46A50 : sampler;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlat19 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_248 : f32;
  var x_260 : f32;
  var u_xlat7 : f32;
  var u_xlat13 : vec2<f32>;
  var x_310 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var x_461 : f32;
  var x_473 : f32;
  var x_485 : f32;
  var x_564 : f32;
  var x_578 : f32;
  var x_590 : f32;
  var x_681 : f32;
  var u_xlat12 : vec2<f32>;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_33 : f32 = vs_INTERP2.w;
  u_xlatb0.x = (0.0f < x_33);
  let x_48 : f32 = x_43.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_48 >= 0.0f);
  let x_55 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_55);
  let x_61 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_61);
  let x_65 : f32 = u_xlat0.y;
  let x_67 : f32 = u_xlat0.x;
  u_xlat0.x = (x_65 * x_67);
  let x_73 : vec3<f32> = vs_INTERP1;
  let x_75 : vec4<f32> = vs_INTERP2;
  u_xlat6 = (vec3<f32>(x_73.y, x_73.z, x_73.x) * vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : vec3<f32> = vs_INTERP1;
  let x_79 : vec4<f32> = vs_INTERP2;
  let x_82 : vec3<f32> = u_xlat6;
  u_xlat6 = ((x_78 * vec3<f32>(x_79.y, x_79.z, x_79.x)) + -(x_82));
  let x_85 : vec3<f32> = u_xlat6;
  let x_86 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_85 * vec3<f32>(x_86.x, x_86.x, x_86.x));
  let x_90 : vec3<f32> = vs_INTERP1;
  let x_91 : vec3<f32> = vs_INTERP1;
  u_xlat18 = dot(x_90, x_91);
  let x_93 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_93);
  let x_95 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_95);
  let x_97 : vec3<f32> = u_xlat0;
  let x_98 : f32 = u_xlat18;
  u_xlat0 = (x_97 * vec3<f32>(x_98, x_98, x_98));
  let x_102 : f32 = u_xlat18;
  let x_104 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_102, x_102, x_102) * vec3<f32>(x_104.y, x_104.z, x_104.x));
  let x_108 : f32 = u_xlat18;
  let x_110 : vec4<f32> = vs_INTERP2;
  let x_112 : vec3<f32> = (vec3<f32>(x_108, x_108, x_108) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_116 : vec3<f32> = u_xlat0;
  let x_117 : vec3<f32> = u_xlat1;
  let x_118 : vec3<f32> = (x_116 * x_117);
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec3<f32> = u_xlat0;
  let x_123 : vec3<f32> = u_xlat1;
  let x_126 : vec4<f32> = u_xlat3;
  let x_129 : vec3<f32> = ((vec3<f32>(x_121.x, x_121.z, x_121.y) * vec3<f32>(x_123.z, x_123.y, x_123.x)) + -(vec3<f32>(x_126.y, x_126.x, x_126.z)));
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_132 : vec4<f32> = u_xlat2;
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_132.y, x_132.x, x_132.z), vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_138 : f32 = u_xlat18;
  u_xlatb18 = (x_138 < 0.0f);
  let x_140 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_140);
  let x_144 : f32 = u_xlat0.x;
  let x_146 : f32 = u_xlat2.x;
  u_xlat19 = (x_144 * x_146);
  let x_149 : f32 = u_xlat2.z;
  let x_151 : f32 = u_xlat0.y;
  let x_153 : f32 = u_xlat19;
  u_xlat3.z = ((x_149 * x_151) + -(x_153));
  let x_157 : vec3<f32> = u_xlat0;
  let x_166 : vec4<f32> = x_162.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_157.y, x_157.z, x_157.x), vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_171 : f32 = u_xlat1.z;
  let x_173 : f32 = u_xlat2.z;
  u_xlat19 = (x_171 * x_173);
  let x_176 : f32 = u_xlat1.y;
  let x_178 : f32 = u_xlat2.x;
  let x_180 : f32 = u_xlat19;
  u_xlat3.y = ((x_176 * x_178) + -(x_180));
  let x_184 : vec3<f32> = u_xlat1;
  let x_187 : vec4<f32> = x_162.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_184.z, x_184.x, x_184.y), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = x_162.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_198 : f32 = u_xlat18;
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_198, x_198, x_198) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec3<f32> = u_xlat1;
  let x_204 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_203, x_204);
  let x_206 : f32 = u_xlat18;
  u_xlat18 = max(x_206, 1.17549435e-37f);
  let x_209 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_209);
  let x_211 : f32 = u_xlat18;
  let x_213 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_211, x_211, x_211) * x_213);
  let x_215 : vec3<f32> = u_xlat1;
  let x_216 : vec3<f32> = u_xlat1;
  let x_217 : vec3<f32> = (x_215 * x_216);
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_224 : vec3<f32> = u_xlat1;
  let x_227 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_224.x, x_224.y, x_224.z, x_224.x));
  u_xlatb1 = vec3<bool>(x_227.x, x_227.y, x_227.z);
  let x_240 : vec4<f32> = vs_INTERP3;
  let x_244 : f32 = x_162.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_240.x, x_240.y), x_244);
  u_xlat3 = x_245;
  let x_247 : bool = u_xlatb1.x;
  if (x_247) {
    let x_252 : f32 = u_xlat3.z;
    x_248 = x_252;
  } else {
    let x_255 : f32 = u_xlat3.x;
    x_248 = x_255;
  }
  let x_256 : f32 = x_248;
  u_xlat1.x = x_256;
  let x_259 : bool = u_xlatb1.y;
  if (x_259) {
    let x_264 : f32 = u_xlat3.y;
    x_260 = x_264;
  } else {
    let x_267 : f32 = u_xlat3.w;
    x_260 = x_267;
  }
  let x_268 : f32 = x_260;
  u_xlat1.y = x_268;
  let x_270 : vec4<f32> = u_xlat2;
  let x_272 : vec3<f32> = u_xlat1;
  let x_274 : vec2<f32> = (vec2<f32>(x_270.x, x_270.y) * vec2<f32>(x_272.x, x_272.y));
  let x_275 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_274.x, x_274.y, x_275.z);
  let x_278 : f32 = u_xlat1.y;
  let x_280 : f32 = u_xlat1.x;
  u_xlat18 = (x_278 + x_280);
  let x_282 : vec4<f32> = u_xlat3;
  let x_284 : vec4<f32> = u_xlat3;
  let x_286 : vec2<f32> = (vec2<f32>(x_282.z, x_282.w) + vec2<f32>(x_284.x, x_284.y));
  let x_287 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_286.x, x_286.y, x_287.z);
  let x_290 : f32 = u_xlat1.y;
  let x_292 : f32 = u_xlat1.x;
  u_xlat1.x = (x_290 + x_292);
  let x_297 : f32 = u_xlat1.x;
  u_xlat7 = (x_297 * 0.25f);
  let x_301 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_301) * 0.25f) + 1.0f);
  let x_309 : bool = u_xlatb1.z;
  if (x_309) {
    let x_313 : f32 = u_xlat7;
    x_310 = x_313;
  } else {
    let x_316 : f32 = u_xlat1.x;
    x_310 = x_316;
  }
  let x_317 : f32 = x_310;
  u_xlat13.x = x_317;
  let x_320 : f32 = u_xlat13.x;
  let x_322 : f32 = u_xlat2.z;
  let x_324 : f32 = u_xlat18;
  u_xlat2.y = ((x_320 * x_322) + x_324);
  u_xlat2.x = 1.0f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = 1.0f;
  let x_330 : vec4<f32> = u_xlat2;
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_330.y, x_330.z, x_330.z), vec3<f32>(x_332.y, x_332.z, x_332.z));
  let x_335 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat18;
  let x_339 : vec4<f32> = u_xlat2;
  let x_341 : vec3<f32> = (vec3<f32>(x_337, x_337, x_337) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : vec4<f32> = u_xlat2;
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_345.y, x_345.z, x_345.y) * vec3<f32>(x_347.z, x_347.z, x_347.y));
  let x_351 : f32 = u_xlat2.z;
  let x_353 : f32 = u_xlat2.z;
  let x_356 : f32 = u_xlat4.z;
  u_xlat18 = ((x_351 * x_353) + -(x_356));
  let x_362 : vec4<f32> = x_43.unity_SHBr;
  let x_363 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_362, vec4<f32>(x_363.x, x_363.x, x_363.y, x_363.y));
  let x_369 : vec4<f32> = x_43.unity_SHBg;
  let x_370 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_369, vec4<f32>(x_370.x, x_370.x, x_370.y, x_370.y));
  let x_376 : vec4<f32> = x_43.unity_SHBb;
  let x_377 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_376, vec4<f32>(x_377.x, x_377.x, x_377.y, x_377.y));
  let x_383 : vec4<f32> = x_43.unity_SHC;
  let x_385 : f32 = u_xlat18;
  let x_388 : vec3<f32> = u_xlat5;
  u_xlat4 = ((vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(x_385, x_385, x_385)) + x_388);
  let x_392 : vec4<f32> = x_43.unity_SHAr;
  let x_394 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec4<f32>(x_392.y, x_392.x, x_392.z, x_392.w), vec4<f32>(x_394.y, x_394.z, x_394.z, x_394.w));
  let x_400 : vec4<f32> = x_43.unity_SHAg;
  let x_402 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(vec4<f32>(x_400.y, x_400.x, x_400.z, x_400.w), vec4<f32>(x_402.y, x_402.z, x_402.z, x_402.w));
  let x_408 : vec4<f32> = x_43.unity_SHAb;
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_408, x_409);
  let x_412 : vec3<f32> = u_xlat4;
  let x_413 : vec3<f32> = u_xlat5;
  let x_414 : vec3<f32> = (x_412 + x_413);
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat2;
  let x_420 : vec3<f32> = max(vec3<f32>(x_417.x, x_417.y, x_417.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat2;
  let x_429 : f32 = x_427.Vector1_5f4b185241524942830132fc71554a33;
  let x_431 : f32 = x_427.Vector1_5f4b185241524942830132fc71554a33;
  let x_433 : f32 = x_427.Vector1_5f4b185241524942830132fc71554a33;
  let x_434 : vec3<f32> = vec3<f32>(x_429, x_431, x_433);
  let x_439 : vec3<f32> = (vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_440 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec3<f32> = u_xlat0;
  let x_443 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_442, x_443);
  let x_445 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_445);
  let x_447 : f32 = u_xlat18;
  let x_449 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_447, x_447, x_447) * x_449);
  let x_452 : vec3<f32> = u_xlat0;
  let x_454 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_452.x, x_452.y, x_452.z, x_452.x));
  u_xlatb4 = vec3<bool>(x_454.x, x_454.y, x_454.z);
  let x_456 : vec3<f32> = u_xlat0;
  let x_457 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_456 * x_457);
  let x_460 : bool = u_xlatb4.x;
  if (x_460) {
    let x_465 : f32 = u_xlat3.z;
    x_461 = x_465;
  } else {
    let x_468 : f32 = u_xlat3.x;
    x_461 = x_468;
  }
  let x_469 : f32 = x_461;
  u_xlat13.x = x_469;
  let x_472 : bool = u_xlatb4.y;
  if (x_472) {
    let x_477 : f32 = u_xlat3.y;
    x_473 = x_477;
  } else {
    let x_480 : f32 = u_xlat3.w;
    x_473 = x_480;
  }
  let x_481 : f32 = x_473;
  u_xlat13.y = x_481;
  let x_484 : bool = u_xlatb4.z;
  if (x_484) {
    let x_488 : f32 = u_xlat7;
    x_485 = x_488;
  } else {
    let x_491 : f32 = u_xlat1.x;
    x_485 = x_491;
  }
  let x_492 : f32 = x_485;
  u_xlat18 = x_492;
  let x_493 : vec3<f32> = u_xlat0;
  let x_495 : vec2<f32> = u_xlat13;
  let x_496 : vec2<f32> = (vec2<f32>(x_493.x, x_493.y) * x_495);
  let x_497 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_496.x, x_496.y, x_497.z);
  let x_500 : f32 = u_xlat0.y;
  let x_502 : f32 = u_xlat0.x;
  u_xlat0.x = (x_500 + x_502);
  let x_505 : f32 = u_xlat18;
  let x_507 : f32 = u_xlat0.z;
  let x_510 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_505 * x_507) + x_510);
  let x_514 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_514);
  let x_518 : f32 = x_427.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_518 * 0.5f);
  let x_523 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_523, 0.001f);
  let x_528 : f32 = u_xlat0.x;
  let x_530 : f32 = u_xlat6.x;
  u_xlat0.x = (x_528 * x_530);
  let x_534 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_534);
  let x_538 : vec3<f32> = vs_INTERP0;
  let x_543 : vec3<f32> = x_162.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_538) + x_543);
  let x_545 : vec3<f32> = u_xlat6;
  let x_546 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_545, x_546);
  let x_550 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_550);
  let x_553 : vec3<f32> = u_xlat6;
  let x_554 : vec3<f32> = u_xlat1;
  u_xlat6 = (x_553 * vec3<f32>(x_554.x, x_554.x, x_554.x));
  let x_559 : f32 = x_162.unity_OrthoParams.w;
  u_xlatb1.x = (x_559 == 0.0f);
  let x_563 : bool = u_xlatb1.x;
  if (x_563) {
    let x_568 : f32 = u_xlat6.x;
    x_564 = x_568;
  } else {
    let x_573 : f32 = x_162.unity_MatrixV[0i].z;
    x_564 = x_573;
  }
  let x_574 : f32 = x_564;
  u_xlat3.x = x_574;
  let x_577 : bool = u_xlatb1.x;
  if (x_577) {
    let x_582 : f32 = u_xlat6.y;
    x_578 = x_582;
  } else {
    let x_585 : f32 = x_162.unity_MatrixV[1i].z;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  u_xlat3.y = x_586;
  let x_589 : bool = u_xlatb1.x;
  if (x_589) {
    let x_594 : f32 = u_xlat6.z;
    x_590 = x_594;
  } else {
    let x_597 : f32 = x_162.unity_MatrixV[2i].z;
    x_590 = x_597;
  }
  let x_598 : f32 = x_590;
  u_xlat3.z = x_598;
  let x_600 : vec4<f32> = u_xlat3;
  let x_602 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(vec3<f32>(x_600.x, x_600.y, x_600.z), vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_607 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_607);
  let x_610 : vec3<f32> = u_xlat6;
  let x_612 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_610.x, x_610.x, x_610.x) * vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_615 : vec3<f32> = u_xlat6;
  let x_617 : vec4<f32> = x_162.x_MainLightPosition;
  u_xlat6.x = dot(x_615, -(vec3<f32>(x_617.x, x_617.y, x_617.z)));
  let x_623 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_623, 0.0f, 1.0f);
  let x_627 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_627);
  let x_631 : f32 = u_xlat6.x;
  u_xlat6.x = (x_631 * 150.0f);
  let x_636 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_636);
  let x_640 : f32 = u_xlat6.x;
  u_xlat6.x = (x_640 + 1.0f);
  let x_644 : f32 = u_xlat0.x;
  let x_646 : f32 = u_xlat6.x;
  u_xlat0.x = (x_644 * x_646);
  let x_650 : vec4<f32> = x_162.x_MainLightColor;
  let x_652 : vec3<f32> = u_xlat0;
  let x_655 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_650.x, x_650.y, x_650.z) * vec3<f32>(x_652.x, x_652.x, x_652.x)) + vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_660 : vec3<f32> = u_xlat0;
  let x_662 : vec4<f32> = x_427.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_664 : vec3<f32> = (x_660 * vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_669 : f32 = x_162.x_ProjectionParams.x;
  u_xlatb0.x = (x_669 < 0.0f);
  let x_673 : f32 = hlslcc_FragCoord.y;
  let x_676 : f32 = x_162.x_ScaledScreenParams.y;
  u_xlat6.x = (-(x_673) + x_676);
  let x_680 : bool = u_xlatb0.x;
  if (x_680) {
    let x_685 : f32 = u_xlat6.x;
    x_681 = x_685;
  } else {
    let x_688 : f32 = hlslcc_FragCoord.y;
    x_681 = x_688;
  }
  let x_689 : f32 = x_681;
  u_xlat0.y = x_689;
  let x_692 : f32 = hlslcc_FragCoord.x;
  u_xlat0.x = x_692;
  let x_694 : vec3<f32> = u_xlat0;
  let x_697 : vec4<f32> = x_162.x_ScaledScreenParams;
  let x_699 : vec2<f32> = (vec2<f32>(x_694.x, x_694.y) / vec2<f32>(x_697.x, x_697.y));
  let x_700 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_699.x, x_699.y, x_700.z);
  let x_703 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_703) + 1.0f);
  let x_707 : vec3<f32> = u_xlat0;
  let x_711 : vec4<f32> = x_162.x_ScreenParams;
  let x_713 : vec2<f32> = (vec2<f32>(x_707.x, x_707.z) * vec2<f32>(x_711.x, x_711.y));
  let x_714 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_713.x, x_713.y, x_714.z);
  let x_716 : vec3<f32> = u_xlat0;
  let x_718 : vec2<f32> = floor(vec2<f32>(x_716.x, x_716.y));
  let x_719 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_718.x, x_718.y, x_719.z);
  let x_723 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_726 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  u_xlat12.x = dot(vec3<f32>(x_723.x, x_723.y, x_723.z), vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_731 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_731);
  let x_736 : vec4<f32> = x_162.x_TimeParameters;
  let x_741 : vec2<f32> = (vec2<f32>(x_736.x, x_736.x) * vec2<f32>(0.017999999f, 0.319999993f));
  let x_742 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_741.x, x_741.y, x_742.z);
  let x_744 : vec2<f32> = u_xlat12;
  let x_749 : vec3<f32> = u_xlat1;
  u_xlat12 = ((vec2<f32>(x_744.x, x_744.x) * vec2<f32>(0.32100001f, 0.32100001f)) + vec2<f32>(x_749.x, x_749.y));
  let x_752 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_752);
  let x_754 : vec2<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_754.x, x_754.x), vec2<f32>(12.989800453f, 78.233001709f));
  let x_761 : vec2<f32> = u_xlat12;
  u_xlat12.y = dot(vec2<f32>(x_761.y, x_761.y), vec2<f32>(12.989800453f, 78.233001709f));
  let x_765 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_765);
  let x_767 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_767 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_771 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_771);
  let x_773 : vec2<f32> = u_xlat12;
  let x_775 : vec4<f32> = x_162.x_ScreenParams;
  let x_777 : vec2<f32> = (x_773 * vec2<f32>(x_775.x, x_775.y));
  let x_778 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_777.x, x_777.y, x_778.z);
  let x_780 : vec3<f32> = u_xlat0;
  let x_782 : vec3<f32> = u_xlat1;
  let x_784 : vec2<f32> = (vec2<f32>(x_780.x, x_780.y) + vec2<f32>(x_782.x, x_782.y));
  let x_785 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_784.x, x_784.y, x_785.z);
  let x_787 : vec3<f32> = u_xlat0;
  let x_791 : vec2<f32> = (vec2<f32>(x_787.x, x_787.y) * vec2<f32>(0.00390625f, 0.00390625f));
  let x_792 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_791.x, x_791.y, x_792.z);
  let x_794 : vec3<f32> = u_xlat0;
  let x_796 : vec2<f32> = fract(vec2<f32>(x_794.x, x_794.y));
  let x_797 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_796.x, x_796.y, x_797.z);
  let x_804 : vec3<f32> = u_xlat0;
  let x_807 : f32 = x_162.x_GlobalMipBias.x;
  let x_808 : vec4<f32> = textureSampleBias(x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, vec2<f32>(x_804.x, x_804.y), x_807);
  u_xlat0.x = x_808.y;
  let x_812 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_812 * 0.300000012f) + 0.800000012f);
  let x_819 : f32 = u_xlat0.x;
  let x_823 : f32 = x_162.x_BA_CloudData.w;
  u_xlat0.x = ((-(x_819) * x_823) + 1.0f);
  let x_832 : vec4<f32> = vs_INTERP3;
  let x_835 : f32 = x_162.x_GlobalMipBias.x;
  let x_836 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_832.x, x_832.y), x_835);
  let x_837 : vec2<f32> = vec2<f32>(x_836.z, x_836.w);
  let x_838 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_837.x, x_837.y, x_838.z);
  let x_841 : f32 = u_xlat0.x;
  let x_844 : f32 = u_xlat6.x;
  u_xlat0.x = (-(x_841) + x_844);
  let x_848 : f32 = u_xlat6.y;
  u_xlat6.x = (-(x_848) + 1.0f);
  let x_853 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_853);
  let x_857 : f32 = u_xlat6.x;
  let x_859 : f32 = x_427.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_857 * x_859);
  let x_863 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_863);
  let x_867 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_867) + 1.0f);
  let x_872 : f32 = u_xlat0.x;
  u_xlat0.x = (x_872 * 10.0f);
  let x_877 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_877, 0.0f, 1.0f);
  let x_881 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_881 * -2.0f) + 3.0f);
  let x_888 : f32 = u_xlat0.x;
  let x_890 : f32 = u_xlat0.x;
  u_xlat0.x = (x_888 * x_890);
  let x_894 : f32 = u_xlat0.x;
  let x_896 : f32 = u_xlat12.x;
  u_xlat0.x = (x_894 * x_896);
  let x_900 : f32 = u_xlat0.x;
  let x_902 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_900, x_902);
  let x_911 : u32 = x_162.x_RenderingLayerMaxInt;
  let x_913 : f32 = x_43.unity_RenderingLayer.x;
  u_xlatu0 = (x_911 & bitcast<u32>(x_913));
  let x_916 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_916);
  let x_921 : f32 = u_xlat0.x;
  let x_924 : f32 = x_162.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_921 * x_924);
  let x_928 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_928, 0.0f, 1.0f);
  let x_931 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_931.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

