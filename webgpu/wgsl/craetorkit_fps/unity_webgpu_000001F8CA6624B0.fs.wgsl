struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
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
  x_OcclusionStrength : f32,
  @size(4)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat46 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb45 : bool;
  var u_xlatb46 : bool;
  var u_xlat5 : vec4<f32>;
  var u_xlat21 : vec3<f32>;
  var x_267 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat49 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var x_449 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat50 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_639 : f32;
  var x_651 : f32;
  var x_663 : f32;
  var u_xlatb48 : bool;
  var u_xlat48 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_827 : f32;
  var x_839 : f32;
  var x_851 : f32;
  var u_xlat18 : f32;
  var u_xlat33 : f32;
  var u_xlat19 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_24.x, x_24.y));
  let x_27 : vec2<f32> = vec2<f32>(x_26.x, x_26.w);
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_27.x, x_27.y, x_28.z);
  let x_36 : vec4<f32> = vs_TEXCOORD0;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_36.x, x_36.y));
  u_xlat1 = vec3<f32>(x_38.x, x_38.y, x_38.z);
  let x_41 : vec3<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_45.x_Color;
  u_xlat2 = (x_41 * vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_54 : vec4<f32> = x_45.x_Color;
  let x_56 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * x_56) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_72) * 0.959999979f) + 0.959999979f);
  let x_78 : vec3<f32> = u_xlat0;
  let x_80 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * x_80);
  let x_89 : vec4<f32> = vs_TEXCOORD0;
  let x_91 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_89.x, x_89.y));
  let x_92 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.w);
  let x_93 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_97 : f32 = u_xlat3.z;
  let x_99 : f32 = u_xlat3.x;
  u_xlat3.x = (x_97 * x_99);
  let x_104 : vec4<f32> = u_xlat3;
  u_xlat30 = ((vec2<f32>(x_104.x, x_104.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_112 : vec2<f32> = u_xlat30;
  let x_116 : f32 = x_45.x_BumpScale;
  u_xlat30 = (x_112 * vec2<f32>(x_116, x_116));
  let x_120 : vec2<f32> = u_xlat30;
  let x_121 : vec2<f32> = u_xlat30;
  u_xlat46 = dot(x_120, x_121);
  let x_123 : f32 = u_xlat46;
  u_xlat46 = min(x_123, 1.0f);
  let x_126 : f32 = u_xlat46;
  u_xlat46 = (-(x_126) + 1.0f);
  let x_129 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_129);
  let x_131 : vec2<f32> = u_xlat30;
  let x_134 : vec4<f32> = vs_TEXCOORD3;
  let x_136 : vec3<f32> = (vec3<f32>(x_131.y, x_131.y, x_131.y) * vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_140 : vec4<f32> = vs_TEXCOORD2;
  let x_142 : vec2<f32> = u_xlat30;
  let x_145 : vec4<f32> = u_xlat3;
  let x_147 : vec3<f32> = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.x, x_142.x, x_142.x)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = vs_TEXCOORD4;
  let x_153 : f32 = u_xlat46;
  let x_156 : vec4<f32> = u_xlat3;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat3;
  let x_163 : vec4<f32> = u_xlat3;
  u_xlat30.x = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_168 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_168);
  let x_171 : vec2<f32> = u_xlat30;
  let x_173 : vec4<f32> = u_xlat3;
  let x_175 : vec3<f32> = (vec3<f32>(x_171.x, x_171.x, x_171.x) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = vs_TEXCOORD1;
  u_xlat30.x = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_186 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_186);
  let x_190 : vec2<f32> = u_xlat30;
  let x_192 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_190.x, x_190.x, x_190.x) * vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_200 : f32 = x_45.unity_ProbeVolumeParams.x;
  u_xlatb45 = (x_200 == 1.0f);
  let x_202 : bool = u_xlatb45;
  if (x_202) {
    let x_208 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb46 = (x_208 == 1.0f);
    let x_211 : vec4<f32> = vs_TEXCOORD3;
    let x_216 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_218 : vec3<f32> = (vec3<f32>(x_211.w, x_211.w, x_211.w) * vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_223 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_225 : vec4<f32> = vs_TEXCOORD2;
    let x_228 : vec4<f32> = u_xlat5;
    let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.w, x_225.w, x_225.w)) + vec3<f32>(x_228.x, x_228.y, x_228.z));
    let x_231 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_235 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_237 : vec4<f32> = vs_TEXCOORD4;
    let x_240 : vec4<f32> = u_xlat5;
    let x_242 : vec3<f32> = ((vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_237.w, x_237.w, x_237.w)) + vec3<f32>(x_240.x, x_240.y, x_240.z));
    let x_243 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
    let x_245 : vec4<f32> = u_xlat5;
    let x_249 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_251 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_252 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_258 : f32 = vs_TEXCOORD2.w;
    u_xlat21.x = x_258;
    let x_261 : f32 = vs_TEXCOORD3.w;
    u_xlat21.y = x_261;
    let x_264 : f32 = vs_TEXCOORD4.w;
    u_xlat21.z = x_264;
    let x_266 : bool = u_xlatb46;
    if (x_266) {
      let x_270 : vec4<f32> = u_xlat5;
      x_267 = vec3<f32>(x_270.x, x_270.y, x_270.z);
    } else {
      let x_273 : vec3<f32> = u_xlat21;
      x_267 = x_273;
    }
    let x_274 : vec3<f32> = x_267;
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat5;
    let x_282 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_284 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) + -(x_282));
    let x_285 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_287 : vec4<f32> = u_xlat5;
    let x_291 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_292 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) * x_291);
    let x_293 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_293.x, x_292.x, x_292.y, x_292.z);
    let x_296 : f32 = u_xlat5.y;
    u_xlat46 = ((x_296 * 0.25f) + 0.75f);
    let x_303 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat47 = ((x_303 * 0.5f) + 0.75f);
    let x_307 : f32 = u_xlat46;
    let x_308 : f32 = u_xlat47;
    u_xlat5.x = max(x_307, x_308);
    let x_319 : vec4<f32> = u_xlat5;
    let x_321 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_319.x, x_319.z, x_319.w));
    u_xlat5 = x_321;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_327 : vec4<f32> = u_xlat5;
  let x_330 : vec4<f32> = x_45.unity_OcclusionMaskSelector;
  u_xlat46 = dot(x_327, x_330);
  let x_332 : f32 = u_xlat46;
  u_xlat46 = clamp(x_332, 0.0f, 1.0f);
  let x_340 : vec4<f32> = vs_TEXCOORD0;
  let x_342 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_340.x, x_340.y));
  u_xlat47 = x_342.y;
  let x_347 : f32 = x_45.x_OcclusionStrength;
  u_xlat49 = (-(x_347) + 1.0f);
  let x_350 : f32 = u_xlat47;
  let x_352 : f32 = x_45.x_OcclusionStrength;
  let x_354 : f32 = u_xlat49;
  u_xlat47 = ((x_350 * x_352) + x_354);
  let x_357 : f32 = u_xlat0.y;
  let x_361 : f32 = x_45.x_GlossMapScale;
  u_xlat49 = ((-(x_357) * x_361) + 1.0f);
  let x_364 : vec3<f32> = u_xlat4;
  let x_365 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_364, vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_370 : f32 = u_xlat5.x;
  let x_372 : f32 = u_xlat5.x;
  u_xlat5.x = (x_370 + x_372);
  let x_375 : vec4<f32> = u_xlat3;
  let x_377 : vec4<f32> = u_xlat5;
  let x_381 : vec3<f32> = u_xlat4;
  let x_382 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * -(vec3<f32>(x_377.x, x_377.x, x_377.x))) + x_381);
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = u_xlat46;
  let x_390 : vec4<f32> = x_45.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : bool = u_xlatb45;
  if (x_393) {
    let x_397 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb45 = (x_397 == 1.0f);
    let x_400 : vec4<f32> = vs_TEXCOORD3;
    let x_403 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_405 : vec3<f32> = (vec3<f32>(x_400.w, x_400.w, x_400.w) * vec3<f32>(x_403.x, x_403.y, x_403.z));
    let x_406 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
    let x_409 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_411 : vec4<f32> = vs_TEXCOORD2;
    let x_414 : vec4<f32> = u_xlat7;
    let x_416 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411.w, x_411.w, x_411.w)) + vec3<f32>(x_414.x, x_414.y, x_414.z));
    let x_417 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
    let x_420 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_422 : vec4<f32> = vs_TEXCOORD4;
    let x_425 : vec4<f32> = u_xlat7;
    let x_427 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_422.w, x_422.w, x_422.w)) + vec3<f32>(x_425.x, x_425.y, x_425.z));
    let x_428 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
    let x_430 : vec4<f32> = u_xlat7;
    let x_433 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_435 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) + vec3<f32>(x_433.x, x_433.y, x_433.z));
    let x_436 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
    let x_440 : f32 = vs_TEXCOORD2.w;
    u_xlat23.x = x_440;
    let x_443 : f32 = vs_TEXCOORD3.w;
    u_xlat23.y = x_443;
    let x_446 : f32 = vs_TEXCOORD4.w;
    u_xlat23.z = x_446;
    let x_448 : bool = u_xlatb45;
    if (x_448) {
      let x_452 : vec4<f32> = u_xlat7;
      x_449 = vec3<f32>(x_452.x, x_452.y, x_452.z);
    } else {
      let x_455 : vec3<f32> = u_xlat23;
      x_449 = x_455;
    }
    let x_456 : vec3<f32> = x_449;
    let x_457 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
    let x_459 : vec4<f32> = u_xlat7;
    let x_462 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_464 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) + -(x_462));
    let x_465 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
    let x_467 : vec4<f32> = u_xlat7;
    let x_470 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_471 : vec3<f32> = (vec3<f32>(x_467.x, x_467.y, x_467.z) * x_470);
    let x_472 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_472.x, x_471.x, x_471.y, x_471.z);
    let x_476 : f32 = u_xlat7.y;
    u_xlat45 = (x_476 * 0.25f);
    let x_479 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat46 = (x_479 * 0.5f);
    let x_483 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat50 = ((-(x_483) * 0.5f) + 0.25f);
    let x_487 : f32 = u_xlat45;
    let x_488 : f32 = u_xlat46;
    u_xlat45 = max(x_487, x_488);
    let x_490 : f32 = u_xlat50;
    let x_491 : f32 = u_xlat45;
    u_xlat7.x = min(x_490, x_491);
    let x_498 : vec4<f32> = u_xlat7;
    let x_500 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_498.x, x_498.z, x_498.w));
    u_xlat8 = x_500;
    let x_502 : vec4<f32> = u_xlat7;
    let x_505 : vec3<f32> = (vec3<f32>(x_502.x, x_502.z, x_502.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_506 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
    let x_511 : vec4<f32> = u_xlat9;
    let x_513 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_511.x, x_511.y, x_511.z));
    u_xlat9 = x_513;
    let x_514 : vec4<f32> = u_xlat7;
    let x_517 : vec3<f32> = (vec3<f32>(x_514.x, x_514.z, x_514.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_518 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
    let x_523 : vec4<f32> = u_xlat7;
    let x_525 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_523.x, x_523.y, x_523.z));
    u_xlat7 = x_525;
    u_xlat3.w = 1.0f;
    let x_527 : vec4<f32> = u_xlat8;
    let x_528 : vec4<f32> = u_xlat3;
    u_xlat8.x = dot(x_527, x_528);
    let x_531 : vec4<f32> = u_xlat9;
    let x_532 : vec4<f32> = u_xlat3;
    u_xlat8.y = dot(x_531, x_532);
    let x_535 : vec4<f32> = u_xlat7;
    let x_536 : vec4<f32> = u_xlat3;
    u_xlat8.z = dot(x_535, x_536);
  } else {
    u_xlat3.w = 1.0f;
    let x_542 : vec4<f32> = x_45.unity_SHAr;
    let x_543 : vec4<f32> = u_xlat3;
    u_xlat8.x = dot(x_542, x_543);
    let x_547 : vec4<f32> = x_45.unity_SHAg;
    let x_548 : vec4<f32> = u_xlat3;
    u_xlat8.y = dot(x_547, x_548);
    let x_552 : vec4<f32> = x_45.unity_SHAb;
    let x_553 : vec4<f32> = u_xlat3;
    u_xlat8.z = dot(x_552, x_553);
  }
  let x_556 : vec4<f32> = u_xlat8;
  let x_559 : vec4<f32> = vs_TEXCOORD5;
  let x_561 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : vec4<f32> = u_xlat7;
  let x_567 : vec3<f32> = max(vec3<f32>(x_564.x, x_564.y, x_564.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_568 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_572 : f32 = x_45.unity_SpecCube0_ProbePosition.w;
  u_xlatb45 = (0.0f < x_572);
  let x_574 : bool = u_xlatb45;
  if (x_574) {
    let x_577 : vec4<f32> = u_xlat5;
    let x_579 : vec4<f32> = u_xlat5;
    u_xlat45 = dot(vec3<f32>(x_577.x, x_577.y, x_577.z), vec3<f32>(x_579.x, x_579.y, x_579.z));
    let x_582 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_582);
    let x_584 : f32 = u_xlat45;
    let x_586 : vec4<f32> = u_xlat5;
    let x_588 : vec3<f32> = (vec3<f32>(x_584, x_584, x_584) * vec3<f32>(x_586.x, x_586.y, x_586.z));
    let x_589 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
    let x_592 : f32 = vs_TEXCOORD2.w;
    u_xlat9.x = x_592;
    let x_595 : f32 = vs_TEXCOORD3.w;
    u_xlat9.y = x_595;
    let x_598 : f32 = vs_TEXCOORD4.w;
    u_xlat9.z = x_598;
    let x_601 : vec4<f32> = u_xlat9;
    let x_606 : vec4<f32> = x_45.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_601.x, x_601.y, x_601.z)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
    let x_609 : vec3<f32> = u_xlat10;
    let x_610 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_609 / vec3<f32>(x_610.x, x_610.y, x_610.z));
    let x_614 : vec4<f32> = u_xlat9;
    let x_619 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_614.x, x_614.y, x_614.z)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
    let x_622 : vec3<f32> = u_xlat11;
    let x_623 : vec4<f32> = u_xlat8;
    u_xlat11 = (x_622 / vec3<f32>(x_623.x, x_623.y, x_623.z));
    let x_630 : vec4<f32> = u_xlat8;
    let x_633 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_630.x, x_630.y, x_630.z, x_630.x));
    u_xlatb12 = vec3<bool>(x_633.x, x_633.y, x_633.z);
    let x_636 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_636;
    let x_638 : bool = u_xlatb12.x;
    if (x_638) {
      let x_643 : f32 = u_xlat10.x;
      x_639 = x_643;
    } else {
      let x_646 : f32 = u_xlat11.x;
      x_639 = x_646;
    }
    let x_647 : f32 = x_639;
    hlslcc_movcTemp.x = x_647;
    let x_650 : bool = u_xlatb12.y;
    if (x_650) {
      let x_655 : f32 = u_xlat10.y;
      x_651 = x_655;
    } else {
      let x_658 : f32 = u_xlat11.y;
      x_651 = x_658;
    }
    let x_659 : f32 = x_651;
    hlslcc_movcTemp.y = x_659;
    let x_662 : bool = u_xlatb12.z;
    if (x_662) {
      let x_667 : f32 = u_xlat10.z;
      x_663 = x_667;
    } else {
      let x_670 : f32 = u_xlat11.z;
      x_663 = x_670;
    }
    let x_671 : f32 = x_663;
    hlslcc_movcTemp.z = x_671;
    let x_673 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_673;
    let x_675 : f32 = u_xlat10.y;
    let x_677 : f32 = u_xlat10.x;
    u_xlat45 = min(x_675, x_677);
    let x_680 : f32 = u_xlat10.z;
    let x_681 : f32 = u_xlat45;
    u_xlat45 = min(x_680, x_681);
    let x_683 : vec4<f32> = u_xlat9;
    let x_686 : vec4<f32> = x_45.unity_SpecCube0_ProbePosition;
    let x_689 : vec3<f32> = (vec3<f32>(x_683.x, x_683.y, x_683.z) + -(vec3<f32>(x_686.x, x_686.y, x_686.z)));
    let x_690 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
    let x_692 : vec4<f32> = u_xlat8;
    let x_694 : f32 = u_xlat45;
    let x_697 : vec4<f32> = u_xlat9;
    let x_699 : vec3<f32> = ((vec3<f32>(x_692.x, x_692.y, x_692.z) * vec3<f32>(x_694, x_694, x_694)) + vec3<f32>(x_697.x, x_697.y, x_697.z));
    let x_700 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  } else {
    let x_703 : vec4<f32> = u_xlat5;
    let x_704 : vec3<f32> = vec3<f32>(x_703.x, x_703.y, x_703.z);
    let x_705 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  }
  let x_707 : f32 = u_xlat49;
  u_xlat45 = ((-(x_707) * 0.699999988f) + 1.700000048f);
  let x_713 : f32 = u_xlat45;
  let x_714 : f32 = u_xlat49;
  u_xlat45 = (x_713 * x_714);
  let x_716 : f32 = u_xlat45;
  u_xlat45 = (x_716 * 6.0f);
  let x_727 : vec4<f32> = u_xlat8;
  let x_729 : f32 = u_xlat45;
  let x_730 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_727.x, x_727.y, x_727.z), x_729);
  u_xlat8 = x_730;
  let x_732 : f32 = u_xlat8.w;
  u_xlat46 = (x_732 + -1.0f);
  let x_736 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_737 : f32 = u_xlat46;
  u_xlat46 = ((x_736 * x_737) + 1.0f);
  let x_740 : f32 = u_xlat46;
  u_xlat46 = log2(x_740);
  let x_742 : f32 = u_xlat46;
  let x_744 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_742 * x_744);
  let x_746 : f32 = u_xlat46;
  u_xlat46 = exp2(x_746);
  let x_748 : f32 = u_xlat46;
  let x_750 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_748 * x_750);
  let x_752 : vec4<f32> = u_xlat8;
  let x_754 : f32 = u_xlat46;
  let x_756 : vec3<f32> = (vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_754, x_754, x_754));
  let x_757 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_761 : f32 = x_45.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_761 < 0.999989986f);
  let x_764 : bool = u_xlatb48;
  if (x_764) {
    let x_769 : f32 = x_45.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_769);
    let x_771 : bool = u_xlatb48;
    if (x_771) {
      let x_775 : vec4<f32> = u_xlat5;
      let x_777 : vec4<f32> = u_xlat5;
      u_xlat48 = dot(vec3<f32>(x_775.x, x_775.y, x_775.z), vec3<f32>(x_777.x, x_777.y, x_777.z));
      let x_780 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_780);
      let x_782 : f32 = u_xlat48;
      let x_784 : vec4<f32> = u_xlat5;
      u_xlat10 = (vec3<f32>(x_782, x_782, x_782) * vec3<f32>(x_784.x, x_784.y, x_784.z));
      let x_788 : f32 = vs_TEXCOORD2.w;
      u_xlat11.x = x_788;
      let x_791 : f32 = vs_TEXCOORD3.w;
      u_xlat11.y = x_791;
      let x_794 : f32 = vs_TEXCOORD4.w;
      u_xlat11.z = x_794;
      let x_797 : vec3<f32> = u_xlat11;
      let x_801 : vec4<f32> = x_45.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_797) + vec3<f32>(x_801.x, x_801.y, x_801.z));
      let x_804 : vec3<f32> = u_xlat12;
      let x_805 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_804 / x_805);
      let x_808 : vec3<f32> = u_xlat11;
      let x_812 : vec4<f32> = x_45.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_808) + vec3<f32>(x_812.x, x_812.y, x_812.z));
      let x_815 : vec3<f32> = u_xlat13;
      let x_816 : vec3<f32> = u_xlat10;
      u_xlat13 = (x_815 / x_816);
      let x_819 : vec3<f32> = u_xlat10;
      let x_821 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_819.x, x_819.y, x_819.z, x_819.x));
      u_xlatb14 = vec3<bool>(x_821.x, x_821.y, x_821.z);
      let x_824 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_824;
      let x_826 : bool = u_xlatb14.x;
      if (x_826) {
        let x_831 : f32 = u_xlat12.x;
        x_827 = x_831;
      } else {
        let x_834 : f32 = u_xlat13.x;
        x_827 = x_834;
      }
      let x_835 : f32 = x_827;
      hlslcc_movcTemp_1.x = x_835;
      let x_838 : bool = u_xlatb14.y;
      if (x_838) {
        let x_843 : f32 = u_xlat12.y;
        x_839 = x_843;
      } else {
        let x_846 : f32 = u_xlat13.y;
        x_839 = x_846;
      }
      let x_847 : f32 = x_839;
      hlslcc_movcTemp_1.y = x_847;
      let x_850 : bool = u_xlatb14.z;
      if (x_850) {
        let x_855 : f32 = u_xlat12.z;
        x_851 = x_855;
      } else {
        let x_858 : f32 = u_xlat13.z;
        x_851 = x_858;
      }
      let x_859 : f32 = x_851;
      hlslcc_movcTemp_1.z = x_859;
      let x_861 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_861;
      let x_863 : f32 = u_xlat12.y;
      let x_865 : f32 = u_xlat12.x;
      u_xlat48 = min(x_863, x_865);
      let x_868 : f32 = u_xlat12.z;
      let x_869 : f32 = u_xlat48;
      u_xlat48 = min(x_868, x_869);
      let x_871 : vec3<f32> = u_xlat11;
      let x_873 : vec4<f32> = x_45.unity_SpecCube1_ProbePosition;
      u_xlat11 = (x_871 + -(vec3<f32>(x_873.x, x_873.y, x_873.z)));
      let x_877 : vec3<f32> = u_xlat10;
      let x_878 : f32 = u_xlat48;
      let x_881 : vec3<f32> = u_xlat11;
      let x_882 : vec3<f32> = ((x_877 * vec3<f32>(x_878, x_878, x_878)) + x_881);
      let x_883 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
    }
    let x_889 : vec4<f32> = u_xlat5;
    let x_891 : f32 = u_xlat45;
    let x_892 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_889.x, x_889.y, x_889.z), x_891);
    u_xlat5 = x_892;
    let x_894 : f32 = u_xlat5.w;
    u_xlat45 = (x_894 + -1.0f);
    let x_898 : f32 = x_45.unity_SpecCube1_HDR.w;
    let x_899 : f32 = u_xlat45;
    u_xlat45 = ((x_898 * x_899) + 1.0f);
    let x_902 : f32 = u_xlat45;
    u_xlat45 = log2(x_902);
    let x_904 : f32 = u_xlat45;
    let x_906 : f32 = x_45.unity_SpecCube1_HDR.y;
    u_xlat45 = (x_904 * x_906);
    let x_908 : f32 = u_xlat45;
    u_xlat45 = exp2(x_908);
    let x_910 : f32 = u_xlat45;
    let x_912 : f32 = x_45.unity_SpecCube1_HDR.x;
    u_xlat45 = (x_910 * x_912);
    let x_914 : vec4<f32> = u_xlat5;
    let x_916 : f32 = u_xlat45;
    let x_918 : vec3<f32> = (vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(x_916, x_916, x_916));
    let x_919 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
    let x_921 : f32 = u_xlat46;
    let x_923 : vec4<f32> = u_xlat8;
    let x_926 : vec4<f32> = u_xlat5;
    let x_929 : vec3<f32> = ((vec3<f32>(x_921, x_921, x_921) * vec3<f32>(x_923.x, x_923.y, x_923.z)) + -(vec3<f32>(x_926.x, x_926.y, x_926.z)));
    let x_930 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
    let x_933 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    let x_935 : vec4<f32> = u_xlat8;
    let x_938 : vec4<f32> = u_xlat5;
    let x_940 : vec3<f32> = ((vec3<f32>(x_933.w, x_933.w, x_933.w) * vec3<f32>(x_935.x, x_935.y, x_935.z)) + vec3<f32>(x_938.x, x_938.y, x_938.z));
    let x_941 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  }
  let x_943 : f32 = u_xlat47;
  let x_945 : vec4<f32> = u_xlat9;
  let x_947 : vec3<f32> = (vec3<f32>(x_943, x_943, x_943) * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec4<f32> = vs_TEXCOORD1;
  let x_953 : vec2<f32> = u_xlat30;
  let x_957 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_959 : vec3<f32> = ((-(vec3<f32>(x_950.x, x_950.y, x_950.z)) * vec3<f32>(x_953.x, x_953.x, x_953.x)) + vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : vec4<f32> = u_xlat8;
  let x_964 : vec4<f32> = u_xlat8;
  u_xlat30.x = dot(vec3<f32>(x_962.x, x_962.y, x_962.z), vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_969 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_969, 0.001f);
  let x_974 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_974);
  let x_977 : vec2<f32> = u_xlat30;
  let x_979 : vec4<f32> = u_xlat8;
  let x_981 : vec3<f32> = (vec3<f32>(x_977.x, x_977.x, x_977.x) * vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec4<f32> = u_xlat3;
  let x_986 : vec3<f32> = u_xlat4;
  u_xlat30.x = dot(vec3<f32>(x_984.x, x_984.y, x_984.z), -(x_986));
  let x_990 : vec4<f32> = u_xlat3;
  let x_993 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat45 = dot(vec3<f32>(x_990.x, x_990.y, x_990.z), vec3<f32>(x_993.x, x_993.y, x_993.z));
  let x_996 : f32 = u_xlat45;
  u_xlat45 = clamp(x_996, 0.0f, 1.0f);
  let x_998 : vec4<f32> = u_xlat3;
  let x_1000 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_998.x, x_998.y, x_998.z), vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1003, 0.0f, 1.0f);
  let x_1006 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_1008 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1006.x, x_1006.y, x_1006.z), vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1013 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1013, 0.0f, 1.0f);
  let x_1018 : f32 = u_xlat3.x;
  let x_1020 : f32 = u_xlat3.x;
  u_xlat18 = (x_1018 * x_1020);
  let x_1022 : f32 = u_xlat18;
  let x_1024 : f32 = u_xlat49;
  u_xlat18 = dot(vec2<f32>(x_1022, x_1022), vec2<f32>(x_1024, x_1024));
  let x_1027 : f32 = u_xlat18;
  u_xlat18 = (x_1027 + -0.5f);
  let x_1031 : f32 = u_xlat45;
  u_xlat33 = (-(x_1031) + 1.0f);
  let x_1034 : f32 = u_xlat33;
  let x_1035 : f32 = u_xlat33;
  u_xlat48 = (x_1034 * x_1035);
  let x_1037 : f32 = u_xlat48;
  let x_1038 : f32 = u_xlat48;
  u_xlat48 = (x_1037 * x_1038);
  let x_1040 : f32 = u_xlat33;
  let x_1041 : f32 = u_xlat48;
  u_xlat33 = (x_1040 * x_1041);
  let x_1043 : f32 = u_xlat18;
  let x_1044 : f32 = u_xlat33;
  u_xlat33 = ((x_1043 * x_1044) + 1.0f);
  let x_1048 : f32 = u_xlat30.x;
  u_xlat48 = (-(abs(x_1048)) + 1.0f);
  let x_1052 : f32 = u_xlat48;
  let x_1053 : f32 = u_xlat48;
  u_xlat4.x = (x_1052 * x_1053);
  let x_1057 : f32 = u_xlat4.x;
  let x_1059 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1057 * x_1059);
  let x_1062 : f32 = u_xlat48;
  let x_1064 : f32 = u_xlat4.x;
  u_xlat48 = (x_1062 * x_1064);
  let x_1066 : f32 = u_xlat18;
  let x_1067 : f32 = u_xlat48;
  u_xlat18 = ((x_1066 * x_1067) + 1.0f);
  let x_1070 : f32 = u_xlat18;
  let x_1071 : f32 = u_xlat33;
  u_xlat18 = (x_1070 * x_1071);
  let x_1073 : f32 = u_xlat45;
  let x_1074 : f32 = u_xlat18;
  u_xlat18 = (x_1073 * x_1074);
  let x_1076 : f32 = u_xlat49;
  let x_1077 : f32 = u_xlat49;
  u_xlat33 = (x_1076 * x_1077);
  let x_1079 : f32 = u_xlat33;
  u_xlat33 = max(x_1079, 0.002f);
  let x_1082 : f32 = u_xlat33;
  u_xlat4.x = (-(x_1082) + 1.0f);
  let x_1088 : f32 = u_xlat30.x;
  let x_1091 : f32 = u_xlat4.x;
  let x_1093 : f32 = u_xlat33;
  u_xlat19 = ((abs(x_1088) * x_1091) + x_1093);
  let x_1095 : f32 = u_xlat45;
  let x_1097 : f32 = u_xlat4.x;
  let x_1099 : f32 = u_xlat33;
  u_xlat4.x = ((x_1095 * x_1097) + x_1099);
  let x_1103 : f32 = u_xlat30.x;
  let x_1106 : f32 = u_xlat4.x;
  u_xlat30.x = (abs(x_1103) * x_1106);
  let x_1109 : f32 = u_xlat45;
  let x_1110 : f32 = u_xlat19;
  let x_1113 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1109 * x_1110) + x_1113);
  let x_1117 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1117 + 0.00001f);
  let x_1122 : f32 = u_xlat30.x;
  u_xlat30.x = (0.5f / x_1122);
  let x_1125 : f32 = u_xlat33;
  let x_1126 : f32 = u_xlat33;
  u_xlat4.x = (x_1125 * x_1126);
  let x_1129 : f32 = u_xlat46;
  let x_1131 : f32 = u_xlat4.x;
  let x_1133 : f32 = u_xlat46;
  u_xlat19 = ((x_1129 * x_1131) + -(x_1133));
  let x_1136 : f32 = u_xlat19;
  let x_1137 : f32 = u_xlat46;
  u_xlat46 = ((x_1136 * x_1137) + 1.0f);
  let x_1141 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1141 * 0.318309873f);
  let x_1145 : f32 = u_xlat46;
  let x_1146 : f32 = u_xlat46;
  u_xlat46 = ((x_1145 * x_1146) + 0.0000001f);
  let x_1151 : f32 = u_xlat4.x;
  let x_1152 : f32 = u_xlat46;
  u_xlat46 = (x_1151 / x_1152);
  let x_1155 : f32 = u_xlat30.x;
  let x_1156 : f32 = u_xlat46;
  u_xlat30.x = (x_1155 * x_1156);
  let x_1159 : f32 = u_xlat45;
  let x_1161 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1159 * x_1161);
  let x_1165 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1165 * 3.141592741f);
  let x_1170 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1170, 0.0f);
  let x_1173 : f32 = u_xlat33;
  let x_1174 : f32 = u_xlat33;
  u_xlat45 = ((x_1173 * x_1174) + 1.0f);
  let x_1177 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1177);
  let x_1179 : vec3<f32> = u_xlat1;
  let x_1180 : vec3<f32> = u_xlat1;
  u_xlat46 = dot(x_1179, x_1180);
  let x_1182 : f32 = u_xlat46;
  u_xlatb46 = !((x_1182 == 0.0f));
  let x_1184 : bool = u_xlatb46;
  u_xlat46 = select(0.0f, 1.0f, x_1184);
  let x_1187 : f32 = u_xlat30.x;
  let x_1188 : f32 = u_xlat46;
  u_xlat30.x = (x_1187 * x_1188);
  let x_1192 : f32 = u_xlat0.y;
  let x_1194 : f32 = x_45.x_GlossMapScale;
  let x_1197 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1192 * x_1194) + -(x_1197));
  let x_1202 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1202 + 1.0f);
  let x_1206 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1206, 0.0f, 1.0f);
  let x_1209 : f32 = u_xlat18;
  let x_1211 : vec3<f32> = u_xlat6;
  u_xlat4 = (vec3<f32>(x_1209, x_1209, x_1209) * x_1211);
  let x_1213 : vec4<f32> = u_xlat7;
  let x_1215 : f32 = u_xlat47;
  let x_1218 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_1213.x, x_1213.y, x_1213.z) * vec3<f32>(x_1215, x_1215, x_1215)) + x_1218);
  let x_1220 : vec3<f32> = u_xlat6;
  let x_1221 : vec2<f32> = u_xlat30;
  u_xlat6 = (x_1220 * vec3<f32>(x_1221.x, x_1221.x, x_1221.x));
  let x_1226 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_1226) + 1.0f);
  let x_1231 : f32 = u_xlat15.x;
  let x_1233 : f32 = u_xlat15.x;
  u_xlat30.x = (x_1231 * x_1233);
  let x_1237 : f32 = u_xlat30.x;
  let x_1239 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1237 * x_1239);
  let x_1243 : f32 = u_xlat15.x;
  let x_1245 : f32 = u_xlat30.x;
  u_xlat15.x = (x_1243 * x_1245);
  let x_1248 : vec3<f32> = u_xlat1;
  let x_1251 : vec3<f32> = (-(x_1248) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1252 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec4<f32> = u_xlat3;
  let x_1256 : vec3<f32> = u_xlat15;
  let x_1259 : vec3<f32> = u_xlat1;
  let x_1260 : vec3<f32> = ((vec3<f32>(x_1254.x, x_1254.y, x_1254.z) * vec3<f32>(x_1256.x, x_1256.x, x_1256.x)) + x_1259);
  let x_1261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
  let x_1263 : vec4<f32> = u_xlat3;
  let x_1265 : vec3<f32> = u_xlat6;
  let x_1266 : vec3<f32> = (vec3<f32>(x_1263.x, x_1263.y, x_1263.z) * x_1265);
  let x_1267 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
  let x_1269 : vec3<f32> = u_xlat2;
  let x_1270 : vec3<f32> = u_xlat4;
  let x_1272 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_1269 * x_1270) + vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : vec4<f32> = u_xlat5;
  let x_1277 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1275.x, x_1275.y, x_1275.z) * vec3<f32>(x_1277, x_1277, x_1277));
  let x_1280 : vec3<f32> = u_xlat1;
  let x_1282 : vec3<f32> = u_xlat0;
  let x_1284 : vec3<f32> = (-(x_1280) + vec3<f32>(x_1282.x, x_1282.x, x_1282.x));
  let x_1285 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
  let x_1287 : f32 = u_xlat48;
  let x_1289 : vec4<f32> = u_xlat3;
  let x_1292 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1287, x_1287, x_1287) * vec3<f32>(x_1289.x, x_1289.y, x_1289.z)) + x_1292);
  let x_1294 : vec3<f32> = u_xlat15;
  let x_1295 : vec3<f32> = u_xlat1;
  let x_1297 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_1294 * x_1295) + x_1297);
  let x_1304 : vec4<f32> = vs_TEXCOORD0;
  let x_1306 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1304.x, x_1304.y));
  u_xlat1 = vec3<f32>(x_1306.x, x_1306.y, x_1306.z);
  let x_1310 : vec3<f32> = u_xlat1;
  let x_1313 : vec4<f32> = x_45.x_EmissionColor;
  let x_1316 : vec3<f32> = u_xlat0;
  let x_1317 : vec3<f32> = ((x_1310 * vec3<f32>(x_1313.x, x_1313.y, x_1313.z)) + x_1316);
  let x_1318 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
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

