struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlat24 : f32;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

var<private> u_xlat7 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_296 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  let x_53 : vec3<f32> = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_54 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_57 : vec4<f32> = x_46.x_Color;
  let x_59 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_59) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_64.x, x_64.x, x_64.x) * x_66) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_75) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.x, x_81.x) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_86.y, x_85.y, x_85.z);
  let x_93 : vec4<f32> = vs_TEXCOORD0;
  let x_95 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec3<f32> = vec3<f32>(x_95.x, x_95.y, x_95.w);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_101 : f32 = u_xlat2.z;
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_101 * x_103);
  let x_106 : vec4<f32> = u_xlat2;
  let x_113 : vec2<f32> = ((vec2<f32>(x_106.x, x_106.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_121 : f32 = x_46.x_BumpScale;
  let x_123 : vec2<f32> = (vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat22;
  u_xlat22 = min(x_132, 1.0f);
  let x_135 : f32 = u_xlat22;
  u_xlat22 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_138);
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec4<f32> = vs_TEXCOORD2;
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = u_xlat9;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD4;
  let x_160 : f32 = u_xlat22;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat22;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_188);
  let x_191 : f32 = u_xlat22;
  let x_193 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_191, x_191, x_191) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_199 : vec3<f32> = vs_TEXCOORD5;
  let x_204 : vec4<f32> = x_46.unity_WorldToLight[1i];
  let x_206 : vec2<f32> = (vec2<f32>(x_199.y, x_199.y) * vec2<f32>(x_204.x, x_204.y));
  let x_207 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_206.x, x_206.y, x_207.z);
  let x_211 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_213 : vec3<f32> = vs_TEXCOORD5;
  let x_216 : vec3<f32> = u_xlat4;
  let x_218 : vec2<f32> = ((vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_213.x, x_213.x)) + vec2<f32>(x_216.x, x_216.y));
  let x_219 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_223 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_225 : vec3<f32> = vs_TEXCOORD5;
  let x_228 : vec3<f32> = u_xlat4;
  let x_230 : vec2<f32> = ((vec2<f32>(x_223.x, x_223.y) * vec2<f32>(x_225.z, x_225.z)) + vec2<f32>(x_228.x, x_228.y));
  let x_231 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_230.x, x_230.y, x_231.z);
  let x_233 : vec3<f32> = u_xlat4;
  let x_237 : vec4<f32> = x_46.unity_WorldToLight[3i];
  let x_239 : vec2<f32> = (vec2<f32>(x_233.x, x_233.y) + vec2<f32>(x_237.x, x_237.y));
  let x_240 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_239.x, x_239.y, x_240.z);
  let x_246 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_246 == 1.0f);
  let x_248 : bool = u_xlatb23;
  if (x_248) {
    let x_253 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_253 == 1.0f);
    let x_256 : vec3<f32> = vs_TEXCOORD5;
    let x_259 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_261 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_259.x, x_259.y, x_259.z));
    let x_262 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_265 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_267 : vec3<f32> = vs_TEXCOORD5;
    let x_270 : vec4<f32> = u_xlat5;
    let x_272 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_267.x, x_267.x, x_267.x)) + vec3<f32>(x_270.x, x_270.y, x_270.z));
    let x_273 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_276 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_278 : vec3<f32> = vs_TEXCOORD5;
    let x_281 : vec4<f32> = u_xlat5;
    let x_283 : vec3<f32> = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(x_278.z, x_278.z, x_278.z)) + vec3<f32>(x_281.x, x_281.y, x_281.z));
    let x_284 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat5;
    let x_289 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) + vec3<f32>(x_289.x, x_289.y, x_289.z));
    let x_292 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
    let x_294 : bool = u_xlatb23;
    if (x_294) {
      let x_299 : vec4<f32> = u_xlat5;
      x_296 = vec3<f32>(x_299.x, x_299.y, x_299.z);
    } else {
      let x_302 : vec3<f32> = vs_TEXCOORD5;
      x_296 = x_302;
    }
    let x_303 : vec3<f32> = x_296;
    let x_304 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
    let x_306 : vec4<f32> = u_xlat5;
    let x_311 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_313 : vec3<f32> = (vec3<f32>(x_306.x, x_306.y, x_306.z) + -(x_311));
    let x_314 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat5;
    let x_319 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * x_319);
    let x_321 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_321.x, x_320.x, x_320.y, x_320.z);
    let x_325 : f32 = u_xlat5.y;
    u_xlat23 = ((x_325 * 0.25f) + 0.75f);
    let x_332 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_332 * 0.5f) + 0.75f);
    let x_336 : f32 = u_xlat23;
    let x_337 : f32 = u_xlat24;
    u_xlat5.x = max(x_336, x_337);
    let x_348 : vec4<f32> = u_xlat5;
    let x_350 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_348.x, x_348.z, x_348.w));
    u_xlat5 = x_350;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_357 : vec4<f32> = u_xlat5;
  let x_359 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_357, x_359);
  let x_361 : f32 = u_xlat23;
  u_xlat23 = clamp(x_361, 0.0f, 1.0f);
  let x_369 : vec3<f32> = u_xlat4;
  let x_371 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_369.x, x_369.y));
  u_xlat24 = x_371.w;
  let x_373 : f32 = u_xlat23;
  let x_374 : f32 = u_xlat24;
  u_xlat23 = (x_373 * x_374);
  let x_376 : f32 = u_xlat23;
  let x_380 : vec4<f32> = x_46.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_376, x_376, x_376) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_385 : f32 = u_xlat0.y;
  let x_389 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_385) * x_389) + 1.0f);
  let x_394 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_394;
  let x_397 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_397;
  let x_400 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_400;
  let x_403 : vec4<f32> = vs_TEXCOORD1;
  let x_406 : f32 = u_xlat22;
  let x_409 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_403.x, x_403.y, x_403.z)) * vec3<f32>(x_406, x_406, x_406)) + vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec3<f32> = u_xlat6;
  let x_413 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_412, x_413);
  let x_415 : f32 = u_xlat22;
  u_xlat22 = max(x_415, 0.001f);
  let x_418 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_418);
  let x_420 : f32 = u_xlat22;
  let x_422 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_420, x_420, x_420) * x_422);
  let x_424 : vec4<f32> = u_xlat2;
  let x_426 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_424.x, x_424.y, x_424.z), -(x_426));
  let x_429 : vec4<f32> = u_xlat2;
  let x_431 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : f32 = u_xlat23;
  u_xlat23 = clamp(x_434, 0.0f, 1.0f);
  let x_436 : vec4<f32> = u_xlat2;
  let x_438 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_436.x, x_436.y, x_436.z), x_438);
  let x_442 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_442, 0.0f, 1.0f);
  let x_445 : vec4<f32> = u_xlat5;
  let x_447 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(vec3<f32>(x_445.x, x_445.y, x_445.z), x_447);
  let x_451 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_451, 0.0f, 1.0f);
  let x_456 : f32 = u_xlat9.x;
  let x_458 : f32 = u_xlat9.x;
  u_xlat16 = (x_456 * x_458);
  let x_460 : f32 = u_xlat16;
  let x_462 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_460, x_460), vec2<f32>(x_462, x_462));
  let x_465 : f32 = u_xlat16;
  u_xlat16 = (x_465 + -0.5f);
  let x_468 : f32 = u_xlat23;
  u_xlat3.x = (-(x_468) + 1.0f);
  let x_474 : f32 = u_xlat3.x;
  let x_476 : f32 = u_xlat3.x;
  u_xlat10 = (x_474 * x_476);
  let x_478 : f32 = u_xlat10;
  let x_479 : f32 = u_xlat10;
  u_xlat10 = (x_478 * x_479);
  let x_482 : f32 = u_xlat3.x;
  let x_483 : f32 = u_xlat10;
  u_xlat3.x = (x_482 * x_483);
  let x_486 : f32 = u_xlat16;
  let x_488 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_486 * x_488) + 1.0f);
  let x_492 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_492)) + 1.0f);
  let x_497 : f32 = u_xlat10;
  let x_498 : f32 = u_xlat10;
  u_xlat17 = (x_497 * x_498);
  let x_500 : f32 = u_xlat17;
  let x_501 : f32 = u_xlat17;
  u_xlat17 = (x_500 * x_501);
  let x_503 : f32 = u_xlat10;
  let x_504 : f32 = u_xlat17;
  u_xlat10 = (x_503 * x_504);
  let x_506 : f32 = u_xlat16;
  let x_507 : f32 = u_xlat10;
  u_xlat16 = ((x_506 * x_507) + 1.0f);
  let x_510 : f32 = u_xlat16;
  let x_512 : f32 = u_xlat3.x;
  u_xlat16 = (x_510 * x_512);
  let x_514 : f32 = u_xlat23;
  let x_515 : f32 = u_xlat16;
  u_xlat16 = (x_514 * x_515);
  let x_517 : f32 = u_xlat7;
  let x_518 : f32 = u_xlat7;
  u_xlat7 = (x_517 * x_518);
  let x_520 : f32 = u_xlat7;
  u_xlat7 = max(x_520, 0.002f);
  let x_523 : f32 = u_xlat7;
  u_xlat3.x = (-(x_523) + 1.0f);
  let x_527 : f32 = u_xlat22;
  let x_530 : f32 = u_xlat3.x;
  let x_532 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_527) * x_530) + x_532);
  let x_534 : f32 = u_xlat23;
  let x_536 : f32 = u_xlat3.x;
  let x_538 : f32 = u_xlat7;
  u_xlat3.x = ((x_534 * x_536) + x_538);
  let x_541 : f32 = u_xlat22;
  let x_544 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_541) * x_544);
  let x_546 : f32 = u_xlat23;
  let x_547 : f32 = u_xlat10;
  let x_549 : f32 = u_xlat22;
  u_xlat22 = ((x_546 * x_547) + x_549);
  let x_551 : f32 = u_xlat22;
  u_xlat22 = (x_551 + 0.00001f);
  let x_554 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_554);
  let x_556 : f32 = u_xlat7;
  let x_557 : f32 = u_xlat7;
  u_xlat7 = (x_556 * x_557);
  let x_560 : f32 = u_xlat2.x;
  let x_561 : f32 = u_xlat7;
  let x_564 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_560 * x_561) + -(x_564));
  let x_569 : f32 = u_xlat3.x;
  let x_571 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_569 * x_571) + 1.0f);
  let x_575 : f32 = u_xlat7;
  u_xlat7 = (x_575 * 0.318309873f);
  let x_579 : f32 = u_xlat2.x;
  let x_581 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_579 * x_581) + 0.0000001f);
  let x_586 : f32 = u_xlat7;
  let x_588 : f32 = u_xlat2.x;
  u_xlat7 = (x_586 / x_588);
  let x_590 : f32 = u_xlat7;
  let x_591 : f32 = u_xlat22;
  u_xlat7 = (x_590 * x_591);
  let x_593 : f32 = u_xlat23;
  let x_594 : f32 = u_xlat7;
  u_xlat7 = (x_593 * x_594);
  let x_596 : f32 = u_xlat7;
  u_xlat7 = (x_596 * 3.141592741f);
  let x_599 : f32 = u_xlat7;
  u_xlat7 = max(x_599, 0.0f);
  let x_601 : vec3<f32> = u_xlat1;
  let x_602 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_601, x_602);
  let x_605 : f32 = u_xlat22;
  u_xlatb22 = !((x_605 == 0.0f));
  let x_607 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_607);
  let x_609 : f32 = u_xlat7;
  let x_610 : f32 = u_xlat22;
  u_xlat7 = (x_609 * x_610);
  let x_612 : f32 = u_xlat16;
  let x_614 : vec3<f32> = u_xlat4;
  let x_615 : vec3<f32> = (vec3<f32>(x_612, x_612, x_612) * x_614);
  let x_616 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_615.x, x_616.y, x_615.y, x_615.z);
  let x_618 : vec3<f32> = u_xlat4;
  let x_619 : f32 = u_xlat7;
  u_xlat3 = (x_618 * vec3<f32>(x_619, x_619, x_619));
  let x_623 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_623) + 1.0f);
  let x_626 : f32 = u_xlat7;
  let x_627 : f32 = u_xlat7;
  u_xlat22 = (x_626 * x_627);
  let x_629 : f32 = u_xlat22;
  let x_630 : f32 = u_xlat22;
  u_xlat22 = (x_629 * x_630);
  let x_632 : f32 = u_xlat7;
  let x_633 : f32 = u_xlat22;
  u_xlat7 = (x_632 * x_633);
  let x_635 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_635) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_639 : vec3<f32> = u_xlat4;
  let x_640 : f32 = u_xlat7;
  let x_643 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_639 * vec3<f32>(x_640, x_640, x_640)) + x_643);
  let x_645 : vec3<f32> = u_xlat1;
  let x_646 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_645 * x_646);
  let x_650 : vec4<f32> = u_xlat0;
  let x_652 : vec4<f32> = u_xlat2;
  let x_655 : vec3<f32> = u_xlat1;
  let x_656 : vec3<f32> = ((vec3<f32>(x_650.x, x_650.z, x_650.w) * vec3<f32>(x_652.x, x_652.z, x_652.w)) + x_655);
  let x_657 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

