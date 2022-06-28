struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_FaceUVSpeedX : f32,
  x_FaceUVSpeedY : f32,
  @size(8)
  padding_3 : u32,
  x_FaceColor : vec4<f32>,
  x_OutlineSoftness : f32,
  x_OutlineUVSpeedX : f32,
  x_OutlineUVSpeedY : f32,
  @size(4)
  padding_4 : u32,
  x_OutlineColor : vec4<f32>,
  x_OutlineWidth : f32,
  x_Bevel : f32,
  x_BevelOffset : f32,
  x_BevelWidth : f32,
  x_BevelClamp : f32,
  x_BevelRoundness : f32,
  x_BumpOutline : f32,
  x_BumpFace : f32,
  x_ReflectFaceColor : vec4<f32>,
  x_ReflectOutlineColor : vec4<f32>,
  x_ShaderFlags : f32,
  x_ScaleRatioA : f32,
  x_TextureWidth : f32,
  x_TextureHeight : f32,
  x_GradientScale : f32,
  x_FaceShininess : f32,
  x_OutlineShininess : f32,
}

var<private> u_xlat9 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(3) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_OutlineTex : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlatb12 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD6 : vec3<f32>;

@group(0) @binding(5) var x_Cube : texture_cube<f32>;

@group(0) @binding(11) var sampler_Cube : sampler;

var<private> u_xlatb30 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat14 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat18 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_359 : f32;
  var x_816 : vec3<f32>;
  var x_974 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD2.w;
  u_xlat9.x = x_17;
  let x_23 : f32 = vs_TEXCOORD3.w;
  u_xlat9.y = x_23;
  let x_28 : f32 = vs_TEXCOORD4.w;
  u_xlat9.z = x_28;
  let x_32 : vec3<f32> = u_xlat9;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_46 : vec3<f32> = u_xlat1;
  let x_47 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_46, x_47);
  let x_51 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_51);
  let x_61 : f32 = x_37.x_TextureWidth;
  let x_64 : f32 = x_37.x_TextureHeight;
  let x_66 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_61, x_64));
  let x_67 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_66.x, x_66.y, x_67.z, x_67.w);
  u_xlat2.z = 0.0f;
  let x_72 : vec4<f32> = u_xlat2;
  let x_76 : vec4<f32> = vs_TEXCOORD0;
  u_xlat3 = (-(vec4<f32>(x_72.x, x_72.z, x_72.z, x_72.y)) + vec4<f32>(x_76.x, x_76.y, x_76.x, x_76.y));
  let x_90 : vec4<f32> = u_xlat3;
  let x_92 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_90.x, x_90.y));
  u_xlat4.x = x_92.w;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec4<f32> = vs_TEXCOORD0;
  u_xlat2 = (vec4<f32>(x_95.x, x_95.z, x_95.z, x_95.y) + vec4<f32>(x_97.x, x_97.y, x_97.x, x_97.y));
  let x_103 : vec4<f32> = u_xlat2;
  let x_105 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_103.x, x_103.y));
  u_xlat4.y = x_105.w;
  let x_111 : vec4<f32> = u_xlat3;
  let x_113 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_111.z, x_111.w));
  u_xlat4.z = x_113.w;
  let x_119 : vec4<f32> = u_xlat2;
  let x_121 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_119.z, x_119.w));
  u_xlat4.w = x_121.w;
  let x_128 : vec4<f32> = vs_TEXCOORD0;
  let x_130 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_128.x, x_128.y));
  u_xlat28 = x_130.w;
  let x_132 : f32 = u_xlat28;
  u_xlat28 = (-(x_132) + 0.5f);
  let x_136 : f32 = u_xlat28;
  let x_140 : f32 = vs_TEXCOORD5.x;
  u_xlat28 = (x_136 + -(x_140));
  let x_143 : f32 = u_xlat28;
  let x_145 : f32 = vs_TEXCOORD5.y;
  u_xlat28 = ((x_143 * x_145) + 0.5f);
  let x_150 : f32 = x_37.x_OutlineWidth;
  let x_153 : f32 = x_37.x_ScaleRatioA;
  u_xlat2.x = (x_150 * x_153);
  let x_158 : f32 = x_37.x_OutlineSoftness;
  let x_160 : f32 = x_37.x_ScaleRatioA;
  u_xlat2.y = (x_158 * x_160);
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec2<f32> = vs_TEXCOORD5;
  let x_167 : vec2<f32> = (vec2<f32>(x_163.x, x_163.y) * vec2<f32>(x_165.y, x_165.y));
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_168.y, x_167.y, x_168.w);
  let x_171 : vec4<f32> = vs_COLOR0;
  let x_175 : vec4<f32> = x_37.x_FaceColor;
  u_xlat3 = (x_171 * x_175);
  let x_179 : f32 = vs_COLOR0.w;
  let x_182 : f32 = x_37.x_OutlineColor.w;
  u_xlat29 = (x_179 * x_182);
  let x_187 : f32 = x_37.x_FaceUVSpeedX;
  let x_190 : f32 = x_37.x_FaceUVSpeedY;
  let x_194 : vec4<f32> = x_37.x_Time;
  let x_197 : vec4<f32> = vs_TEXCOORD0;
  let x_199 : vec2<f32> = ((vec2<f32>(x_187, x_190) * vec2<f32>(x_194.y, x_194.y)) + vec2<f32>(x_197.z, x_197.w));
  let x_200 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_199.x, x_199.y, x_200.z, x_200.w);
  let x_207 : vec4<f32> = u_xlat5;
  let x_209 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, vec2<f32>(x_207.x, x_207.y));
  u_xlat5 = x_209;
  let x_210 : vec4<f32> = u_xlat3;
  let x_211 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_210 * x_211);
  let x_215 : f32 = x_37.x_OutlineUVSpeedX;
  let x_218 : f32 = x_37.x_OutlineUVSpeedY;
  let x_221 : vec4<f32> = x_37.x_Time;
  let x_225 : vec2<f32> = vs_TEXCOORD1;
  let x_226 : vec2<f32> = ((vec2<f32>(x_215, x_218) * vec2<f32>(x_221.y, x_221.y)) + x_225);
  let x_227 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_226.x, x_226.y, x_227.z, x_227.w);
  let x_234 : vec4<f32> = u_xlat5;
  let x_236 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, vec2<f32>(x_234.x, x_234.y));
  u_xlat5 = x_236;
  let x_237 : vec4<f32> = u_xlat5;
  let x_240 : vec4<f32> = x_37.x_OutlineColor;
  let x_242 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_246 : f32 = u_xlat29;
  let x_248 : f32 = u_xlat5.w;
  u_xlat6.w = (x_246 * x_248);
  let x_252 : f32 = u_xlat2.x;
  let x_255 : f32 = u_xlat28;
  u_xlat29 = ((-(x_252) * 0.5f) + x_255);
  let x_259 : f32 = u_xlat2.z;
  let x_261 : f32 = u_xlat29;
  u_xlat20 = ((x_259 * 0.5f) + x_261);
  let x_265 : f32 = u_xlat2.y;
  let x_267 : f32 = vs_TEXCOORD5.y;
  u_xlat11 = ((x_265 * x_267) + 1.0f);
  let x_270 : f32 = u_xlat20;
  let x_271 : f32 = u_xlat11;
  u_xlat11 = (x_270 / x_271);
  let x_273 : f32 = u_xlat11;
  u_xlat11 = clamp(x_273, 0.0f, 1.0f);
  let x_275 : f32 = u_xlat11;
  u_xlat11 = (-(x_275) + 1.0f);
  let x_279 : f32 = u_xlat2.x;
  let x_281 : f32 = u_xlat28;
  u_xlat28 = ((x_279 * 0.5f) + x_281);
  let x_283 : f32 = u_xlat28;
  u_xlat28 = clamp(x_283, 0.0f, 1.0f);
  let x_286 : f32 = u_xlat2.x;
  u_xlat2.x = min(x_286, 1.0f);
  let x_290 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_290);
  let x_293 : f32 = u_xlat28;
  let x_295 : f32 = u_xlat2.x;
  u_xlat2.x = (x_293 * x_295);
  let x_298 : vec4<f32> = u_xlat3;
  let x_300 : vec4<f32> = u_xlat3;
  let x_302 : vec3<f32> = (vec3<f32>(x_298.w, x_298.w, x_298.w) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat5;
  let x_307 : vec4<f32> = u_xlat6;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.w, x_307.w, x_307.w));
  let x_310 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat3;
  let x_314 : vec4<f32> = u_xlat6;
  u_xlat5 = (-(x_312) + x_314);
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec4<f32> = u_xlat5;
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_316.x, x_316.x, x_316.x, x_316.x) * x_318) + x_320);
  let x_322 : f32 = u_xlat11;
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_322, x_322, x_322, x_322) * x_324);
  let x_327 : f32 = u_xlat2.w;
  u_xlat3.x = max(x_327, 0.0001f);
  let x_331 : vec4<f32> = u_xlat2;
  let x_333 : vec4<f32> = u_xlat3;
  let x_335 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) / vec3<f32>(x_333.x, x_333.x, x_333.x));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_340 : f32 = x_37.x_ShaderFlags;
  u_xlat3.x = (x_340 * 0.5f);
  let x_347 : f32 = u_xlat3.x;
  let x_349 : f32 = u_xlat3.x;
  u_xlatb12 = (x_347 >= -(x_349));
  let x_353 : f32 = u_xlat3.x;
  u_xlat3.x = fract(abs(x_353));
  let x_357 : bool = u_xlatb12;
  if (x_357) {
    let x_363 : f32 = u_xlat3.x;
    x_359 = x_363;
  } else {
    let x_366 : f32 = u_xlat3.x;
    x_359 = -(x_366);
  }
  let x_368 : f32 = x_359;
  u_xlat3.x = x_368;
  let x_372 : f32 = u_xlat3.x;
  u_xlatb3 = (x_372 >= 0.5f);
  let x_377 : f32 = vs_TEXCOORD5.x;
  let x_380 : f32 = x_37.x_BevelOffset;
  u_xlat12.x = (x_377 + x_380);
  let x_383 : vec2<f32> = u_xlat12;
  let x_385 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_383.x, x_383.x, x_383.x, x_383.x) + x_385);
  let x_389 : f32 = x_37.x_BevelWidth;
  let x_391 : f32 = x_37.x_OutlineWidth;
  u_xlat12.x = (x_389 + x_391);
  let x_395 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_395, 0.01f);
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_399 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_403 : vec4<f32> = u_xlat4;
  let x_404 : vec2<f32> = u_xlat12;
  u_xlat4 = (x_403 / vec4<f32>(x_404.x, x_404.x, x_404.x, x_404.x));
  let x_407 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_407 + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_410, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_414 : vec4<f32> = u_xlat4;
  u_xlat5 = ((x_414 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_421 : vec4<f32> = u_xlat5;
  u_xlat5 = (-(abs(x_421)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_426 : bool = u_xlatb3;
  let x_427 : vec4<f32> = u_xlat5;
  let x_428 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_428, x_427, vec4<bool>(x_426, x_426, x_426, x_426));
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat5 = (x_432 * vec4<f32>(1.570796013f, 1.570796013f, 1.570796013f, 1.570796013f));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = sin(x_436);
  let x_438 : vec4<f32> = u_xlat4;
  let x_440 : vec4<f32> = u_xlat5;
  u_xlat5 = (-(x_438) + x_440);
  let x_444 : f32 = x_37.x_BevelRoundness;
  let x_446 : f32 = x_37.x_BevelRoundness;
  let x_448 : f32 = x_37.x_BevelRoundness;
  let x_450 : f32 = x_37.x_BevelRoundness;
  let x_451 : vec4<f32> = vec4<f32>(x_444, x_446, x_448, x_450);
  let x_457 : vec4<f32> = u_xlat5;
  let x_459 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_451.x, x_451.y, x_451.z, x_451.w) * x_457) + x_459);
  let x_463 : f32 = x_37.x_BevelClamp;
  u_xlat3.x = (-(x_463) + 1.0f);
  let x_467 : vec4<f32> = u_xlat3;
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = min(vec4<f32>(x_467.x, x_467.x, x_467.x, x_467.x), x_469);
  let x_472 : f32 = u_xlat12.x;
  let x_475 : f32 = x_37.x_Bevel;
  u_xlat3.x = (x_472 * x_475);
  let x_479 : f32 = u_xlat3.x;
  let x_482 : f32 = x_37.x_GradientScale;
  u_xlat3.x = (x_479 * x_482);
  let x_486 : f32 = u_xlat3.x;
  u_xlat3.x = (x_486 * -2.0f);
  let x_490 : vec4<f32> = u_xlat3;
  let x_492 : vec4<f32> = u_xlat4;
  u_xlat12 = (vec2<f32>(x_490.x, x_490.x) * vec2<f32>(x_492.x, x_492.z));
  let x_495 : vec4<f32> = u_xlat4;
  let x_497 : vec4<f32> = u_xlat3;
  let x_500 : vec2<f32> = u_xlat12;
  let x_503 : vec2<f32> = ((vec2<f32>(x_495.w, x_495.y) * vec2<f32>(x_497.x, x_497.x)) + -(vec2<f32>(x_500.y, x_500.x)));
  let x_504 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_504.x, x_503.x, x_503.y, x_504.w);
  u_xlat3.x = -1.0f;
  u_xlat3.w = 1.0f;
  let x_509 : vec4<f32> = u_xlat3;
  let x_511 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(vec2<f32>(x_509.z, x_509.w), vec2<f32>(x_511.z, x_511.w));
  let x_514 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_514);
  let x_516 : f32 = u_xlat30;
  let x_519 : vec2<f32> = (vec2<f32>(x_516, x_516) * vec2<f32>(1.0f, 0.0f));
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_520.x, x_519.x, x_519.y, x_520.w);
  let x_522 : f32 = u_xlat30;
  let x_524 : f32 = u_xlat3.z;
  u_xlat4.x = (x_522 * x_524);
  let x_527 : vec4<f32> = u_xlat3;
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(vec2<f32>(x_527.x, x_527.y), vec2<f32>(x_529.x, x_529.y));
  let x_532 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_532);
  u_xlat3.z = 0.0f;
  let x_535 : f32 = u_xlat30;
  let x_537 : vec4<f32> = u_xlat3;
  let x_539 : vec3<f32> = (vec3<f32>(x_535, x_535, x_535) * vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat3;
  let x_544 : vec4<f32> = u_xlat4;
  let x_546 : vec3<f32> = (vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_549 : vec4<f32> = u_xlat4;
  let x_551 : vec4<f32> = u_xlat3;
  let x_554 : vec4<f32> = u_xlat5;
  let x_557 : vec3<f32> = ((vec3<f32>(x_549.z, x_549.x, x_549.y) * vec3<f32>(x_551.y, x_551.z, x_551.x)) + -(vec3<f32>(x_554.x, x_554.y, x_554.z)));
  let x_558 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_565 : vec4<f32> = vs_TEXCOORD0;
  let x_567 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_565.z, x_565.w));
  let x_568 : vec3<f32> = vec3<f32>(x_567.x, x_567.y, x_567.w);
  let x_569 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_572 : f32 = u_xlat4.z;
  let x_574 : f32 = u_xlat4.x;
  u_xlat4.x = (x_572 * x_574);
  let x_577 : vec4<f32> = u_xlat4;
  let x_582 : vec2<f32> = ((vec2<f32>(x_577.x, x_577.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_583 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat4;
  let x_587 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(vec2<f32>(x_585.x, x_585.y), vec2<f32>(x_587.x, x_587.y));
  let x_590 : f32 = u_xlat30;
  u_xlat30 = min(x_590, 1.0f);
  let x_592 : f32 = u_xlat30;
  u_xlat30 = (-(x_592) + 1.0f);
  let x_595 : f32 = u_xlat30;
  u_xlat4.z = sqrt(x_595);
  let x_600 : f32 = x_37.x_BumpFace;
  let x_604 : f32 = x_37.x_BumpOutline;
  u_xlat30 = (-(x_600) + x_604);
  let x_606 : f32 = u_xlat28;
  let x_607 : f32 = u_xlat30;
  let x_610 : f32 = x_37.x_BumpFace;
  u_xlat30 = ((x_606 * x_607) + x_610);
  let x_612 : vec4<f32> = u_xlat4;
  let x_614 : f32 = u_xlat30;
  let x_619 : vec3<f32> = ((vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_614, x_614, x_614)) + vec3<f32>(-0.0f, -0.0f, -1.0f));
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec4<f32> = u_xlat2;
  let x_624 : vec4<f32> = u_xlat4;
  let x_628 : vec3<f32> = ((vec3<f32>(x_622.w, x_622.w, x_622.w) * vec3<f32>(x_624.x, x_624.y, x_624.z)) + vec3<f32>(0.0f, 0.0f, 1.0f));
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat3;
  let x_633 : vec4<f32> = u_xlat4;
  let x_636 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) + -(vec3<f32>(x_633.x, x_633.y, x_633.z)));
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_644);
  let x_646 : f32 = u_xlat30;
  let x_648 : vec4<f32> = u_xlat3;
  let x_650 : vec3<f32> = (vec3<f32>(x_646, x_646, x_646) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec4<f32> = u_xlat3;
  let x_657 : vec4<f32> = x_37.unity_ObjectToWorld[1i];
  let x_659 : vec3<f32> = (vec3<f32>(x_653.y, x_653.y, x_653.y) * vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_663 : vec4<f32> = x_37.unity_ObjectToWorld[0i];
  let x_665 : vec4<f32> = u_xlat3;
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665.x, x_665.x, x_665.x)) + vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_675 : vec4<f32> = x_37.unity_ObjectToWorld[2i];
  let x_677 : vec4<f32> = u_xlat3;
  let x_680 : vec4<f32> = u_xlat4;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677.z, x_677.z, x_677.z)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_687 : vec3<f32> = vs_TEXCOORD6;
  let x_688 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_687, vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : f32 = u_xlat30;
  let x_692 : f32 = u_xlat30;
  u_xlat30 = (x_691 + x_692);
  let x_694 : vec4<f32> = u_xlat4;
  let x_696 : f32 = u_xlat30;
  let x_700 : vec3<f32> = vs_TEXCOORD6;
  let x_701 : vec3<f32> = ((vec3<f32>(x_694.x, x_694.y, x_694.z) * -(vec3<f32>(x_696, x_696, x_696))) + x_700);
  let x_702 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_712 : vec4<f32> = u_xlat4;
  let x_714 : vec4<f32> = textureSample(x_Cube, sampler_Cube, vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec3<f32> = vec3<f32>(x_714.x, x_714.y, x_714.z);
  let x_716 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_720 : vec4<f32> = x_37.x_ReflectFaceColor;
  let x_725 : vec4<f32> = x_37.x_ReflectOutlineColor;
  let x_727 : vec3<f32> = (-(vec3<f32>(x_720.x, x_720.y, x_720.z)) + vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : f32 = u_xlat28;
  let x_732 : vec4<f32> = u_xlat5;
  let x_736 : vec4<f32> = x_37.x_ReflectFaceColor;
  let x_738 : vec3<f32> = ((vec3<f32>(x_730, x_730, x_730) * vec3<f32>(x_732.x, x_732.y, x_732.z)) + vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat4;
  let x_743 : vec4<f32> = u_xlat5;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_750 : f32 = x_37.x_FaceShininess;
  let x_754 : f32 = x_37.x_OutlineShininess;
  u_xlat30 = (-(x_750) + x_754);
  let x_756 : f32 = u_xlat28;
  let x_757 : f32 = u_xlat30;
  let x_760 : f32 = x_37.x_FaceShininess;
  u_xlat28 = ((x_756 * x_757) + x_760);
  let x_765 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb30 = (x_765 == 1.0f);
  let x_767 : bool = u_xlatb30;
  if (x_767) {
    let x_772 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb31 = (x_772 == 1.0f);
    let x_774 : vec4<f32> = vs_TEXCOORD3;
    let x_778 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_780 : vec3<f32> = (vec3<f32>(x_774.w, x_774.w, x_774.w) * vec3<f32>(x_778.x, x_778.y, x_778.z));
    let x_781 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
    let x_784 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_786 : vec4<f32> = vs_TEXCOORD2;
    let x_789 : vec4<f32> = u_xlat5;
    let x_791 : vec3<f32> = ((vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(x_786.w, x_786.w, x_786.w)) + vec3<f32>(x_789.x, x_789.y, x_789.z));
    let x_792 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
    let x_795 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_797 : vec4<f32> = vs_TEXCOORD4;
    let x_800 : vec4<f32> = u_xlat5;
    let x_802 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.y, x_795.z) * vec3<f32>(x_797.w, x_797.w, x_797.w)) + vec3<f32>(x_800.x, x_800.y, x_800.z));
    let x_803 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
    let x_805 : vec4<f32> = u_xlat5;
    let x_809 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_811 : vec3<f32> = (vec3<f32>(x_805.x, x_805.y, x_805.z) + vec3<f32>(x_809.x, x_809.y, x_809.z));
    let x_812 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
    let x_814 : bool = u_xlatb31;
    if (x_814) {
      let x_819 : vec4<f32> = u_xlat5;
      x_816 = vec3<f32>(x_819.x, x_819.y, x_819.z);
    } else {
      let x_822 : vec3<f32> = u_xlat9;
      x_816 = x_822;
    }
    let x_823 : vec3<f32> = x_816;
    let x_824 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
    let x_826 : vec4<f32> = u_xlat5;
    let x_830 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_832 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) + -(x_830));
    let x_833 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
    let x_835 : vec4<f32> = u_xlat5;
    let x_839 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_840 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) * x_839);
    let x_841 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_841.x, x_840.x, x_840.y, x_840.z);
    let x_845 : f32 = u_xlat5.y;
    u_xlat31 = ((x_845 * 0.25f) + 0.75f);
    let x_852 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat14 = ((x_852 * 0.5f) + 0.75f);
    let x_855 : f32 = u_xlat31;
    let x_856 : f32 = u_xlat14;
    u_xlat5.x = max(x_855, x_856);
    let x_867 : vec4<f32> = u_xlat5;
    let x_869 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_867.x, x_867.z, x_867.w));
    u_xlat5 = x_869;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_875 : vec4<f32> = u_xlat5;
  let x_878 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat31 = dot(x_875, x_878);
  let x_880 : f32 = u_xlat31;
  u_xlat31 = clamp(x_880, 0.0f, 1.0f);
  let x_882 : vec4<f32> = vs_TEXCOORD2;
  let x_884 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(vec3<f32>(x_882.x, x_882.y, x_882.z), -(vec3<f32>(x_884.x, x_884.y, x_884.z)));
  let x_889 : vec4<f32> = vs_TEXCOORD3;
  let x_891 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), -(vec3<f32>(x_891.x, x_891.y, x_891.z)));
  let x_896 : vec4<f32> = vs_TEXCOORD4;
  let x_898 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(vec3<f32>(x_896.x, x_896.y, x_896.z), -(vec3<f32>(x_898.x, x_898.y, x_898.z)));
  let x_903 : vec4<f32> = u_xlat5;
  let x_905 : vec4<f32> = u_xlat5;
  u_xlat3.x = dot(vec3<f32>(x_903.x, x_903.y, x_903.z), vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_910 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_910);
  let x_913 : vec4<f32> = u_xlat3;
  let x_915 : vec4<f32> = u_xlat5;
  let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.x, x_913.x) * vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : f32 = u_xlat31;
  let x_924 : vec4<f32> = x_37.x_LightColor0;
  let x_926 : vec3<f32> = (vec3<f32>(x_920, x_920, x_920) * vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : bool = u_xlatb30;
  if (x_929) {
    let x_933 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb30 = (x_933 == 1.0f);
    let x_935 : vec4<f32> = vs_TEXCOORD3;
    let x_938 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_940 : vec3<f32> = (vec3<f32>(x_935.w, x_935.w, x_935.w) * vec3<f32>(x_938.x, x_938.y, x_938.z));
    let x_941 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
    let x_944 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_946 : vec4<f32> = vs_TEXCOORD2;
    let x_949 : vec4<f32> = u_xlat6;
    let x_951 : vec3<f32> = ((vec3<f32>(x_944.x, x_944.y, x_944.z) * vec3<f32>(x_946.w, x_946.w, x_946.w)) + vec3<f32>(x_949.x, x_949.y, x_949.z));
    let x_952 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
    let x_955 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_957 : vec4<f32> = vs_TEXCOORD4;
    let x_960 : vec4<f32> = u_xlat6;
    let x_962 : vec3<f32> = ((vec3<f32>(x_955.x, x_955.y, x_955.z) * vec3<f32>(x_957.w, x_957.w, x_957.w)) + vec3<f32>(x_960.x, x_960.y, x_960.z));
    let x_963 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
    let x_965 : vec4<f32> = u_xlat6;
    let x_968 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_970 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) + vec3<f32>(x_968.x, x_968.y, x_968.z));
    let x_971 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
    let x_973 : bool = u_xlatb30;
    if (x_973) {
      let x_977 : vec4<f32> = u_xlat6;
      x_974 = vec3<f32>(x_977.x, x_977.y, x_977.z);
    } else {
      let x_980 : vec3<f32> = u_xlat9;
      x_974 = x_980;
    }
    let x_981 : vec3<f32> = x_974;
    u_xlat9 = x_981;
    let x_982 : vec3<f32> = u_xlat9;
    let x_984 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    u_xlat9 = (x_982 + -(x_984));
    let x_987 : vec3<f32> = u_xlat9;
    let x_989 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_990 : vec3<f32> = (x_987 * x_989);
    let x_991 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_991.x, x_990.x, x_990.y, x_990.z);
    let x_994 : f32 = u_xlat6.y;
    u_xlat9.x = (x_994 * 0.25f);
    let x_999 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat18 = (x_999 * 0.5f);
    let x_1003 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat27 = ((-(x_1003) * 0.5f) + 0.25f);
    let x_1007 : f32 = u_xlat18;
    let x_1009 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_1007, x_1009);
    let x_1012 : f32 = u_xlat27;
    let x_1014 : f32 = u_xlat9.x;
    u_xlat6.x = min(x_1012, x_1014);
    let x_1021 : vec4<f32> = u_xlat6;
    let x_1023 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_1021.x, x_1021.z, x_1021.w));
    u_xlat7 = x_1023;
    let x_1024 : vec4<f32> = u_xlat6;
    u_xlat9 = (vec3<f32>(x_1024.x, x_1024.z, x_1024.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_1032 : vec3<f32> = u_xlat9;
    let x_1033 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_1032);
    u_xlat8 = x_1033;
    let x_1034 : vec4<f32> = u_xlat6;
    u_xlat9 = (vec3<f32>(x_1034.x, x_1034.z, x_1034.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_1041 : vec3<f32> = u_xlat9;
    let x_1042 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_1041);
    u_xlat6 = x_1042;
    u_xlat5.w = 1.0f;
    let x_1044 : vec4<f32> = u_xlat7;
    let x_1045 : vec4<f32> = u_xlat5;
    u_xlat7.x = dot(x_1044, x_1045);
    let x_1048 : vec4<f32> = u_xlat8;
    let x_1049 : vec4<f32> = u_xlat5;
    u_xlat7.y = dot(x_1048, x_1049);
    let x_1052 : vec4<f32> = u_xlat6;
    let x_1053 : vec4<f32> = u_xlat5;
    u_xlat7.z = dot(x_1052, x_1053);
  } else {
    u_xlat5.w = 1.0f;
    let x_1059 : vec4<f32> = x_37.unity_SHAr;
    let x_1060 : vec4<f32> = u_xlat5;
    u_xlat7.x = dot(x_1059, x_1060);
    let x_1065 : vec4<f32> = x_37.unity_SHAg;
    let x_1066 : vec4<f32> = u_xlat5;
    u_xlat7.y = dot(x_1065, x_1066);
    let x_1071 : vec4<f32> = x_37.unity_SHAb;
    let x_1072 : vec4<f32> = u_xlat5;
    u_xlat7.z = dot(x_1071, x_1072);
  }
  let x_1075 : vec4<f32> = u_xlat7;
  let x_1078 : vec3<f32> = vs_TEXCOORD7;
  let x_1079 : vec3<f32> = (vec3<f32>(x_1075.x, x_1075.y, x_1075.z) + x_1078);
  let x_1080 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1080.x, x_1079.x, x_1079.y, x_1079.z);
  let x_1082 : vec3<f32> = u_xlat1;
  let x_1083 : vec4<f32> = u_xlat0;
  let x_1087 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1082 * vec3<f32>(x_1083.x, x_1083.x, x_1083.x)) + vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : vec3<f32> = u_xlat1;
  let x_1091 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_1090, x_1091);
  let x_1095 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1095);
  let x_1098 : vec4<f32> = u_xlat0;
  let x_1100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1098.x, x_1098.x, x_1098.x) * x_1100);
  let x_1102 : vec4<f32> = u_xlat5;
  let x_1105 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat0.x = dot(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1109 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_1109, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_1112 : vec4<f32> = u_xlat5;
  let x_1114 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1112.x, x_1112.y, x_1112.z), x_1114);
  let x_1118 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1118, 0.0f);
  let x_1122 : f32 = u_xlat28;
  u_xlat10.x = (x_1122 * 128.0f);
  let x_1127 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1127);
  let x_1131 : f32 = u_xlat1.x;
  let x_1133 : f32 = u_xlat10.x;
  u_xlat1.x = (x_1131 * x_1133);
  let x_1137 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1137);
  let x_1140 : vec4<f32> = u_xlat2;
  let x_1142 : vec4<f32> = u_xlat3;
  u_xlat10 = (vec3<f32>(x_1140.x, x_1140.y, x_1140.z) * vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : vec4<f32> = u_xlat3;
  let x_1149 : vec4<f32> = x_37.x_SpecColor;
  let x_1151 : vec3<f32> = (vec3<f32>(x_1145.x, x_1145.y, x_1145.z) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1154 : vec3<f32> = u_xlat1;
  let x_1156 : vec4<f32> = u_xlat3;
  let x_1158 : vec3<f32> = (vec3<f32>(x_1154.x, x_1154.x, x_1154.x) * vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1161 : vec3<f32> = u_xlat10;
  let x_1162 : vec4<f32> = u_xlat0;
  let x_1165 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_1161 * vec3<f32>(x_1162.x, x_1162.x, x_1162.x)) + vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : vec4<f32> = u_xlat2;
  let x_1170 : vec4<f32> = u_xlat0;
  let x_1173 : vec3<f32> = u_xlat1;
  let x_1174 : vec3<f32> = ((vec3<f32>(x_1168.x, x_1168.y, x_1168.z) * vec3<f32>(x_1170.y, x_1170.z, x_1170.w)) + x_1173);
  let x_1175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
  let x_1179 : vec4<f32> = u_xlat4;
  let x_1181 : vec4<f32> = u_xlat2;
  let x_1184 : vec4<f32> = u_xlat0;
  let x_1186 : vec3<f32> = ((vec3<f32>(x_1179.x, x_1179.y, x_1179.z) * vec3<f32>(x_1181.w, x_1181.w, x_1181.w)) + vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1190 : f32 = u_xlat2.w;
  SV_Target0.w = x_1190;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD5_param : vec2<f32>, @location(6) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(7) vs_TEXCOORD6_param : vec3<f32>, @location(8) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

