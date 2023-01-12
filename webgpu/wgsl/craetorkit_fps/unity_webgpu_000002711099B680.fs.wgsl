struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

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
  var x_640 : f32;
  var x_652 : f32;
  var x_664 : f32;
  var u_xlatb48 : bool;
  var u_xlat48 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_828 : f32;
  var x_840 : f32;
  var x_852 : f32;
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
    let x_553 : vec4<f32> = x_45.unity_SHAb;
    let x_554 : vec4<f32> = u_xlat3;
    u_xlat8.z = dot(x_553, x_554);
  }
  let x_557 : vec4<f32> = u_xlat8;
  let x_560 : vec4<f32> = vs_TEXCOORD5;
  let x_562 : vec3<f32> = (vec3<f32>(x_557.x, x_557.y, x_557.z) + vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_565 : vec4<f32> = u_xlat7;
  let x_568 : vec3<f32> = max(vec3<f32>(x_565.x, x_565.y, x_565.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_569 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_573 : f32 = x_45.unity_SpecCube0_ProbePosition.w;
  u_xlatb45 = (0.0f < x_573);
  let x_575 : bool = u_xlatb45;
  if (x_575) {
    let x_578 : vec4<f32> = u_xlat5;
    let x_580 : vec4<f32> = u_xlat5;
    u_xlat45 = dot(vec3<f32>(x_578.x, x_578.y, x_578.z), vec3<f32>(x_580.x, x_580.y, x_580.z));
    let x_583 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_583);
    let x_585 : f32 = u_xlat45;
    let x_587 : vec4<f32> = u_xlat5;
    let x_589 : vec3<f32> = (vec3<f32>(x_585, x_585, x_585) * vec3<f32>(x_587.x, x_587.y, x_587.z));
    let x_590 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
    let x_593 : f32 = vs_TEXCOORD2.w;
    u_xlat9.x = x_593;
    let x_596 : f32 = vs_TEXCOORD3.w;
    u_xlat9.y = x_596;
    let x_599 : f32 = vs_TEXCOORD4.w;
    u_xlat9.z = x_599;
    let x_602 : vec4<f32> = u_xlat9;
    let x_607 : vec4<f32> = x_45.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_602.x, x_602.y, x_602.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
    let x_610 : vec3<f32> = u_xlat10;
    let x_611 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_610 / vec3<f32>(x_611.x, x_611.y, x_611.z));
    let x_615 : vec4<f32> = u_xlat9;
    let x_620 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_615.x, x_615.y, x_615.z)) + vec3<f32>(x_620.x, x_620.y, x_620.z));
    let x_623 : vec3<f32> = u_xlat11;
    let x_624 : vec4<f32> = u_xlat8;
    u_xlat11 = (x_623 / vec3<f32>(x_624.x, x_624.y, x_624.z));
    let x_631 : vec4<f32> = u_xlat8;
    let x_634 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.x));
    u_xlatb12 = vec3<bool>(x_634.x, x_634.y, x_634.z);
    let x_637 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_637;
    let x_639 : bool = u_xlatb12.x;
    if (x_639) {
      let x_644 : f32 = u_xlat10.x;
      x_640 = x_644;
    } else {
      let x_647 : f32 = u_xlat11.x;
      x_640 = x_647;
    }
    let x_648 : f32 = x_640;
    hlslcc_movcTemp.x = x_648;
    let x_651 : bool = u_xlatb12.y;
    if (x_651) {
      let x_656 : f32 = u_xlat10.y;
      x_652 = x_656;
    } else {
      let x_659 : f32 = u_xlat11.y;
      x_652 = x_659;
    }
    let x_660 : f32 = x_652;
    hlslcc_movcTemp.y = x_660;
    let x_663 : bool = u_xlatb12.z;
    if (x_663) {
      let x_668 : f32 = u_xlat10.z;
      x_664 = x_668;
    } else {
      let x_671 : f32 = u_xlat11.z;
      x_664 = x_671;
    }
    let x_672 : f32 = x_664;
    hlslcc_movcTemp.z = x_672;
    let x_674 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_674;
    let x_676 : f32 = u_xlat10.y;
    let x_678 : f32 = u_xlat10.x;
    u_xlat45 = min(x_676, x_678);
    let x_681 : f32 = u_xlat10.z;
    let x_682 : f32 = u_xlat45;
    u_xlat45 = min(x_681, x_682);
    let x_684 : vec4<f32> = u_xlat9;
    let x_687 : vec4<f32> = x_45.unity_SpecCube0_ProbePosition;
    let x_690 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) + -(vec3<f32>(x_687.x, x_687.y, x_687.z)));
    let x_691 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
    let x_693 : vec4<f32> = u_xlat8;
    let x_695 : f32 = u_xlat45;
    let x_698 : vec4<f32> = u_xlat9;
    let x_700 : vec3<f32> = ((vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(x_695, x_695, x_695)) + vec3<f32>(x_698.x, x_698.y, x_698.z));
    let x_701 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  } else {
    let x_704 : vec4<f32> = u_xlat5;
    let x_705 : vec3<f32> = vec3<f32>(x_704.x, x_704.y, x_704.z);
    let x_706 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  }
  let x_708 : f32 = u_xlat49;
  u_xlat45 = ((-(x_708) * 0.699999988f) + 1.700000048f);
  let x_714 : f32 = u_xlat45;
  let x_715 : f32 = u_xlat49;
  u_xlat45 = (x_714 * x_715);
  let x_717 : f32 = u_xlat45;
  u_xlat45 = (x_717 * 6.0f);
  let x_728 : vec4<f32> = u_xlat8;
  let x_730 : f32 = u_xlat45;
  let x_731 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_728.x, x_728.y, x_728.z), x_730);
  u_xlat8 = x_731;
  let x_733 : f32 = u_xlat8.w;
  u_xlat46 = (x_733 + -1.0f);
  let x_737 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_738 : f32 = u_xlat46;
  u_xlat46 = ((x_737 * x_738) + 1.0f);
  let x_741 : f32 = u_xlat46;
  u_xlat46 = log2(x_741);
  let x_743 : f32 = u_xlat46;
  let x_745 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_743 * x_745);
  let x_747 : f32 = u_xlat46;
  u_xlat46 = exp2(x_747);
  let x_749 : f32 = u_xlat46;
  let x_751 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_749 * x_751);
  let x_753 : vec4<f32> = u_xlat8;
  let x_755 : f32 = u_xlat46;
  let x_757 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755, x_755, x_755));
  let x_758 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_762 : f32 = x_45.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_762 < 0.999989986f);
  let x_765 : bool = u_xlatb48;
  if (x_765) {
    let x_770 : f32 = x_45.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_770);
    let x_772 : bool = u_xlatb48;
    if (x_772) {
      let x_776 : vec4<f32> = u_xlat5;
      let x_778 : vec4<f32> = u_xlat5;
      u_xlat48 = dot(vec3<f32>(x_776.x, x_776.y, x_776.z), vec3<f32>(x_778.x, x_778.y, x_778.z));
      let x_781 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_781);
      let x_783 : f32 = u_xlat48;
      let x_785 : vec4<f32> = u_xlat5;
      u_xlat10 = (vec3<f32>(x_783, x_783, x_783) * vec3<f32>(x_785.x, x_785.y, x_785.z));
      let x_789 : f32 = vs_TEXCOORD2.w;
      u_xlat11.x = x_789;
      let x_792 : f32 = vs_TEXCOORD3.w;
      u_xlat11.y = x_792;
      let x_795 : f32 = vs_TEXCOORD4.w;
      u_xlat11.z = x_795;
      let x_798 : vec3<f32> = u_xlat11;
      let x_802 : vec4<f32> = x_45.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_798) + vec3<f32>(x_802.x, x_802.y, x_802.z));
      let x_805 : vec3<f32> = u_xlat12;
      let x_806 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_805 / x_806);
      let x_809 : vec3<f32> = u_xlat11;
      let x_813 : vec4<f32> = x_45.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_809) + vec3<f32>(x_813.x, x_813.y, x_813.z));
      let x_816 : vec3<f32> = u_xlat13;
      let x_817 : vec3<f32> = u_xlat10;
      u_xlat13 = (x_816 / x_817);
      let x_820 : vec3<f32> = u_xlat10;
      let x_822 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_820.x, x_820.y, x_820.z, x_820.x));
      u_xlatb14 = vec3<bool>(x_822.x, x_822.y, x_822.z);
      let x_825 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_825;
      let x_827 : bool = u_xlatb14.x;
      if (x_827) {
        let x_832 : f32 = u_xlat12.x;
        x_828 = x_832;
      } else {
        let x_835 : f32 = u_xlat13.x;
        x_828 = x_835;
      }
      let x_836 : f32 = x_828;
      hlslcc_movcTemp_1.x = x_836;
      let x_839 : bool = u_xlatb14.y;
      if (x_839) {
        let x_844 : f32 = u_xlat12.y;
        x_840 = x_844;
      } else {
        let x_847 : f32 = u_xlat13.y;
        x_840 = x_847;
      }
      let x_848 : f32 = x_840;
      hlslcc_movcTemp_1.y = x_848;
      let x_851 : bool = u_xlatb14.z;
      if (x_851) {
        let x_856 : f32 = u_xlat12.z;
        x_852 = x_856;
      } else {
        let x_859 : f32 = u_xlat13.z;
        x_852 = x_859;
      }
      let x_860 : f32 = x_852;
      hlslcc_movcTemp_1.z = x_860;
      let x_862 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_862;
      let x_864 : f32 = u_xlat12.y;
      let x_866 : f32 = u_xlat12.x;
      u_xlat48 = min(x_864, x_866);
      let x_869 : f32 = u_xlat12.z;
      let x_870 : f32 = u_xlat48;
      u_xlat48 = min(x_869, x_870);
      let x_872 : vec3<f32> = u_xlat11;
      let x_874 : vec4<f32> = x_45.unity_SpecCube1_ProbePosition;
      u_xlat11 = (x_872 + -(vec3<f32>(x_874.x, x_874.y, x_874.z)));
      let x_878 : vec3<f32> = u_xlat10;
      let x_879 : f32 = u_xlat48;
      let x_882 : vec3<f32> = u_xlat11;
      let x_883 : vec3<f32> = ((x_878 * vec3<f32>(x_879, x_879, x_879)) + x_882);
      let x_884 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
    }
    let x_890 : vec4<f32> = u_xlat5;
    let x_892 : f32 = u_xlat45;
    let x_893 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_890.x, x_890.y, x_890.z), x_892);
    u_xlat5 = x_893;
    let x_895 : f32 = u_xlat5.w;
    u_xlat45 = (x_895 + -1.0f);
    let x_899 : f32 = x_45.unity_SpecCube1_HDR.w;
    let x_900 : f32 = u_xlat45;
    u_xlat45 = ((x_899 * x_900) + 1.0f);
    let x_903 : f32 = u_xlat45;
    u_xlat45 = log2(x_903);
    let x_905 : f32 = u_xlat45;
    let x_907 : f32 = x_45.unity_SpecCube1_HDR.y;
    u_xlat45 = (x_905 * x_907);
    let x_909 : f32 = u_xlat45;
    u_xlat45 = exp2(x_909);
    let x_911 : f32 = u_xlat45;
    let x_913 : f32 = x_45.unity_SpecCube1_HDR.x;
    u_xlat45 = (x_911 * x_913);
    let x_915 : vec4<f32> = u_xlat5;
    let x_917 : f32 = u_xlat45;
    let x_919 : vec3<f32> = (vec3<f32>(x_915.x, x_915.y, x_915.z) * vec3<f32>(x_917, x_917, x_917));
    let x_920 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
    let x_922 : f32 = u_xlat46;
    let x_924 : vec4<f32> = u_xlat8;
    let x_927 : vec4<f32> = u_xlat5;
    let x_930 : vec3<f32> = ((vec3<f32>(x_922, x_922, x_922) * vec3<f32>(x_924.x, x_924.y, x_924.z)) + -(vec3<f32>(x_927.x, x_927.y, x_927.z)));
    let x_931 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
    let x_934 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    let x_936 : vec4<f32> = u_xlat8;
    let x_939 : vec4<f32> = u_xlat5;
    let x_941 : vec3<f32> = ((vec3<f32>(x_934.w, x_934.w, x_934.w) * vec3<f32>(x_936.x, x_936.y, x_936.z)) + vec3<f32>(x_939.x, x_939.y, x_939.z));
    let x_942 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  }
  let x_944 : f32 = u_xlat47;
  let x_946 : vec4<f32> = u_xlat9;
  let x_948 : vec3<f32> = (vec3<f32>(x_944, x_944, x_944) * vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = vs_TEXCOORD1;
  let x_954 : vec2<f32> = u_xlat30;
  let x_958 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_960 : vec3<f32> = ((-(vec3<f32>(x_951.x, x_951.y, x_951.z)) * vec3<f32>(x_954.x, x_954.x, x_954.x)) + vec3<f32>(x_958.x, x_958.y, x_958.z));
  let x_961 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : vec4<f32> = u_xlat8;
  let x_965 : vec4<f32> = u_xlat8;
  u_xlat30.x = dot(vec3<f32>(x_963.x, x_963.y, x_963.z), vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_970 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_970, 0.001f);
  let x_975 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_975);
  let x_978 : vec2<f32> = u_xlat30;
  let x_980 : vec4<f32> = u_xlat8;
  let x_982 : vec3<f32> = (vec3<f32>(x_978.x, x_978.x, x_978.x) * vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : vec4<f32> = u_xlat3;
  let x_987 : vec3<f32> = u_xlat4;
  u_xlat30.x = dot(vec3<f32>(x_985.x, x_985.y, x_985.z), -(x_987));
  let x_991 : vec4<f32> = u_xlat3;
  let x_994 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat45 = dot(vec3<f32>(x_991.x, x_991.y, x_991.z), vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : f32 = u_xlat45;
  u_xlat45 = clamp(x_997, 0.0f, 1.0f);
  let x_999 : vec4<f32> = u_xlat3;
  let x_1001 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_999.x, x_999.y, x_999.z), vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1004, 0.0f, 1.0f);
  let x_1007 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_1009 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1007.x, x_1007.y, x_1007.z), vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1014 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1014, 0.0f, 1.0f);
  let x_1019 : f32 = u_xlat3.x;
  let x_1021 : f32 = u_xlat3.x;
  u_xlat18 = (x_1019 * x_1021);
  let x_1023 : f32 = u_xlat18;
  let x_1025 : f32 = u_xlat49;
  u_xlat18 = dot(vec2<f32>(x_1023, x_1023), vec2<f32>(x_1025, x_1025));
  let x_1028 : f32 = u_xlat18;
  u_xlat18 = (x_1028 + -0.5f);
  let x_1032 : f32 = u_xlat45;
  u_xlat33 = (-(x_1032) + 1.0f);
  let x_1035 : f32 = u_xlat33;
  let x_1036 : f32 = u_xlat33;
  u_xlat48 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat48;
  let x_1039 : f32 = u_xlat48;
  u_xlat48 = (x_1038 * x_1039);
  let x_1041 : f32 = u_xlat33;
  let x_1042 : f32 = u_xlat48;
  u_xlat33 = (x_1041 * x_1042);
  let x_1044 : f32 = u_xlat18;
  let x_1045 : f32 = u_xlat33;
  u_xlat33 = ((x_1044 * x_1045) + 1.0f);
  let x_1049 : f32 = u_xlat30.x;
  u_xlat48 = (-(abs(x_1049)) + 1.0f);
  let x_1053 : f32 = u_xlat48;
  let x_1054 : f32 = u_xlat48;
  u_xlat4.x = (x_1053 * x_1054);
  let x_1058 : f32 = u_xlat4.x;
  let x_1060 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1058 * x_1060);
  let x_1063 : f32 = u_xlat48;
  let x_1065 : f32 = u_xlat4.x;
  u_xlat48 = (x_1063 * x_1065);
  let x_1067 : f32 = u_xlat18;
  let x_1068 : f32 = u_xlat48;
  u_xlat18 = ((x_1067 * x_1068) + 1.0f);
  let x_1071 : f32 = u_xlat18;
  let x_1072 : f32 = u_xlat33;
  u_xlat18 = (x_1071 * x_1072);
  let x_1074 : f32 = u_xlat45;
  let x_1075 : f32 = u_xlat18;
  u_xlat18 = (x_1074 * x_1075);
  let x_1077 : f32 = u_xlat49;
  let x_1078 : f32 = u_xlat49;
  u_xlat33 = (x_1077 * x_1078);
  let x_1080 : f32 = u_xlat33;
  u_xlat33 = max(x_1080, 0.002f);
  let x_1083 : f32 = u_xlat33;
  u_xlat4.x = (-(x_1083) + 1.0f);
  let x_1089 : f32 = u_xlat30.x;
  let x_1092 : f32 = u_xlat4.x;
  let x_1094 : f32 = u_xlat33;
  u_xlat19 = ((abs(x_1089) * x_1092) + x_1094);
  let x_1096 : f32 = u_xlat45;
  let x_1098 : f32 = u_xlat4.x;
  let x_1100 : f32 = u_xlat33;
  u_xlat4.x = ((x_1096 * x_1098) + x_1100);
  let x_1104 : f32 = u_xlat30.x;
  let x_1107 : f32 = u_xlat4.x;
  u_xlat30.x = (abs(x_1104) * x_1107);
  let x_1110 : f32 = u_xlat45;
  let x_1111 : f32 = u_xlat19;
  let x_1114 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1110 * x_1111) + x_1114);
  let x_1118 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1118 + 0.00001f);
  let x_1123 : f32 = u_xlat30.x;
  u_xlat30.x = (0.5f / x_1123);
  let x_1126 : f32 = u_xlat33;
  let x_1127 : f32 = u_xlat33;
  u_xlat4.x = (x_1126 * x_1127);
  let x_1130 : f32 = u_xlat46;
  let x_1132 : f32 = u_xlat4.x;
  let x_1134 : f32 = u_xlat46;
  u_xlat19 = ((x_1130 * x_1132) + -(x_1134));
  let x_1137 : f32 = u_xlat19;
  let x_1138 : f32 = u_xlat46;
  u_xlat46 = ((x_1137 * x_1138) + 1.0f);
  let x_1142 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1142 * 0.318309873f);
  let x_1146 : f32 = u_xlat46;
  let x_1147 : f32 = u_xlat46;
  u_xlat46 = ((x_1146 * x_1147) + 0.0000001f);
  let x_1152 : f32 = u_xlat4.x;
  let x_1153 : f32 = u_xlat46;
  u_xlat46 = (x_1152 / x_1153);
  let x_1156 : f32 = u_xlat30.x;
  let x_1157 : f32 = u_xlat46;
  u_xlat30.x = (x_1156 * x_1157);
  let x_1160 : f32 = u_xlat45;
  let x_1162 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1160 * x_1162);
  let x_1166 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1166 * 3.141592741f);
  let x_1171 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1171, 0.0f);
  let x_1174 : f32 = u_xlat33;
  let x_1175 : f32 = u_xlat33;
  u_xlat45 = ((x_1174 * x_1175) + 1.0f);
  let x_1178 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1178);
  let x_1180 : vec3<f32> = u_xlat1;
  let x_1181 : vec3<f32> = u_xlat1;
  u_xlat46 = dot(x_1180, x_1181);
  let x_1183 : f32 = u_xlat46;
  u_xlatb46 = !((x_1183 == 0.0f));
  let x_1185 : bool = u_xlatb46;
  u_xlat46 = select(0.0f, 1.0f, x_1185);
  let x_1188 : f32 = u_xlat30.x;
  let x_1189 : f32 = u_xlat46;
  u_xlat30.x = (x_1188 * x_1189);
  let x_1193 : f32 = u_xlat0.y;
  let x_1195 : f32 = x_45.x_GlossMapScale;
  let x_1198 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1193 * x_1195) + -(x_1198));
  let x_1203 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1203 + 1.0f);
  let x_1207 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1207, 0.0f, 1.0f);
  let x_1210 : f32 = u_xlat18;
  let x_1212 : vec3<f32> = u_xlat6;
  u_xlat4 = (vec3<f32>(x_1210, x_1210, x_1210) * x_1212);
  let x_1214 : vec4<f32> = u_xlat7;
  let x_1216 : f32 = u_xlat47;
  let x_1219 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_1214.x, x_1214.y, x_1214.z) * vec3<f32>(x_1216, x_1216, x_1216)) + x_1219);
  let x_1221 : vec3<f32> = u_xlat6;
  let x_1222 : vec2<f32> = u_xlat30;
  u_xlat6 = (x_1221 * vec3<f32>(x_1222.x, x_1222.x, x_1222.x));
  let x_1227 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_1227) + 1.0f);
  let x_1232 : f32 = u_xlat15.x;
  let x_1234 : f32 = u_xlat15.x;
  u_xlat30.x = (x_1232 * x_1234);
  let x_1238 : f32 = u_xlat30.x;
  let x_1240 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1238 * x_1240);
  let x_1244 : f32 = u_xlat15.x;
  let x_1246 : f32 = u_xlat30.x;
  u_xlat15.x = (x_1244 * x_1246);
  let x_1249 : vec3<f32> = u_xlat1;
  let x_1252 : vec3<f32> = (-(x_1249) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1255 : vec4<f32> = u_xlat3;
  let x_1257 : vec3<f32> = u_xlat15;
  let x_1260 : vec3<f32> = u_xlat1;
  let x_1261 : vec3<f32> = ((vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(x_1257.x, x_1257.x, x_1257.x)) + x_1260);
  let x_1262 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1264 : vec4<f32> = u_xlat3;
  let x_1266 : vec3<f32> = u_xlat6;
  let x_1267 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) * x_1266);
  let x_1268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
  let x_1270 : vec3<f32> = u_xlat2;
  let x_1271 : vec3<f32> = u_xlat4;
  let x_1273 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_1270 * x_1271) + vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
  let x_1276 : vec4<f32> = u_xlat5;
  let x_1278 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1276.x, x_1276.y, x_1276.z) * vec3<f32>(x_1278, x_1278, x_1278));
  let x_1281 : vec3<f32> = u_xlat1;
  let x_1283 : vec3<f32> = u_xlat0;
  let x_1285 : vec3<f32> = (-(x_1281) + vec3<f32>(x_1283.x, x_1283.x, x_1283.x));
  let x_1286 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
  let x_1288 : f32 = u_xlat48;
  let x_1290 : vec4<f32> = u_xlat3;
  let x_1293 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1288, x_1288, x_1288) * vec3<f32>(x_1290.x, x_1290.y, x_1290.z)) + x_1293);
  let x_1295 : vec3<f32> = u_xlat15;
  let x_1296 : vec3<f32> = u_xlat1;
  let x_1298 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_1295 * x_1296) + x_1298);
  let x_1301 : f32 = vs_TEXCOORD1.w;
  let x_1303 : f32 = x_45.x_ProjectionParams.y;
  u_xlat45 = (x_1301 / x_1303);
  let x_1305 : f32 = u_xlat45;
  u_xlat45 = (-(x_1305) + 1.0f);
  let x_1308 : f32 = u_xlat45;
  let x_1310 : f32 = x_45.x_ProjectionParams.z;
  u_xlat45 = (x_1308 * x_1310);
  let x_1312 : f32 = u_xlat45;
  u_xlat45 = max(x_1312, 0.0f);
  let x_1314 : f32 = u_xlat45;
  let x_1317 : f32 = x_45.unity_FogParams.x;
  u_xlat45 = (x_1314 * x_1317);
  let x_1319 : f32 = u_xlat45;
  let x_1320 : f32 = u_xlat45;
  u_xlat45 = (x_1319 * -(x_1320));
  let x_1323 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1323);
  let x_1325 : vec3<f32> = u_xlat0;
  let x_1328 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1325 + -(vec3<f32>(x_1328.x, x_1328.y, x_1328.z)));
  let x_1334 : f32 = u_xlat45;
  let x_1336 : vec3<f32> = u_xlat0;
  let x_1339 : vec4<f32> = x_45.unity_FogColor;
  let x_1341 : vec3<f32> = ((vec3<f32>(x_1334, x_1334, x_1334) * x_1336) + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
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

