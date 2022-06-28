struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat24 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat18 : vec2<f32>;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(10) var sampler_Noise : sampler;

var<private> u_xlat26 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(11) var sampler_Normal : sampler;

var<private> u_xlatb25 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_420 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat24;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_52 : vec2<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_52);
  let x_54 : vec2<f32> = vec2<f32>(x_53.x, x_53.w);
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_54.x, x_54.y, x_55.z, x_55.w);
  let x_58 : vec3<f32> = vs_TEXCOORD4;
  let x_63 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat3 = (vec3<f32>(x_58.z, x_58.y, x_58.x) + -(vec3<f32>(x_63.z, x_63.y, x_63.x)));
  let x_68 : vec3<f32> = u_xlat3;
  let x_72 : vec2<f32> = (vec2<f32>(x_68.x, x_68.z) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_73 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_73.x, x_72.x, x_73.z, x_72.y);
  let x_79 : f32 = x_18.x_Cutoff;
  let x_81 : f32 = x_18.x_Cutoff;
  u_xlat25 = (x_79 + x_81);
  let x_86 : f32 = u_xlat3.y;
  let x_89 : f32 = u_xlat25;
  u_xlat4.x = ((x_86 * 2.0f) + x_89);
  let x_95 : f32 = u_xlat3.y;
  let x_99 : f32 = x_18.x_Cutoff;
  u_xlat5.x = ((x_95 * 4.0f) + x_99);
  let x_104 : f32 = x_18.x_bounds.y;
  u_xlat25 = (x_104 + 0.200000003f);
  let x_113 : vec4<f32> = u_xlat4;
  let x_115 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_113.x, x_113.y));
  u_xlat18.x = x_115.x;
  let x_120 : f32 = u_xlat4.w;
  u_xlat5.y = x_120;
  let x_126 : vec3<f32> = u_xlat5;
  let x_128 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_126.x, x_126.y));
  u_xlat26 = x_128.x;
  let x_130 : vec2<f32> = u_xlat18;
  let x_132 : f32 = u_xlat26;
  u_xlat18.x = dot(vec2<f32>(x_130.x, x_130.x), vec2<f32>(x_132, x_132));
  let x_136 : f32 = u_xlat25;
  u_xlat26 = (x_136 * 0.5f);
  let x_140 : f32 = x_18.x_Cutoff;
  let x_141 : f32 = u_xlat25;
  let x_143 : f32 = u_xlat26;
  u_xlat25 = ((x_140 * x_141) + -(x_143));
  let x_150 : f32 = u_xlat3.y;
  let x_151 : f32 = u_xlat25;
  u_xlatb26 = (x_150 >= x_151);
  let x_153 : f32 = u_xlat25;
  let x_156 : f32 = x_18.x_EdgeSizeBot;
  u_xlat3.x = (x_153 + -(x_156));
  let x_161 : f32 = u_xlat25;
  let x_163 : f32 = u_xlat3.x;
  u_xlat19 = (x_161 + -(x_163));
  let x_167 : f32 = u_xlat3.x;
  let x_170 : f32 = u_xlat3.y;
  u_xlat3.x = (-(x_167) + x_170);
  let x_174 : f32 = u_xlat19;
  u_xlat19 = (1.0f / x_174);
  let x_176 : f32 = u_xlat19;
  let x_178 : f32 = u_xlat3.x;
  u_xlat3.x = (x_176 * x_178);
  let x_182 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_182, 0.0f, 1.0f);
  let x_187 : f32 = u_xlat3.x;
  u_xlat19 = ((x_187 * -2.0f) + 3.0f);
  let x_193 : f32 = u_xlat3.x;
  let x_195 : f32 = u_xlat3.x;
  u_xlat3.x = (x_193 * x_195);
  let x_199 : f32 = u_xlat25;
  let x_202 : f32 = x_18.x_EdgeSizeTop;
  u_xlat27 = (x_199 + x_202);
  let x_204 : f32 = u_xlat25;
  let x_205 : f32 = u_xlat27;
  u_xlat25 = (x_204 + -(x_205));
  let x_209 : f32 = u_xlat27;
  let x_212 : f32 = u_xlat3.y;
  u_xlat11.x = (-(x_209) + x_212);
  let x_215 : f32 = u_xlat25;
  u_xlat25 = (1.0f / x_215);
  let x_217 : f32 = u_xlat25;
  let x_219 : f32 = u_xlat11.x;
  u_xlat25 = (x_217 * x_219);
  let x_221 : f32 = u_xlat25;
  u_xlat25 = clamp(x_221, 0.0f, 1.0f);
  let x_223 : f32 = u_xlat25;
  u_xlat11.x = ((x_223 * -2.0f) + 3.0f);
  let x_227 : f32 = u_xlat25;
  let x_228 : f32 = u_xlat25;
  u_xlat25 = (x_227 * x_228);
  let x_230 : f32 = u_xlat25;
  let x_232 : f32 = u_xlat11.x;
  u_xlat25 = (x_230 * x_232);
  let x_239 : vec2<f32> = vs_TEXCOORD0;
  let x_240 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_239);
  let x_241 : vec3<f32> = vec3<f32>(x_240.x, x_240.y, x_240.z);
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_257 : vec2<f32> = vs_TEXCOORD0;
  let x_258 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_257);
  u_xlat6 = vec3<f32>(x_258.x, x_258.y, x_258.w);
  let x_262 : f32 = u_xlat6.z;
  let x_264 : f32 = u_xlat6.x;
  u_xlat6.x = (x_262 * x_264);
  let x_267 : vec3<f32> = u_xlat6;
  let x_273 : vec2<f32> = ((vec2<f32>(x_267.x, x_267.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_274 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_273.x, x_273.y, x_274.z);
  let x_276 : vec3<f32> = u_xlat6;
  let x_278 : vec3<f32> = u_xlat6;
  u_xlat11.x = dot(vec2<f32>(x_276.x, x_276.y), vec2<f32>(x_278.x, x_278.y));
  let x_283 : f32 = u_xlat11.x;
  u_xlat11.x = min(x_283, 1.0f);
  let x_287 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_287) + 1.0f);
  let x_292 : f32 = u_xlat11.x;
  u_xlat6.z = sqrt(x_292);
  let x_295 : vec4<f32> = u_xlat2;
  let x_299 : f32 = x_18.x_Metallic;
  let x_302 : f32 = x_18.x_Glossiness;
  let x_304 : vec2<f32> = (vec2<f32>(x_295.x, x_295.y) * vec2<f32>(x_299, x_302));
  let x_305 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_304.x, x_304.y, x_305.z, x_305.w);
  let x_307 : f32 = u_xlat19;
  let x_310 : f32 = u_xlat3.x;
  u_xlat3.x = ((-(x_307) * x_310) + 1.0f);
  let x_315 : f32 = u_xlat2.x;
  let x_317 : f32 = u_xlat3.x;
  u_xlat2.x = (x_315 * x_317);
  let x_320 : bool = u_xlatb26;
  u_xlat26 = select(1.0f, 0.0f, x_320);
  let x_323 : f32 = u_xlat18.x;
  let x_324 : f32 = u_xlat25;
  let x_326 : f32 = u_xlat26;
  u_xlat25 = ((x_323 * x_324) + x_326);
  let x_328 : f32 = u_xlat25;
  let x_330 : f32 = x_18.x_Cutoff;
  u_xlat25 = (x_328 + -(x_330));
  let x_333 : f32 = u_xlat25;
  let x_336 : f32 = x_18.x_Cutoff2;
  u_xlat25 = (x_333 + -(x_336));
  let x_340 : f32 = u_xlat25;
  u_xlatb25 = (x_340 < 0.0f);
  let x_342 : bool = u_xlatb25;
  if (((select(0i, 1i, x_342) * -1i) != 0i)) {
    discard;
  }
  let x_351 : vec3<f32> = vs_TEXCOORD4;
  let x_355 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat18 = (vec2<f32>(x_351.y, x_351.y) * vec2<f32>(x_355.x, x_355.y));
  let x_359 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_361 : vec3<f32> = vs_TEXCOORD4;
  let x_364 : vec2<f32> = u_xlat18;
  u_xlat18 = ((vec2<f32>(x_359.x, x_359.y) * vec2<f32>(x_361.x, x_361.x)) + x_364);
  let x_368 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_370 : vec3<f32> = vs_TEXCOORD4;
  let x_373 : vec2<f32> = u_xlat18;
  u_xlat18 = ((vec2<f32>(x_368.x, x_368.y) * vec2<f32>(x_370.z, x_370.z)) + x_373);
  let x_375 : vec2<f32> = u_xlat18;
  let x_377 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat18 = (x_375 + vec2<f32>(x_377.x, x_377.y));
  let x_382 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_382 == 1.0f);
  let x_384 : bool = u_xlatb25;
  if (x_384) {
    let x_388 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_388 == 1.0f);
    let x_390 : vec3<f32> = vs_TEXCOORD4;
    let x_394 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat11 = (vec3<f32>(x_390.y, x_390.y, x_390.y) * vec3<f32>(x_394.x, x_394.y, x_394.z));
    let x_398 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_400 : vec3<f32> = vs_TEXCOORD4;
    let x_403 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_400.x, x_400.x, x_400.x)) + x_403);
    let x_406 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_408 : vec3<f32> = vs_TEXCOORD4;
    let x_411 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_406.x, x_406.y, x_406.z) * vec3<f32>(x_408.z, x_408.z, x_408.z)) + x_411);
    let x_413 : vec3<f32> = u_xlat11;
    let x_415 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat11 = (x_413 + vec3<f32>(x_415.x, x_415.y, x_415.z));
    let x_418 : bool = u_xlatb25;
    if (x_418) {
      let x_423 : vec3<f32> = u_xlat11;
      x_420 = x_423;
    } else {
      let x_425 : vec3<f32> = vs_TEXCOORD4;
      x_420 = x_425;
    }
    let x_426 : vec3<f32> = x_420;
    u_xlat11 = x_426;
    let x_427 : vec3<f32> = u_xlat11;
    let x_430 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    u_xlat11 = (x_427 + -(x_430));
    let x_434 : vec3<f32> = u_xlat11;
    let x_437 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_438 : vec3<f32> = (x_434 * x_437);
    let x_439 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_439.x, x_438.x, x_438.y, x_438.z);
    let x_442 : f32 = u_xlat7.y;
    u_xlat25 = ((x_442 * 0.25f) + 0.75f);
    let x_448 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat11.x = ((x_448 * 0.5f) + 0.75f);
    let x_452 : f32 = u_xlat25;
    let x_454 : f32 = u_xlat11.x;
    u_xlat7.x = max(x_452, x_454);
    let x_465 : vec4<f32> = u_xlat7;
    let x_467 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_465.x, x_465.z, x_465.w));
    u_xlat7 = x_467;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_473 : vec4<f32> = u_xlat7;
  let x_475 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_473, x_475);
  let x_477 : f32 = u_xlat25;
  u_xlat25 = clamp(x_477, 0.0f, 1.0f);
  let x_484 : vec2<f32> = u_xlat18;
  let x_485 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_484);
  u_xlat18.x = x_485.w;
  let x_488 : f32 = u_xlat25;
  let x_490 : f32 = u_xlat18.x;
  u_xlat25 = (x_488 * x_490);
  let x_493 : vec3<f32> = vs_TEXCOORD1;
  let x_494 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_493, x_494);
  let x_498 : vec3<f32> = vs_TEXCOORD2;
  let x_499 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_498, x_499);
  let x_503 : vec3<f32> = vs_TEXCOORD3;
  let x_504 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_503, x_504);
  let x_507 : vec4<f32> = u_xlat7;
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat18.x = dot(vec3<f32>(x_507.x, x_507.y, x_507.z), vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_514 : f32 = u_xlat18.x;
  u_xlat18.x = inverseSqrt(x_514);
  let x_517 : vec2<f32> = u_xlat18;
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat11 = (vec3<f32>(x_517.x, x_517.x, x_517.x) * vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : f32 = u_xlat25;
  let x_526 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_522, x_522, x_522) * vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat4;
  let x_532 : vec4<f32> = x_18.x_Color;
  let x_537 : vec3<f32> = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_532.x, x_532.y, x_532.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat2;
  let x_542 : vec4<f32> = u_xlat4;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.x, x_540.x, x_540.x) * vec3<f32>(x_542.x, x_542.y, x_542.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_548 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : f32 = u_xlat2.x;
  u_xlat25 = ((-(x_551) * 0.959999979f) + 0.959999979f);
  let x_556 : f32 = u_xlat25;
  let x_558 : vec3<f32> = u_xlat5;
  let x_559 : vec3<f32> = (vec3<f32>(x_556, x_556, x_556) * x_558);
  let x_560 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_559.x, x_560.y, x_559.y, x_559.z);
  let x_563 : f32 = u_xlat2.y;
  let x_566 : f32 = u_xlat3.x;
  u_xlat25 = ((-(x_563) * x_566) + 1.0f);
  let x_569 : vec3<f32> = u_xlat0;
  let x_570 : f32 = u_xlat24;
  let x_574 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_569 * vec3<f32>(x_570, x_570, x_570)) + vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec3<f32> = u_xlat0;
  let x_578 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_577, x_578);
  let x_580 : f32 = u_xlat24;
  u_xlat24 = max(x_580, 0.001f);
  let x_583 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_583);
  let x_585 : f32 = u_xlat24;
  let x_587 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_585, x_585, x_585) * x_587);
  let x_589 : vec3<f32> = u_xlat11;
  let x_590 : vec3<f32> = u_xlat1;
  u_xlat24 = dot(x_589, x_590);
  let x_592 : vec3<f32> = u_xlat11;
  let x_594 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_592, vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_599 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_599, 0.0f, 1.0f);
  let x_603 : vec3<f32> = u_xlat11;
  let x_604 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(x_603, x_604);
  let x_606 : f32 = u_xlat9;
  u_xlat9 = clamp(x_606, 0.0f, 1.0f);
  let x_609 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_611 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_609.x, x_609.y, x_609.z), x_611);
  let x_615 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_615, 0.0f, 1.0f);
  let x_620 : f32 = u_xlat0.x;
  let x_622 : f32 = u_xlat0.x;
  u_xlat8.x = (x_620 * x_622);
  let x_625 : vec3<f32> = u_xlat8;
  let x_627 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_625.x, x_625.x), vec2<f32>(x_627, x_627));
  let x_632 : f32 = u_xlat8.x;
  u_xlat8.x = (x_632 + -0.5f);
  let x_638 : f32 = u_xlat1.x;
  u_xlat16 = (-(x_638) + 1.0f);
  let x_642 : f32 = u_xlat16;
  let x_643 : f32 = u_xlat16;
  u_xlat17 = (x_642 * x_643);
  let x_645 : f32 = u_xlat17;
  let x_646 : f32 = u_xlat17;
  u_xlat17 = (x_645 * x_646);
  let x_648 : f32 = u_xlat16;
  let x_649 : f32 = u_xlat17;
  u_xlat16 = (x_648 * x_649);
  let x_652 : f32 = u_xlat8.x;
  let x_653 : f32 = u_xlat16;
  u_xlat16 = ((x_652 * x_653) + 1.0f);
  let x_656 : f32 = u_xlat24;
  u_xlat17 = (-(abs(x_656)) + 1.0f);
  let x_661 : f32 = u_xlat17;
  let x_662 : f32 = u_xlat17;
  u_xlat10 = (x_661 * x_662);
  let x_664 : f32 = u_xlat10;
  let x_665 : f32 = u_xlat10;
  u_xlat10 = (x_664 * x_665);
  let x_667 : f32 = u_xlat17;
  let x_668 : f32 = u_xlat10;
  u_xlat17 = (x_667 * x_668);
  let x_671 : f32 = u_xlat8.x;
  let x_672 : f32 = u_xlat17;
  u_xlat8.x = ((x_671 * x_672) + 1.0f);
  let x_677 : f32 = u_xlat8.x;
  let x_678 : f32 = u_xlat16;
  u_xlat8.x = (x_677 * x_678);
  let x_681 : f32 = u_xlat25;
  let x_682 : f32 = u_xlat25;
  u_xlat16 = (x_681 * x_682);
  let x_684 : f32 = u_xlat16;
  u_xlat16 = max(x_684, 0.002f);
  let x_687 : f32 = u_xlat16;
  u_xlat17 = (-(x_687) + 1.0f);
  let x_690 : f32 = u_xlat24;
  let x_692 : f32 = u_xlat17;
  let x_694 : f32 = u_xlat16;
  u_xlat25 = ((abs(x_690) * x_692) + x_694);
  let x_697 : f32 = u_xlat1.x;
  let x_698 : f32 = u_xlat17;
  let x_700 : f32 = u_xlat16;
  u_xlat17 = ((x_697 * x_698) + x_700);
  let x_702 : f32 = u_xlat24;
  let x_704 : f32 = u_xlat17;
  u_xlat24 = (abs(x_702) * x_704);
  let x_707 : f32 = u_xlat1.x;
  let x_708 : f32 = u_xlat25;
  let x_710 : f32 = u_xlat24;
  u_xlat24 = ((x_707 * x_708) + x_710);
  let x_712 : f32 = u_xlat24;
  u_xlat24 = (x_712 + 0.00001f);
  let x_715 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_715);
  let x_717 : f32 = u_xlat16;
  let x_718 : f32 = u_xlat16;
  u_xlat16 = (x_717 * x_718);
  let x_720 : f32 = u_xlat9;
  let x_721 : f32 = u_xlat16;
  let x_723 : f32 = u_xlat9;
  u_xlat17 = ((x_720 * x_721) + -(x_723));
  let x_726 : f32 = u_xlat17;
  let x_727 : f32 = u_xlat9;
  u_xlat9 = ((x_726 * x_727) + 1.0f);
  let x_730 : f32 = u_xlat16;
  u_xlat16 = (x_730 * 0.318309873f);
  let x_733 : f32 = u_xlat9;
  let x_734 : f32 = u_xlat9;
  u_xlat9 = ((x_733 * x_734) + 0.0000001f);
  let x_738 : f32 = u_xlat16;
  let x_739 : f32 = u_xlat9;
  u_xlat16 = (x_738 / x_739);
  let x_741 : f32 = u_xlat16;
  let x_742 : f32 = u_xlat24;
  u_xlat8.y = (x_741 * x_742);
  let x_745 : vec3<f32> = u_xlat1;
  let x_747 : vec3<f32> = u_xlat8;
  let x_749 : vec2<f32> = (vec2<f32>(x_745.x, x_745.x) * vec2<f32>(x_747.x, x_747.y));
  let x_750 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_749.x, x_749.y, x_750.z);
  let x_753 : f32 = u_xlat8.y;
  u_xlat16 = (x_753 * 3.141592741f);
  let x_756 : f32 = u_xlat16;
  u_xlat16 = max(x_756, 0.0f);
  let x_758 : vec4<f32> = u_xlat4;
  let x_760 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_758.x, x_758.y, x_758.z), vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_764 : f32 = u_xlat24;
  u_xlatb24 = !((x_764 == 0.0f));
  let x_766 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_766);
  let x_768 : f32 = u_xlat24;
  let x_769 : f32 = u_xlat16;
  u_xlat16 = (x_768 * x_769);
  let x_771 : vec3<f32> = u_xlat8;
  let x_773 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_771.x, x_771.x, x_771.x) * x_773);
  let x_775 : vec3<f32> = u_xlat6;
  let x_776 : f32 = u_xlat16;
  u_xlat8 = (x_775 * vec3<f32>(x_776, x_776, x_776));
  let x_780 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_780) + 1.0f);
  let x_785 : f32 = u_xlat0.x;
  let x_787 : f32 = u_xlat0.x;
  u_xlat25 = (x_785 * x_787);
  let x_789 : f32 = u_xlat25;
  let x_790 : f32 = u_xlat25;
  u_xlat25 = (x_789 * x_790);
  let x_793 : f32 = u_xlat0.x;
  let x_794 : f32 = u_xlat25;
  u_xlat0.x = (x_793 * x_794);
  let x_797 : vec4<f32> = u_xlat4;
  u_xlat3 = (-(vec3<f32>(x_797.x, x_797.y, x_797.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_802 : vec3<f32> = u_xlat3;
  let x_803 : vec3<f32> = u_xlat0;
  let x_806 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_802 * vec3<f32>(x_803.x, x_803.x, x_803.x)) + vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec3<f32> = u_xlat8;
  let x_810 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_809 * x_810);
  let x_814 : vec4<f32> = u_xlat2;
  let x_816 : vec3<f32> = u_xlat1;
  let x_818 : vec3<f32> = u_xlat0;
  let x_819 : vec3<f32> = ((vec3<f32>(x_814.x, x_814.z, x_814.w) * x_816) + x_818);
  let x_820 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

