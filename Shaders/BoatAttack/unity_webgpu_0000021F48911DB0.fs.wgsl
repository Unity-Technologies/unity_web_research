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
  x_TimeParameters : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
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
  padding_2 : u32,
  Vector2_65050940ec244ae3bf42db206c2dccca : vec2<f32>,
  Texture2D_4B382D9C_TexelSize : vec4<f32>,
  Texture2D_3DC46A50_TexelSize : vec4<f32>,
  x_BA_SkyboxMatrix : mat4x4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_43 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_163 : PGlobals;

@group(0) @binding(1) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(4) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(2) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(5) var samplerTexture2D_3DC46A50 : sampler;

@group(1) @binding(2) var<uniform> x_419 : UnityPerMaterial;

var<private> vs_INTERP0 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0 : texture_2d<f32>;

@group(0) @binding(3) var sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0 : sampler;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlat19 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_255 : f32;
  var x_267 : f32;
  var u_xlat4 : vec4<f32>;
  var x_302 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec3<bool>;
  var x_453 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var u_xlatb19 : bool;
  var x_554 : f32;
  var x_567 : f32;
  var x_578 : f32;
  var x_666 : f32;
  var u_xlat12 : vec2<f32>;
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
  let x_106 : vec3<f32> = (vec3<f32>(x_102, x_102, x_102) * vec3<f32>(x_104.y, x_104.z, x_104.x));
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : f32 = u_xlat18;
  let x_112 : vec4<f32> = vs_INTERP2;
  u_xlat2 = (vec3<f32>(x_110, x_110, x_110) * vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_116 : vec3<f32> = u_xlat0;
  let x_117 : vec4<f32> = u_xlat1;
  let x_119 : vec3<f32> = (x_116 * vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec3<f32> = u_xlat0;
  let x_124 : vec4<f32> = u_xlat1;
  let x_127 : vec4<f32> = u_xlat3;
  let x_130 : vec3<f32> = ((vec3<f32>(x_122.x, x_122.z, x_122.y) * vec3<f32>(x_124.z, x_124.y, x_124.x)) + -(vec3<f32>(x_127.y, x_127.x, x_127.z)));
  let x_131 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec3<f32> = u_xlat2;
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_133.y, x_133.x, x_133.z), vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : f32 = u_xlat18;
  u_xlatb18 = (x_139 < 0.0f);
  let x_141 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_141);
  let x_145 : f32 = u_xlat0.x;
  let x_147 : f32 = u_xlat2.x;
  u_xlat19 = (x_145 * x_147);
  let x_150 : f32 = u_xlat2.z;
  let x_152 : f32 = u_xlat0.y;
  let x_154 : f32 = u_xlat19;
  u_xlat3.z = ((x_150 * x_152) + -(x_154));
  let x_158 : vec3<f32> = u_xlat0;
  let x_167 : vec4<f32> = x_163.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_158.y, x_158.z, x_158.x), vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_172 : f32 = u_xlat1.z;
  let x_174 : f32 = u_xlat2.z;
  u_xlat19 = (x_172 * x_174);
  let x_177 : f32 = u_xlat1.y;
  let x_179 : f32 = u_xlat2.x;
  let x_181 : f32 = u_xlat19;
  u_xlat3.y = ((x_177 * x_179) + -(x_181));
  let x_185 : vec4<f32> = u_xlat1;
  let x_188 : vec4<f32> = x_163.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_185.z, x_185.x, x_185.y), vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_192 : vec3<f32> = u_xlat2;
  let x_194 : vec4<f32> = x_163.x_MainLightPosition;
  u_xlat0.x = dot(x_192, vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_198 : f32 = u_xlat18;
  let x_200 : vec4<f32> = u_xlat3;
  let x_202 : vec3<f32> = (vec3<f32>(x_198, x_198, x_198) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat1;
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : f32 = u_xlat18;
  u_xlat18 = max(x_210, 1.17549435e-37f);
  let x_213 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_213);
  let x_215 : f32 = u_xlat18;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = (vec3<f32>(x_215, x_215, x_215) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_231 : vec4<f32> = u_xlat1;
  let x_234 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_231.x, x_231.y, x_231.z, x_231.x));
  u_xlatb1 = vec3<bool>(x_234.x, x_234.y, x_234.z);
  let x_247 : vec4<f32> = vs_INTERP3;
  let x_251 : f32 = x_163.x_GlobalMipBias.x;
  let x_252 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_247.x, x_247.y), x_251);
  u_xlat3 = x_252;
  let x_254 : bool = u_xlatb1.x;
  if (x_254) {
    let x_259 : f32 = u_xlat3.z;
    x_255 = x_259;
  } else {
    let x_262 : f32 = u_xlat3.x;
    x_255 = x_262;
  }
  let x_263 : f32 = x_255;
  u_xlat1.x = x_263;
  let x_266 : bool = u_xlatb1.y;
  if (x_266) {
    let x_271 : f32 = u_xlat3.y;
    x_267 = x_271;
  } else {
    let x_274 : f32 = u_xlat3.w;
    x_267 = x_274;
  }
  let x_275 : f32 = x_267;
  u_xlat1.y = x_275;
  let x_277 : vec3<f32> = u_xlat2;
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec2<f32> = (vec2<f32>(x_277.x, x_277.y) * vec2<f32>(x_279.x, x_279.y));
  let x_282 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
  let x_285 : f32 = u_xlat1.y;
  let x_287 : f32 = u_xlat1.x;
  u_xlat18 = (x_285 + x_287);
  let x_295 : vec4<f32> = vs_INTERP3;
  let x_298 : f32 = x_163.x_GlobalMipBias.x;
  let x_299 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_295.x, x_295.y), x_298);
  u_xlat4 = x_299;
  let x_301 : bool = u_xlatb1.z;
  if (x_301) {
    let x_306 : f32 = u_xlat4.y;
    x_302 = x_306;
  } else {
    let x_309 : f32 = u_xlat4.x;
    x_302 = x_309;
  }
  let x_310 : f32 = x_302;
  u_xlat1.x = x_310;
  let x_313 : f32 = u_xlat1.x;
  let x_315 : f32 = u_xlat2.z;
  let x_317 : f32 = u_xlat18;
  u_xlat1.y = ((x_313 * x_315) + x_317);
  u_xlat1.x = 1.0f;
  u_xlat1.z = 1.0f;
  u_xlat1.w = 1.0f;
  let x_323 : vec4<f32> = u_xlat1;
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_323.y, x_323.z, x_323.z), vec3<f32>(x_325.y, x_325.z, x_325.z));
  let x_328 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_328);
  let x_330 : f32 = u_xlat18;
  let x_332 : vec4<f32> = u_xlat1;
  let x_334 : vec3<f32> = (vec3<f32>(x_330, x_330, x_330) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_337.y, x_337.z, x_337.y) * vec3<f32>(x_339.z, x_339.z, x_339.y));
  let x_343 : f32 = u_xlat1.z;
  let x_345 : f32 = u_xlat1.z;
  let x_348 : f32 = u_xlat2.z;
  u_xlat18 = ((x_343 * x_345) + -(x_348));
  let x_354 : vec4<f32> = x_43.unity_SHBr;
  let x_355 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(x_354, vec4<f32>(x_355.x, x_355.x, x_355.y, x_355.y));
  let x_361 : vec4<f32> = x_43.unity_SHBg;
  let x_362 : vec3<f32> = u_xlat2;
  u_xlat5.y = dot(x_361, vec4<f32>(x_362.x, x_362.x, x_362.y, x_362.y));
  let x_368 : vec4<f32> = x_43.unity_SHBb;
  let x_369 : vec3<f32> = u_xlat2;
  u_xlat5.z = dot(x_368, vec4<f32>(x_369.x, x_369.x, x_369.y, x_369.y));
  let x_375 : vec4<f32> = x_43.unity_SHC;
  let x_377 : f32 = u_xlat18;
  let x_380 : vec3<f32> = u_xlat5;
  u_xlat2 = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_377, x_377, x_377)) + x_380);
  let x_384 : vec4<f32> = x_43.unity_SHAr;
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(vec4<f32>(x_384.y, x_384.x, x_384.z, x_384.w), vec4<f32>(x_386.y, x_386.z, x_386.z, x_386.w));
  let x_392 : vec4<f32> = x_43.unity_SHAg;
  let x_394 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(vec4<f32>(x_392.y, x_392.x, x_392.z, x_392.w), vec4<f32>(x_394.y, x_394.z, x_394.z, x_394.w));
  let x_400 : vec4<f32> = x_43.unity_SHAb;
  let x_401 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_400, x_401);
  let x_404 : vec3<f32> = u_xlat2;
  let x_405 : vec3<f32> = u_xlat5;
  let x_406 : vec3<f32> = (x_404 + x_405);
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat1;
  let x_412 : vec3<f32> = max(vec3<f32>(x_409.x, x_409.y, x_409.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_413 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat1;
  let x_421 : f32 = x_419.Vector1_5f4b185241524942830132fc71554a33;
  let x_423 : f32 = x_419.Vector1_5f4b185241524942830132fc71554a33;
  let x_425 : f32 = x_419.Vector1_5f4b185241524942830132fc71554a33;
  let x_426 : vec3<f32> = vec3<f32>(x_421, x_423, x_425);
  let x_431 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec3<f32> = u_xlat0;
  let x_435 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_434, x_435);
  let x_437 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_437);
  let x_439 : f32 = u_xlat18;
  let x_441 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_439, x_439, x_439) * x_441);
  let x_444 : vec3<f32> = u_xlat0;
  let x_446 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_444.x, x_444.y, x_444.z, x_444.x));
  u_xlatb2 = vec3<bool>(x_446.x, x_446.y, x_446.z);
  let x_448 : vec3<f32> = u_xlat0;
  let x_449 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_448 * x_449);
  let x_452 : bool = u_xlatb2.x;
  if (x_452) {
    let x_457 : f32 = u_xlat3.z;
    x_453 = x_457;
  } else {
    let x_460 : f32 = u_xlat3.x;
    x_453 = x_460;
  }
  let x_461 : f32 = x_453;
  u_xlat2.x = x_461;
  let x_464 : bool = u_xlatb2.y;
  if (x_464) {
    let x_469 : f32 = u_xlat3.y;
    x_465 = x_469;
  } else {
    let x_472 : f32 = u_xlat3.w;
    x_465 = x_472;
  }
  let x_473 : f32 = x_465;
  u_xlat2.y = x_473;
  let x_476 : bool = u_xlatb2.z;
  if (x_476) {
    let x_481 : f32 = u_xlat4.y;
    x_477 = x_481;
  } else {
    let x_484 : f32 = u_xlat4.x;
    x_477 = x_484;
  }
  let x_485 : f32 = x_477;
  u_xlat18 = x_485;
  let x_486 : vec3<f32> = u_xlat0;
  let x_488 : vec3<f32> = u_xlat2;
  let x_490 : vec2<f32> = (vec2<f32>(x_486.x, x_486.y) * vec2<f32>(x_488.x, x_488.y));
  let x_491 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_490.x, x_490.y, x_491.z);
  let x_494 : f32 = u_xlat0.y;
  let x_496 : f32 = u_xlat0.x;
  u_xlat0.x = (x_494 + x_496);
  let x_499 : f32 = u_xlat18;
  let x_501 : f32 = u_xlat0.z;
  let x_504 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_499 * x_501) + x_504);
  let x_508 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_508);
  let x_512 : f32 = x_419.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_512 * 0.5f);
  let x_517 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_517, 0.001f);
  let x_522 : f32 = u_xlat0.x;
  let x_524 : f32 = u_xlat6.x;
  u_xlat0.x = (x_522 * x_524);
  let x_528 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_528);
  let x_532 : vec3<f32> = vs_INTERP0;
  let x_537 : vec3<f32> = x_163.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_532) + x_537);
  let x_539 : vec3<f32> = u_xlat6;
  let x_540 : vec3<f32> = u_xlat6;
  u_xlat19 = dot(x_539, x_540);
  let x_542 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_542);
  let x_544 : vec3<f32> = u_xlat6;
  let x_545 : f32 = u_xlat19;
  u_xlat6 = (x_544 * vec3<f32>(x_545, x_545, x_545));
  let x_551 : f32 = x_163.unity_OrthoParams.w;
  u_xlatb19 = (x_551 == 0.0f);
  let x_553 : bool = u_xlatb19;
  if (x_553) {
    let x_558 : f32 = u_xlat6.x;
    x_554 = x_558;
  } else {
    let x_563 : f32 = x_163.unity_MatrixV[0i].z;
    x_554 = x_563;
  }
  let x_564 : f32 = x_554;
  u_xlat2.x = x_564;
  let x_566 : bool = u_xlatb19;
  if (x_566) {
    let x_571 : f32 = u_xlat6.y;
    x_567 = x_571;
  } else {
    let x_574 : f32 = x_163.unity_MatrixV[1i].z;
    x_567 = x_574;
  }
  let x_575 : f32 = x_567;
  u_xlat2.y = x_575;
  let x_577 : bool = u_xlatb19;
  if (x_577) {
    let x_582 : f32 = u_xlat6.z;
    x_578 = x_582;
  } else {
    let x_585 : f32 = x_163.unity_MatrixV[2i].z;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  u_xlat2.z = x_586;
  let x_588 : vec3<f32> = u_xlat2;
  let x_589 : vec3<f32> = u_xlat2;
  u_xlat6.x = dot(x_588, x_589);
  let x_593 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_593);
  let x_596 : vec3<f32> = u_xlat6;
  let x_598 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_596.x, x_596.x, x_596.x) * x_598);
  let x_600 : vec3<f32> = u_xlat6;
  let x_602 : vec4<f32> = x_163.x_MainLightPosition;
  u_xlat6.x = dot(x_600, -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_608 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_608, 0.0f, 1.0f);
  let x_612 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_612);
  let x_616 : f32 = u_xlat6.x;
  u_xlat6.x = (x_616 * 150.0f);
  let x_621 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_621);
  let x_625 : f32 = u_xlat6.x;
  u_xlat6.x = (x_625 + 1.0f);
  let x_629 : f32 = u_xlat0.x;
  let x_631 : f32 = u_xlat6.x;
  u_xlat0.x = (x_629 * x_631);
  let x_635 : vec4<f32> = x_163.x_MainLightColor;
  let x_637 : vec3<f32> = u_xlat0;
  let x_640 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_635.x, x_635.y, x_635.z) * vec3<f32>(x_637.x, x_637.x, x_637.x)) + vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_645 : vec3<f32> = u_xlat0;
  let x_647 : vec4<f32> = x_419.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_649 : vec3<f32> = (x_645 * vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_654 : f32 = x_163.x_ProjectionParams.x;
  u_xlatb0.x = (x_654 < 0.0f);
  let x_658 : f32 = hlslcc_FragCoord.y;
  let x_661 : f32 = x_163.x_ScaledScreenParams.y;
  u_xlat6.x = (-(x_658) + x_661);
  let x_665 : bool = u_xlatb0.x;
  if (x_665) {
    let x_670 : f32 = u_xlat6.x;
    x_666 = x_670;
  } else {
    let x_673 : f32 = hlslcc_FragCoord.y;
    x_666 = x_673;
  }
  let x_674 : f32 = x_666;
  u_xlat0.y = x_674;
  let x_677 : f32 = hlslcc_FragCoord.x;
  u_xlat0.x = x_677;
  let x_679 : vec3<f32> = u_xlat0;
  let x_682 : vec4<f32> = x_163.x_ScaledScreenParams;
  let x_684 : vec2<f32> = (vec2<f32>(x_679.x, x_679.y) / vec2<f32>(x_682.x, x_682.y));
  let x_685 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_684.x, x_684.y, x_685.z);
  let x_688 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_688) + 1.0f);
  let x_692 : vec3<f32> = u_xlat0;
  let x_696 : vec4<f32> = x_163.x_ScreenParams;
  let x_698 : vec2<f32> = (vec2<f32>(x_692.x, x_692.z) * vec2<f32>(x_696.x, x_696.y));
  let x_699 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_698.x, x_698.y, x_699.z);
  let x_701 : vec3<f32> = u_xlat0;
  let x_703 : vec2<f32> = floor(vec2<f32>(x_701.x, x_701.y));
  let x_704 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_703.x, x_703.y, x_704.z);
  let x_709 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_712 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  u_xlat12.x = dot(vec3<f32>(x_709.x, x_709.y, x_709.z), vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_717 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_717);
  let x_722 : vec4<f32> = x_163.x_TimeParameters;
  let x_727 : vec2<f32> = (vec2<f32>(x_722.x, x_722.x) * vec2<f32>(0.017999999f, 0.319999993f));
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_727.x, x_727.y, x_728.z, x_728.w);
  let x_730 : vec2<f32> = u_xlat12;
  let x_735 : vec4<f32> = u_xlat1;
  u_xlat12 = ((vec2<f32>(x_730.x, x_730.x) * vec2<f32>(0.32100001f, 0.32100001f)) + vec2<f32>(x_735.x, x_735.y));
  let x_738 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_738);
  let x_740 : vec2<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_740.x, x_740.x), vec2<f32>(12.989800453f, 78.233001709f));
  let x_747 : vec2<f32> = u_xlat12;
  u_xlat12.y = dot(vec2<f32>(x_747.y, x_747.y), vec2<f32>(12.989800453f, 78.233001709f));
  let x_751 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_751);
  let x_753 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_753 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_757 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_757);
  let x_759 : vec2<f32> = u_xlat12;
  let x_761 : vec4<f32> = x_163.x_ScreenParams;
  let x_763 : vec2<f32> = (x_759 * vec2<f32>(x_761.x, x_761.y));
  let x_764 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
  let x_766 : vec3<f32> = u_xlat0;
  let x_768 : vec4<f32> = u_xlat1;
  let x_770 : vec2<f32> = (vec2<f32>(x_766.x, x_766.y) + vec2<f32>(x_768.x, x_768.y));
  let x_771 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_770.x, x_770.y, x_771.z);
  let x_773 : vec3<f32> = u_xlat0;
  let x_777 : vec2<f32> = (vec2<f32>(x_773.x, x_773.y) * vec2<f32>(0.00390625f, 0.00390625f));
  let x_778 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_777.x, x_777.y, x_778.z);
  let x_780 : vec3<f32> = u_xlat0;
  let x_782 : vec2<f32> = fract(vec2<f32>(x_780.x, x_780.y));
  let x_783 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_782.x, x_782.y, x_783.z);
  let x_790 : vec3<f32> = u_xlat0;
  let x_793 : f32 = x_163.x_GlobalMipBias.x;
  let x_794 : vec4<f32> = textureSampleBias(x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, vec2<f32>(x_790.x, x_790.y), x_793);
  u_xlat0.x = x_794.y;
  let x_798 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_798 * 0.300000012f) + 0.800000012f);
  let x_805 : f32 = u_xlat0.x;
  let x_809 : f32 = x_163.x_BA_CloudData.w;
  u_xlat0.x = ((-(x_805) * x_809) + 1.0f);
  let x_814 : f32 = u_xlat0.x;
  let x_817 : f32 = u_xlat4.z;
  u_xlat0.x = (-(x_814) + x_817);
  let x_821 : f32 = u_xlat4.w;
  u_xlat6.x = (-(x_821) + 1.0f);
  let x_826 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_826);
  let x_830 : f32 = u_xlat6.x;
  let x_832 : f32 = x_419.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_830 * x_832);
  let x_836 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_836);
  let x_840 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_840) + 1.0f);
  let x_845 : f32 = u_xlat0.x;
  u_xlat0.x = (x_845 * 10.0f);
  let x_850 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_850, 0.0f, 1.0f);
  let x_854 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_854 * -2.0f) + 3.0f);
  let x_861 : f32 = u_xlat0.x;
  let x_863 : f32 = u_xlat0.x;
  u_xlat0.x = (x_861 * x_863);
  let x_867 : f32 = u_xlat0.x;
  let x_869 : f32 = u_xlat12.x;
  u_xlat0.x = (x_867 * x_869);
  let x_873 : f32 = u_xlat0.x;
  let x_875 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_873, x_875);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0);
}

