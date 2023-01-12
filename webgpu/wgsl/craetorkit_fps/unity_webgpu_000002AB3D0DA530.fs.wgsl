struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Specular : texture_2d<f32>;

@group(0) @binding(11) var sampler_Specular : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlatb29 : bool;
  var x_224 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat30 : f32;
  var u_xlatb30 : bool;
  var u_xlat11 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat10 : f32;
  var u_xlatb27 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat27;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat28;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_71);
  u_xlat3 = x_72;
  let x_74 : vec4<f32> = u_xlat3;
  let x_77 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_74 * x_77);
  let x_85 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_85);
  let x_87 : vec2<f32> = vec2<f32>(x_86.x, x_86.w);
  let x_88 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_93 : f32 = u_xlat5.x;
  let x_97 : f32 = x_18.x_Metallic;
  u_xlat28 = (x_93 * x_97);
  let x_104 : vec2<f32> = vs_TEXCOORD0;
  let x_105 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_104);
  let x_106 : vec3<f32> = vec3<f32>(x_105.x, x_105.y, x_105.w);
  let x_107 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_106.x, x_107.y, x_106.y, x_106.z);
  let x_111 : f32 = u_xlat5.w;
  let x_113 : f32 = u_xlat5.x;
  u_xlat5.x = (x_111 * x_113);
  let x_117 : vec4<f32> = u_xlat5;
  let x_124 : vec2<f32> = ((vec2<f32>(x_117.x, x_117.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_125 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_124.x, x_124.y, x_125.z);
  let x_128 : vec3<f32> = u_xlat6;
  let x_130 : vec3<f32> = u_xlat6;
  u_xlat29 = dot(vec2<f32>(x_128.x, x_128.y), vec2<f32>(x_130.x, x_130.y));
  let x_133 : f32 = u_xlat29;
  u_xlat29 = min(x_133, 1.0f);
  let x_136 : f32 = u_xlat29;
  u_xlat29 = (-(x_136) + 1.0f);
  let x_139 : f32 = u_xlat29;
  u_xlat6.z = sqrt(x_139);
  let x_144 : vec3<f32> = vs_TEXCOORD4;
  let x_149 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec4<f32>(x_144.y, x_144.y, x_144.y, x_144.y) * x_149);
  let x_152 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_153 : vec3<f32> = vs_TEXCOORD4;
  let x_156 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_152 * vec4<f32>(x_153.x, x_153.x, x_153.x, x_153.x)) + x_156);
  let x_159 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_160 : vec3<f32> = vs_TEXCOORD4;
  let x_163 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_159 * vec4<f32>(x_160.z, x_160.z, x_160.z, x_160.z)) + x_163);
  let x_165 : vec4<f32> = u_xlat7;
  let x_168 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_165 + x_168);
  let x_175 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb29 = (x_175 == 1.0f);
  let x_177 : bool = u_xlatb29;
  if (x_177) {
    let x_182 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb29 = (x_182 == 1.0f);
    let x_184 : vec3<f32> = vs_TEXCOORD4;
    let x_188 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_190 : vec3<f32> = (vec3<f32>(x_184.y, x_184.y, x_184.y) * vec3<f32>(x_188.x, x_188.y, x_188.z));
    let x_191 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_190.x, x_191.y, x_190.y, x_190.z);
    let x_194 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_196 : vec3<f32> = vs_TEXCOORD4;
    let x_199 : vec4<f32> = u_xlat5;
    let x_201 : vec3<f32> = ((vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_196.x, x_196.x, x_196.x)) + vec3<f32>(x_199.x, x_199.z, x_199.w));
    let x_202 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_201.x, x_202.y, x_201.y, x_201.z);
    let x_205 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_207 : vec3<f32> = vs_TEXCOORD4;
    let x_210 : vec4<f32> = u_xlat5;
    let x_212 : vec3<f32> = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.z, x_207.z, x_207.z)) + vec3<f32>(x_210.x, x_210.z, x_210.w));
    let x_213 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_212.x, x_213.y, x_212.y, x_212.z);
    let x_215 : vec4<f32> = u_xlat5;
    let x_218 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_220 : vec3<f32> = (vec3<f32>(x_215.x, x_215.z, x_215.w) + vec3<f32>(x_218.x, x_218.y, x_218.z));
    let x_221 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_220.x, x_221.y, x_220.y, x_220.z);
    let x_223 : bool = u_xlatb29;
    if (x_223) {
      let x_227 : vec4<f32> = u_xlat5;
      x_224 = vec3<f32>(x_227.x, x_227.z, x_227.w);
    } else {
      let x_230 : vec3<f32> = vs_TEXCOORD4;
      x_224 = x_230;
    }
    let x_231 : vec3<f32> = x_224;
    let x_232 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_231.x, x_232.y, x_231.y, x_231.z);
    let x_234 : vec4<f32> = u_xlat5;
    let x_238 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_240 : vec3<f32> = (vec3<f32>(x_234.x, x_234.z, x_234.w) + -(x_238));
    let x_241 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_240.x, x_241.y, x_240.y, x_240.z);
    let x_244 : vec4<f32> = u_xlat5;
    let x_248 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_249 : vec3<f32> = (vec3<f32>(x_244.x, x_244.z, x_244.w) * x_248);
    let x_250 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_250.x, x_249.x, x_249.y, x_249.z);
    let x_253 : f32 = u_xlat8.y;
    u_xlat29 = ((x_253 * 0.25f) + 0.75f);
    let x_260 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat30 = ((x_260 * 0.5f) + 0.75f);
    let x_264 : f32 = u_xlat29;
    let x_265 : f32 = u_xlat30;
    u_xlat8.x = max(x_264, x_265);
    let x_276 : vec4<f32> = u_xlat8;
    let x_278 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_276.x, x_276.z, x_276.w));
    u_xlat8 = x_278;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_284 : vec4<f32> = u_xlat8;
  let x_286 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat29 = dot(x_284, x_286);
  let x_288 : f32 = u_xlat29;
  u_xlat29 = clamp(x_288, 0.0f, 1.0f);
  let x_293 : f32 = u_xlat7.z;
  u_xlatb30 = (0.0f < x_293);
  let x_295 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_295);
  let x_297 : vec4<f32> = u_xlat7;
  let x_299 : vec4<f32> = u_xlat7;
  let x_301 : vec2<f32> = (vec2<f32>(x_297.x, x_297.y) / vec2<f32>(x_299.w, x_299.w));
  let x_302 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_301.x, x_302.y, x_301.y, x_302.w);
  let x_304 : vec4<f32> = u_xlat5;
  let x_307 : vec2<f32> = (vec2<f32>(x_304.x, x_304.z) + vec2<f32>(0.5f, 0.5f));
  let x_308 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_307.x, x_308.y, x_307.y, x_308.w);
  let x_315 : vec4<f32> = u_xlat5;
  let x_317 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_315.x, x_315.z));
  u_xlat5.x = x_317.w;
  let x_320 : f32 = u_xlat30;
  let x_322 : f32 = u_xlat5.x;
  u_xlat30 = (x_320 * x_322);
  let x_324 : vec4<f32> = u_xlat7;
  let x_326 : vec4<f32> = u_xlat7;
  u_xlat5.x = dot(vec3<f32>(x_324.x, x_324.y, x_324.z), vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_335 : vec4<f32> = u_xlat5;
  let x_337 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_335.x, x_335.x));
  u_xlat5.x = x_337.x;
  let x_340 : f32 = u_xlat30;
  let x_342 : f32 = u_xlat5.x;
  u_xlat30 = (x_340 * x_342);
  let x_344 : f32 = u_xlat29;
  let x_345 : f32 = u_xlat30;
  u_xlat29 = (x_344 * x_345);
  let x_348 : vec3<f32> = vs_TEXCOORD1;
  let x_349 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_348, x_349);
  let x_353 : vec3<f32> = vs_TEXCOORD2;
  let x_354 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_353, x_354);
  let x_358 : vec3<f32> = vs_TEXCOORD3;
  let x_359 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_358, x_359);
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_367);
  let x_369 : f32 = u_xlat30;
  let x_371 : vec4<f32> = u_xlat7;
  let x_373 : vec3<f32> = (vec3<f32>(x_369, x_369, x_369) * vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_373.x, x_374.y, x_373.y, x_373.z);
  let x_376 : f32 = u_xlat29;
  let x_380 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_376, x_376, x_376) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat3;
  let x_386 : vec4<f32> = x_18.x_Color;
  let x_391 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(x_386.x, x_386.y, x_386.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_392 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : f32 = u_xlat28;
  let x_396 : vec4<f32> = u_xlat3;
  let x_401 : vec3<f32> = ((vec3<f32>(x_394, x_394, x_394) * vec3<f32>(x_396.x, x_396.y, x_396.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_402 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : f32 = u_xlat28;
  u_xlat28 = ((-(x_404) * 0.959999979f) + 0.959999979f);
  let x_409 : f32 = u_xlat28;
  let x_411 : vec4<f32> = u_xlat4;
  let x_413 : vec3<f32> = (vec3<f32>(x_409, x_409, x_409) * vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : f32 = u_xlat5.y;
  let x_421 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_417) * x_421) + 1.0f);
  let x_424 : vec3<f32> = u_xlat0;
  let x_425 : f32 = u_xlat27;
  let x_428 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_424 * vec3<f32>(x_425, x_425, x_425)) + x_428);
  let x_430 : vec3<f32> = u_xlat0;
  let x_431 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_430, x_431);
  let x_433 : f32 = u_xlat27;
  u_xlat27 = max(x_433, 0.001f);
  let x_436 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_436);
  let x_438 : f32 = u_xlat27;
  let x_440 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_438, x_438, x_438) * x_440);
  let x_442 : vec4<f32> = u_xlat5;
  let x_444 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(vec3<f32>(x_442.x, x_442.z, x_442.w), x_444);
  let x_446 : vec4<f32> = u_xlat5;
  let x_448 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_446.x, x_446.z, x_446.w), x_448);
  let x_452 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_452, 0.0f, 1.0f);
  let x_456 : vec4<f32> = u_xlat5;
  let x_458 : vec3<f32> = u_xlat0;
  u_xlat11 = dot(vec3<f32>(x_456.x, x_456.z, x_456.w), x_458);
  let x_460 : f32 = u_xlat11;
  u_xlat11 = clamp(x_460, 0.0f, 1.0f);
  let x_462 : vec3<f32> = u_xlat1;
  let x_463 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_462, x_463);
  let x_467 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_467, 0.0f, 1.0f);
  let x_472 : f32 = u_xlat0.x;
  let x_474 : f32 = u_xlat0.x;
  u_xlat9.x = (x_472 * x_474);
  let x_477 : vec3<f32> = u_xlat9;
  let x_479 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_477.x, x_477.x), vec2<f32>(x_479, x_479));
  let x_484 : f32 = u_xlat9.x;
  u_xlat9.x = (x_484 + -0.5f);
  let x_490 : f32 = u_xlat2.x;
  u_xlat18 = (-(x_490) + 1.0f);
  let x_493 : f32 = u_xlat18;
  let x_494 : f32 = u_xlat18;
  u_xlat1.x = (x_493 * x_494);
  let x_498 : f32 = u_xlat1.x;
  let x_500 : f32 = u_xlat1.x;
  u_xlat1.x = (x_498 * x_500);
  let x_503 : f32 = u_xlat18;
  let x_505 : f32 = u_xlat1.x;
  u_xlat18 = (x_503 * x_505);
  let x_508 : f32 = u_xlat9.x;
  let x_509 : f32 = u_xlat18;
  u_xlat18 = ((x_508 * x_509) + 1.0f);
  let x_512 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_512)) + 1.0f);
  let x_519 : f32 = u_xlat1.x;
  let x_521 : f32 = u_xlat1.x;
  u_xlat10 = (x_519 * x_521);
  let x_523 : f32 = u_xlat10;
  let x_524 : f32 = u_xlat10;
  u_xlat10 = (x_523 * x_524);
  let x_527 : f32 = u_xlat1.x;
  let x_528 : f32 = u_xlat10;
  u_xlat1.x = (x_527 * x_528);
  let x_532 : f32 = u_xlat9.x;
  let x_534 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_532 * x_534) + 1.0f);
  let x_539 : f32 = u_xlat9.x;
  let x_540 : f32 = u_xlat18;
  u_xlat9.x = (x_539 * x_540);
  let x_543 : f32 = u_xlat28;
  let x_544 : f32 = u_xlat28;
  u_xlat18 = (x_543 * x_544);
  let x_546 : f32 = u_xlat18;
  u_xlat18 = max(x_546, 0.002f);
  let x_549 : f32 = u_xlat18;
  u_xlat1.x = (-(x_549) + 1.0f);
  let x_553 : f32 = u_xlat27;
  let x_556 : f32 = u_xlat1.x;
  let x_558 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_553) * x_556) + x_558);
  let x_561 : f32 = u_xlat2.x;
  let x_563 : f32 = u_xlat1.x;
  let x_565 : f32 = u_xlat18;
  u_xlat1.x = ((x_561 * x_563) + x_565);
  let x_568 : f32 = u_xlat27;
  let x_571 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_568) * x_571);
  let x_574 : f32 = u_xlat2.x;
  let x_575 : f32 = u_xlat10;
  let x_577 : f32 = u_xlat27;
  u_xlat27 = ((x_574 * x_575) + x_577);
  let x_579 : f32 = u_xlat27;
  u_xlat27 = (x_579 + 0.00001f);
  let x_582 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_582);
  let x_584 : f32 = u_xlat18;
  let x_585 : f32 = u_xlat18;
  u_xlat18 = (x_584 * x_585);
  let x_587 : f32 = u_xlat11;
  let x_588 : f32 = u_xlat18;
  let x_590 : f32 = u_xlat11;
  u_xlat1.x = ((x_587 * x_588) + -(x_590));
  let x_595 : f32 = u_xlat1.x;
  let x_596 : f32 = u_xlat11;
  u_xlat1.x = ((x_595 * x_596) + 1.0f);
  let x_600 : f32 = u_xlat18;
  u_xlat18 = (x_600 * 0.318309873f);
  let x_604 : f32 = u_xlat1.x;
  let x_606 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_604 * x_606) + 0.0000001f);
  let x_611 : f32 = u_xlat18;
  let x_613 : f32 = u_xlat1.x;
  u_xlat18 = (x_611 / x_613);
  let x_615 : f32 = u_xlat18;
  let x_616 : f32 = u_xlat27;
  u_xlat9.y = (x_615 * x_616);
  let x_619 : vec3<f32> = u_xlat2;
  let x_621 : vec3<f32> = u_xlat9;
  let x_623 : vec2<f32> = (vec2<f32>(x_619.x, x_619.x) * vec2<f32>(x_621.x, x_621.y));
  let x_624 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_623.x, x_623.y, x_624.z);
  let x_627 : f32 = u_xlat9.y;
  u_xlat18 = (x_627 * 3.141592741f);
  let x_630 : f32 = u_xlat18;
  u_xlat18 = max(x_630, 0.0f);
  let x_632 : vec4<f32> = u_xlat3;
  let x_634 : vec4<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_632.x, x_632.y, x_632.z), vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_638 : f32 = u_xlat27;
  u_xlatb27 = !((x_638 == 0.0f));
  let x_640 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_640);
  let x_642 : f32 = u_xlat27;
  let x_643 : f32 = u_xlat18;
  u_xlat18 = (x_642 * x_643);
  let x_645 : vec3<f32> = u_xlat9;
  let x_647 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_645.x, x_645.x, x_645.x) * x_647);
  let x_649 : vec3<f32> = u_xlat6;
  let x_650 : f32 = u_xlat18;
  u_xlat9 = (x_649 * vec3<f32>(x_650, x_650, x_650));
  let x_654 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_654) + 1.0f);
  let x_659 : f32 = u_xlat0.x;
  let x_661 : f32 = u_xlat0.x;
  u_xlat28 = (x_659 * x_661);
  let x_663 : f32 = u_xlat28;
  let x_664 : f32 = u_xlat28;
  u_xlat28 = (x_663 * x_664);
  let x_667 : f32 = u_xlat0.x;
  let x_668 : f32 = u_xlat28;
  u_xlat0.x = (x_667 * x_668);
  let x_671 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_671.x, x_671.y, x_671.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_676 : vec3<f32> = u_xlat2;
  let x_677 : vec3<f32> = u_xlat0;
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_676 * vec3<f32>(x_677.x, x_677.x, x_677.x)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec3<f32> = u_xlat9;
  let x_684 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_683 * x_684);
  let x_686 : vec4<f32> = u_xlat4;
  let x_688 : vec3<f32> = u_xlat1;
  let x_690 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_686.x, x_686.y, x_686.z) * x_688) + x_690);
  let x_694 : f32 = vs_TEXCOORD6;
  let x_696 : f32 = x_18.x_ProjectionParams.y;
  u_xlat27 = (x_694 / x_696);
  let x_698 : f32 = u_xlat27;
  u_xlat27 = (-(x_698) + 1.0f);
  let x_701 : f32 = u_xlat27;
  let x_703 : f32 = x_18.x_ProjectionParams.z;
  u_xlat27 = (x_701 * x_703);
  let x_705 : f32 = u_xlat27;
  u_xlat27 = max(x_705, 0.0f);
  let x_707 : f32 = u_xlat27;
  let x_710 : f32 = x_18.unity_FogParams.x;
  u_xlat27 = (x_707 * x_710);
  let x_712 : f32 = u_xlat27;
  let x_713 : f32 = u_xlat27;
  u_xlat27 = (x_712 * -(x_713));
  let x_716 : f32 = u_xlat27;
  u_xlat27 = exp2(x_716);
  let x_720 : vec3<f32> = u_xlat0;
  let x_721 : f32 = u_xlat27;
  let x_723 : vec3<f32> = (x_720 * vec3<f32>(x_721, x_721, x_721));
  let x_724 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_727 : f32 = u_xlat4.w;
  SV_Target0.w = x_727;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

