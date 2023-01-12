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
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_AmbientColor : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(8) var sampler_Normal : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var u_xlat6 : vec4<f32>;
  var x_245 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var x_425 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_608 : f32;
  var x_620 : f32;
  var x_632 : f32;
  var u_xlatb49 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_785 : f32;
  var x_797 : f32;
  var x_809 : f32;
  var u_xlat17 : f32;
  var u_xlat16 : f32;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_28;
  let x_32 : vec3<f32> = u_xlat0;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat45;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_71 : vec4<f32> = vs_TEXCOORD0;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_71.x, x_71.y));
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_79 : vec4<f32> = x_37.x_Color;
  let x_81 : vec3<f32> = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec4<f32> = u_xlat3;
  let x_88 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_85.x, x_85.y, x_85.z) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_95 : f32 = x_37.x_Time.x;
  let x_98 : f32 = x_37.x_MovementSpeed;
  let x_101 : f32 = vs_TEXCOORD0.z;
  u_xlat5.x = ((x_95 * x_98) + x_101);
  let x_105 : f32 = x_37.x_Time.x;
  let x_108 : f32 = x_37.x_MovementSpeed;
  let x_111 : f32 = vs_TEXCOORD0.w;
  u_xlat5.y = ((-(x_105) * x_108) + x_111);
  let x_119 : vec4<f32> = u_xlat5;
  let x_121 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_119.x, x_119.y));
  let x_122 : vec3<f32> = vec3<f32>(x_121.x, x_121.y, x_121.w);
  let x_123 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_126 : f32 = u_xlat5.z;
  let x_128 : f32 = u_xlat5.x;
  u_xlat5.x = (x_126 * x_128);
  let x_131 : vec4<f32> = u_xlat5;
  let x_138 : vec2<f32> = ((vec2<f32>(x_131.x, x_131.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_139 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_141 : vec4<f32> = u_xlat5;
  let x_145 : f32 = x_37.x_NormalSacle;
  let x_147 : vec2<f32> = (vec2<f32>(x_141.x, x_141.y) * vec2<f32>(x_145, x_145));
  let x_148 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_147.x, x_147.y, x_148.z, x_148.w);
  let x_151 : vec4<f32> = u_xlat5;
  let x_153 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec2<f32>(x_151.x, x_151.y), vec2<f32>(x_153.x, x_153.y));
  let x_156 : f32 = u_xlat46;
  u_xlat46 = min(x_156, 1.0f);
  let x_159 : f32 = u_xlat46;
  u_xlat46 = (-(x_159) + 1.0f);
  let x_162 : f32 = u_xlat46;
  u_xlat5.z = sqrt(x_162);
  let x_166 : f32 = vs_COLOR0.w;
  u_xlat46 = (-(x_166) + 1.0f);
  let x_170 : f32 = u_xlat3.w;
  let x_172 : f32 = x_37.x_Color.w;
  let x_174 : f32 = u_xlat46;
  u_xlat46 = ((x_170 * x_172) + -(x_174));
  let x_180 : f32 = u_xlat46;
  u_xlatb46 = (x_180 < 0.0f);
  let x_183 : bool = u_xlatb46;
  if (((select(0i, 1i, x_183) * -1i) != 0i)) {
    discard;
  }
  let x_193 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb46 = (x_193 == 1.0f);
  let x_195 : bool = u_xlatb46;
  if (x_195) {
    let x_200 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb47 = (x_200 == 1.0f);
    let x_203 : vec4<f32> = vs_TEXCOORD2;
    let x_207 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_209 : vec3<f32> = (vec3<f32>(x_203.w, x_203.w, x_203.w) * vec3<f32>(x_207.x, x_207.y, x_207.z));
    let x_210 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_213 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_215 : vec4<f32> = vs_TEXCOORD1;
    let x_218 : vec4<f32> = u_xlat6;
    let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215.w, x_215.w, x_215.w)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
    let x_221 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
    let x_225 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_227 : vec4<f32> = vs_TEXCOORD3;
    let x_230 : vec4<f32> = u_xlat6;
    let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.w, x_227.w, x_227.w)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
    let x_233 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_235 : vec4<f32> = u_xlat6;
    let x_239 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_241 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) + vec3<f32>(x_239.x, x_239.y, x_239.z));
    let x_242 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
    let x_244 : bool = u_xlatb47;
    if (x_244) {
      let x_248 : vec4<f32> = u_xlat6;
      x_245 = vec3<f32>(x_248.x, x_248.y, x_248.z);
    } else {
      let x_251 : vec3<f32> = u_xlat0;
      x_245 = x_251;
    }
    let x_252 : vec3<f32> = x_245;
    let x_253 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat6;
    let x_259 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_261 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + -(x_259));
    let x_262 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_264 : vec4<f32> = u_xlat6;
    let x_268 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_269 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) * x_268);
    let x_270 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
    let x_274 : f32 = u_xlat6.y;
    u_xlat47 = ((x_274 * 0.25f) + 0.75f);
    let x_281 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat48 = ((x_281 * 0.5f) + 0.75f);
    let x_285 : f32 = u_xlat47;
    let x_286 : f32 = u_xlat48;
    u_xlat6.x = max(x_285, x_286);
    let x_297 : vec4<f32> = u_xlat6;
    let x_299 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_297.x, x_297.z, x_297.w));
    u_xlat6 = x_299;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_305 : vec4<f32> = u_xlat6;
  let x_308 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat47 = dot(x_305, x_308);
  let x_310 : f32 = u_xlat47;
  u_xlat47 = clamp(x_310, 0.0f, 1.0f);
  let x_312 : vec4<f32> = vs_TEXCOORD1;
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_312.x, x_312.y, x_312.z), vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_318 : vec4<f32> = vs_TEXCOORD2;
  let x_320 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_318.x, x_318.y, x_318.z), vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_324 : vec4<f32> = vs_TEXCOORD3;
  let x_326 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_324.x, x_324.y, x_324.z), vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_330 : vec4<f32> = u_xlat6;
  let x_332 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat48;
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec3<f32> = (vec3<f32>(x_337, x_337, x_337) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_346 : f32 = x_37.x_Glossiness;
  u_xlat48 = (-(x_346) + 1.0f);
  let x_350 : vec4<f32> = u_xlat2;
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(-(vec3<f32>(x_350.x, x_350.y, x_350.z)), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : f32 = u_xlat49;
  let x_357 : f32 = u_xlat49;
  u_xlat49 = (x_356 + x_357);
  let x_359 : vec4<f32> = u_xlat5;
  let x_361 : f32 = u_xlat49;
  let x_365 : vec4<f32> = u_xlat2;
  let x_368 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * -(vec3<f32>(x_361, x_361, x_361))) + -(vec3<f32>(x_365.x, x_365.y, x_365.z)));
  let x_369 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_372 : f32 = u_xlat47;
  let x_376 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_372, x_372, x_372) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : bool = u_xlatb46;
  if (x_379) {
    let x_383 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb46 = (x_383 == 1.0f);
    let x_386 : vec4<f32> = vs_TEXCOORD2;
    let x_389 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_391 : vec3<f32> = (vec3<f32>(x_386.w, x_386.w, x_386.w) * vec3<f32>(x_389.x, x_389.y, x_389.z));
    let x_392 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_395 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_397 : vec4<f32> = vs_TEXCOORD1;
    let x_400 : vec4<f32> = u_xlat8;
    let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.w, x_397.w, x_397.w)) + vec3<f32>(x_400.x, x_400.y, x_400.z));
    let x_403 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    let x_406 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_408 : vec4<f32> = vs_TEXCOORD3;
    let x_411 : vec4<f32> = u_xlat8;
    let x_413 : vec3<f32> = ((vec3<f32>(x_406.x, x_406.y, x_406.z) * vec3<f32>(x_408.w, x_408.w, x_408.w)) + vec3<f32>(x_411.x, x_411.y, x_411.z));
    let x_414 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
    let x_416 : vec4<f32> = u_xlat8;
    let x_419 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_421 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.z) + vec3<f32>(x_419.x, x_419.y, x_419.z));
    let x_422 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
    let x_424 : bool = u_xlatb46;
    if (x_424) {
      let x_428 : vec4<f32> = u_xlat8;
      x_425 = vec3<f32>(x_428.x, x_428.y, x_428.z);
    } else {
      let x_431 : vec3<f32> = u_xlat0;
      x_425 = x_431;
    }
    let x_432 : vec3<f32> = x_425;
    let x_433 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_435 : vec4<f32> = u_xlat8;
    let x_438 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_440 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) + -(x_438));
    let x_441 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
    let x_443 : vec4<f32> = u_xlat8;
    let x_446 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_447 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) * x_446);
    let x_448 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_448.x, x_447.x, x_447.y, x_447.z);
    let x_451 : f32 = u_xlat8.y;
    u_xlat46 = (x_451 * 0.25f);
    let x_454 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat47 = (x_454 * 0.5f);
    let x_457 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat49 = ((-(x_457) * 0.5f) + 0.25f);
    let x_461 : f32 = u_xlat46;
    let x_462 : f32 = u_xlat47;
    u_xlat46 = max(x_461, x_462);
    let x_464 : f32 = u_xlat49;
    let x_465 : f32 = u_xlat46;
    u_xlat8.x = min(x_464, x_465);
    let x_472 : vec4<f32> = u_xlat8;
    let x_474 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_472.x, x_472.z, x_472.w));
    u_xlat9 = x_474;
    let x_476 : vec4<f32> = u_xlat8;
    let x_479 : vec3<f32> = (vec3<f32>(x_476.x, x_476.z, x_476.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_480 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
    let x_485 : vec4<f32> = u_xlat10;
    let x_487 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_485.x, x_485.y, x_485.z));
    u_xlat10 = x_487;
    let x_488 : vec4<f32> = u_xlat8;
    let x_491 : vec3<f32> = (vec3<f32>(x_488.x, x_488.z, x_488.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_492 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
    let x_497 : vec4<f32> = u_xlat8;
    let x_499 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_497.x, x_497.y, x_497.z));
    u_xlat8 = x_499;
    u_xlat5.w = 1.0f;
    let x_501 : vec4<f32> = u_xlat9;
    let x_502 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_501, x_502);
    let x_505 : vec4<f32> = u_xlat10;
    let x_506 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_505, x_506);
    let x_509 : vec4<f32> = u_xlat8;
    let x_510 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_509, x_510);
  } else {
    u_xlat5.w = 1.0f;
    let x_516 : vec4<f32> = x_37.unity_SHAr;
    let x_517 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_516, x_517);
    let x_522 : vec4<f32> = x_37.unity_SHAg;
    let x_523 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_522, x_523);
    let x_528 : vec4<f32> = x_37.unity_SHAb;
    let x_529 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_528, x_529);
  }
  let x_532 : vec4<f32> = u_xlat9;
  let x_536 : vec3<f32> = vs_TEXCOORD5;
  let x_537 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) + x_536);
  let x_538 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat8;
  let x_543 : vec3<f32> = max(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_544 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_548 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb46 = (0.0f < x_548);
  let x_550 : bool = u_xlatb46;
  if (x_550) {
    let x_553 : vec4<f32> = u_xlat6;
    let x_555 : vec4<f32> = u_xlat6;
    u_xlat46 = dot(vec3<f32>(x_553.x, x_553.y, x_553.z), vec3<f32>(x_555.x, x_555.y, x_555.z));
    let x_558 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_558);
    let x_560 : f32 = u_xlat46;
    let x_562 : vec4<f32> = u_xlat6;
    let x_564 : vec3<f32> = (vec3<f32>(x_560, x_560, x_560) * vec3<f32>(x_562.x, x_562.y, x_562.z));
    let x_565 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
    let x_567 : vec3<f32> = u_xlat0;
    let x_571 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_573 : vec3<f32> = (-(x_567) + vec3<f32>(x_571.x, x_571.y, x_571.z));
    let x_574 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
    let x_576 : vec4<f32> = u_xlat10;
    let x_578 : vec4<f32> = u_xlat9;
    let x_580 : vec3<f32> = (vec3<f32>(x_576.x, x_576.y, x_576.z) / vec3<f32>(x_578.x, x_578.y, x_578.z));
    let x_581 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
    let x_584 : vec3<f32> = u_xlat0;
    let x_588 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_584) + vec3<f32>(x_588.x, x_588.y, x_588.z));
    let x_591 : vec3<f32> = u_xlat11;
    let x_592 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_591 / vec3<f32>(x_592.x, x_592.y, x_592.z));
    let x_599 : vec4<f32> = u_xlat9;
    let x_602 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_599.x, x_599.y, x_599.z, x_599.x));
    u_xlatb12 = vec3<bool>(x_602.x, x_602.y, x_602.z);
    let x_605 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_605;
    let x_607 : bool = u_xlatb12.x;
    if (x_607) {
      let x_612 : f32 = u_xlat10.x;
      x_608 = x_612;
    } else {
      let x_615 : f32 = u_xlat11.x;
      x_608 = x_615;
    }
    let x_616 : f32 = x_608;
    hlslcc_movcTemp.x = x_616;
    let x_619 : bool = u_xlatb12.y;
    if (x_619) {
      let x_624 : f32 = u_xlat10.y;
      x_620 = x_624;
    } else {
      let x_627 : f32 = u_xlat11.y;
      x_620 = x_627;
    }
    let x_628 : f32 = x_620;
    hlslcc_movcTemp.y = x_628;
    let x_631 : bool = u_xlatb12.z;
    if (x_631) {
      let x_636 : f32 = u_xlat10.z;
      x_632 = x_636;
    } else {
      let x_639 : f32 = u_xlat11.z;
      x_632 = x_639;
    }
    let x_640 : f32 = x_632;
    hlslcc_movcTemp.z = x_640;
    let x_642 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_642;
    let x_644 : f32 = u_xlat10.y;
    let x_646 : f32 = u_xlat10.x;
    u_xlat46 = min(x_644, x_646);
    let x_649 : f32 = u_xlat10.z;
    let x_650 : f32 = u_xlat46;
    u_xlat46 = min(x_649, x_650);
    let x_652 : vec3<f32> = u_xlat0;
    let x_654 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_657 : vec3<f32> = (x_652 + -(vec3<f32>(x_654.x, x_654.y, x_654.z)));
    let x_658 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
    let x_660 : vec4<f32> = u_xlat9;
    let x_662 : f32 = u_xlat46;
    let x_665 : vec4<f32> = u_xlat10;
    let x_667 : vec3<f32> = ((vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_662, x_662, x_662)) + vec3<f32>(x_665.x, x_665.y, x_665.z));
    let x_668 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  } else {
    let x_671 : vec4<f32> = u_xlat6;
    let x_672 : vec3<f32> = vec3<f32>(x_671.x, x_671.y, x_671.z);
    let x_673 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  }
  let x_675 : f32 = u_xlat48;
  u_xlat46 = ((-(x_675) * 0.699999988f) + 1.700000048f);
  let x_681 : f32 = u_xlat46;
  let x_682 : f32 = u_xlat48;
  u_xlat46 = (x_681 * x_682);
  let x_684 : f32 = u_xlat46;
  u_xlat46 = (x_684 * 6.0f);
  let x_695 : vec4<f32> = u_xlat9;
  let x_697 : f32 = u_xlat46;
  let x_698 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_695.x, x_695.y, x_695.z), x_697);
  u_xlat9 = x_698;
  let x_700 : f32 = u_xlat9.w;
  u_xlat47 = (x_700 + -1.0f);
  let x_704 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_705 : f32 = u_xlat47;
  u_xlat47 = ((x_704 * x_705) + 1.0f);
  let x_708 : f32 = u_xlat47;
  u_xlat47 = log2(x_708);
  let x_710 : f32 = u_xlat47;
  let x_712 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_710 * x_712);
  let x_714 : f32 = u_xlat47;
  u_xlat47 = exp2(x_714);
  let x_716 : f32 = u_xlat47;
  let x_718 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_716 * x_718);
  let x_720 : vec4<f32> = u_xlat9;
  let x_722 : f32 = u_xlat47;
  let x_724 : vec3<f32> = (vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(x_722, x_722, x_722));
  let x_725 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_729 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb49 = (x_729 < 0.999989986f);
  let x_732 : bool = u_xlatb49;
  if (x_732) {
    let x_737 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb49 = (0.0f < x_737);
    let x_739 : bool = u_xlatb49;
    if (x_739) {
      let x_742 : vec4<f32> = u_xlat6;
      let x_744 : vec4<f32> = u_xlat6;
      u_xlat49 = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), vec3<f32>(x_744.x, x_744.y, x_744.z));
      let x_747 : f32 = u_xlat49;
      u_xlat49 = inverseSqrt(x_747);
      let x_749 : f32 = u_xlat49;
      let x_751 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_749, x_749, x_749) * vec3<f32>(x_751.x, x_751.y, x_751.z));
      let x_755 : vec3<f32> = u_xlat0;
      let x_759 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_755) + vec3<f32>(x_759.x, x_759.y, x_759.z));
      let x_762 : vec3<f32> = u_xlat12;
      let x_763 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_762 / x_763);
      let x_766 : vec3<f32> = u_xlat0;
      let x_770 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_766) + vec3<f32>(x_770.x, x_770.y, x_770.z));
      let x_773 : vec3<f32> = u_xlat13;
      let x_774 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_773 / x_774);
      let x_777 : vec3<f32> = u_xlat11;
      let x_779 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_777.x, x_777.y, x_777.z, x_777.x));
      u_xlatb14 = vec3<bool>(x_779.x, x_779.y, x_779.z);
      let x_782 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_782;
      let x_784 : bool = u_xlatb14.x;
      if (x_784) {
        let x_789 : f32 = u_xlat12.x;
        x_785 = x_789;
      } else {
        let x_792 : f32 = u_xlat13.x;
        x_785 = x_792;
      }
      let x_793 : f32 = x_785;
      hlslcc_movcTemp_1.x = x_793;
      let x_796 : bool = u_xlatb14.y;
      if (x_796) {
        let x_801 : f32 = u_xlat12.y;
        x_797 = x_801;
      } else {
        let x_804 : f32 = u_xlat13.y;
        x_797 = x_804;
      }
      let x_805 : f32 = x_797;
      hlslcc_movcTemp_1.y = x_805;
      let x_808 : bool = u_xlatb14.z;
      if (x_808) {
        let x_813 : f32 = u_xlat12.z;
        x_809 = x_813;
      } else {
        let x_816 : f32 = u_xlat13.z;
        x_809 = x_816;
      }
      let x_817 : f32 = x_809;
      hlslcc_movcTemp_1.z = x_817;
      let x_819 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_819;
      let x_821 : f32 = u_xlat12.y;
      let x_823 : f32 = u_xlat12.x;
      u_xlat49 = min(x_821, x_823);
      let x_826 : f32 = u_xlat12.z;
      let x_827 : f32 = u_xlat49;
      u_xlat49 = min(x_826, x_827);
      let x_829 : vec3<f32> = u_xlat0;
      let x_831 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_829 + -(vec3<f32>(x_831.x, x_831.y, x_831.z)));
      let x_835 : vec3<f32> = u_xlat11;
      let x_836 : f32 = u_xlat49;
      let x_839 : vec3<f32> = u_xlat0;
      let x_840 : vec3<f32> = ((x_835 * vec3<f32>(x_836, x_836, x_836)) + x_839);
      let x_841 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
    }
    let x_847 : vec4<f32> = u_xlat6;
    let x_849 : f32 = u_xlat46;
    let x_850 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_847.x, x_847.y, x_847.z), x_849);
    u_xlat6 = x_850;
    let x_852 : f32 = u_xlat6.w;
    u_xlat0.x = (x_852 + -1.0f);
    let x_857 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_859 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_857 * x_859) + 1.0f);
    let x_864 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_864);
    let x_868 : f32 = u_xlat0.x;
    let x_870 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_868 * x_870);
    let x_874 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_874);
    let x_878 : f32 = u_xlat0.x;
    let x_880 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_878 * x_880);
    let x_883 : vec4<f32> = u_xlat6;
    let x_885 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_883.x, x_883.y, x_883.z) * vec3<f32>(x_885.x, x_885.x, x_885.x));
    let x_888 : f32 = u_xlat47;
    let x_890 : vec4<f32> = u_xlat9;
    let x_893 : vec3<f32> = u_xlat0;
    let x_895 : vec3<f32> = ((vec3<f32>(x_888, x_888, x_888) * vec3<f32>(x_890.x, x_890.y, x_890.z)) + -(x_893));
    let x_896 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
    let x_899 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_901 : vec4<f32> = u_xlat6;
    let x_904 : vec3<f32> = u_xlat0;
    let x_905 : vec3<f32> = ((vec3<f32>(x_899.w, x_899.w, x_899.w) * vec3<f32>(x_901.x, x_901.y, x_901.z)) + x_904);
    let x_906 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  }
  let x_908 : vec4<f32> = u_xlat3;
  let x_910 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_908.x, x_908.y, x_908.z) * vec3<f32>(x_910.x, x_910.y, x_910.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_918 : f32 = x_37.x_Metallic;
  let x_920 : f32 = x_37.x_Metallic;
  let x_922 : f32 = x_37.x_Metallic;
  let x_923 : vec3<f32> = vec3<f32>(x_918, x_920, x_922);
  let x_928 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_923.x, x_923.y, x_923.z) * x_928) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_934 : f32 = x_37.x_Metallic;
  u_xlat46 = ((-(x_934) * 0.959999979f) + 0.959999979f);
  let x_939 : f32 = u_xlat46;
  let x_941 : vec3<f32> = u_xlat4;
  let x_942 : vec3<f32> = (vec3<f32>(x_939, x_939, x_939) * x_941);
  let x_943 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec3<f32> = u_xlat1;
  let x_946 : f32 = u_xlat45;
  let x_950 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_945 * vec3<f32>(x_946, x_946, x_946)) + vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : vec3<f32> = u_xlat1;
  let x_954 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_953, x_954);
  let x_956 : f32 = u_xlat45;
  u_xlat45 = max(x_956, 0.001f);
  let x_959 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_959);
  let x_961 : f32 = u_xlat45;
  let x_963 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_961, x_961, x_961) * x_963);
  let x_965 : vec4<f32> = u_xlat5;
  let x_967 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : vec4<f32> = u_xlat5;
  let x_973 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_970.x, x_970.y, x_970.z), vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_978 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_978, 0.0f, 1.0f);
  let x_982 : vec4<f32> = u_xlat5;
  let x_984 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(vec3<f32>(x_982.x, x_982.y, x_982.z), x_984);
  let x_986 : f32 = u_xlat17;
  u_xlat17 = clamp(x_986, 0.0f, 1.0f);
  let x_989 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_991 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_989.x, x_989.y, x_989.z), x_991);
  let x_995 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_995, 0.0f, 1.0f);
  let x_1000 : f32 = u_xlat1.x;
  let x_1002 : f32 = u_xlat1.x;
  u_xlat16 = (x_1000 * x_1002);
  let x_1004 : f32 = u_xlat16;
  let x_1006 : f32 = u_xlat48;
  u_xlat16 = dot(vec2<f32>(x_1004, x_1004), vec2<f32>(x_1006, x_1006));
  let x_1009 : f32 = u_xlat16;
  u_xlat16 = (x_1009 + -0.5f);
  let x_1014 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_1014) + 1.0f);
  let x_1018 : f32 = u_xlat31;
  let x_1019 : f32 = u_xlat31;
  u_xlat32 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat32;
  let x_1022 : f32 = u_xlat32;
  u_xlat32 = (x_1021 * x_1022);
  let x_1024 : f32 = u_xlat31;
  let x_1025 : f32 = u_xlat32;
  u_xlat31 = (x_1024 * x_1025);
  let x_1027 : f32 = u_xlat16;
  let x_1028 : f32 = u_xlat31;
  u_xlat31 = ((x_1027 * x_1028) + 1.0f);
  let x_1031 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_1031)) + 1.0f);
  let x_1035 : f32 = u_xlat32;
  let x_1036 : f32 = u_xlat32;
  u_xlat47 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat47;
  let x_1039 : f32 = u_xlat47;
  u_xlat47 = (x_1038 * x_1039);
  let x_1041 : f32 = u_xlat32;
  let x_1042 : f32 = u_xlat47;
  u_xlat32 = (x_1041 * x_1042);
  let x_1044 : f32 = u_xlat16;
  let x_1045 : f32 = u_xlat32;
  u_xlat16 = ((x_1044 * x_1045) + 1.0f);
  let x_1048 : f32 = u_xlat16;
  let x_1049 : f32 = u_xlat31;
  u_xlat16 = (x_1048 * x_1049);
  let x_1052 : f32 = u_xlat2.x;
  let x_1053 : f32 = u_xlat16;
  u_xlat16 = (x_1052 * x_1053);
  let x_1055 : f32 = u_xlat48;
  let x_1056 : f32 = u_xlat48;
  u_xlat31 = (x_1055 * x_1056);
  let x_1058 : f32 = u_xlat31;
  u_xlat31 = max(x_1058, 0.002f);
  let x_1061 : f32 = u_xlat31;
  u_xlat47 = (-(x_1061) + 1.0f);
  let x_1064 : f32 = u_xlat45;
  let x_1066 : f32 = u_xlat47;
  let x_1068 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_1064) * x_1066) + x_1068);
  let x_1071 : f32 = u_xlat2.x;
  let x_1072 : f32 = u_xlat47;
  let x_1074 : f32 = u_xlat31;
  u_xlat47 = ((x_1071 * x_1072) + x_1074);
  let x_1076 : f32 = u_xlat45;
  let x_1078 : f32 = u_xlat47;
  u_xlat45 = (abs(x_1076) * x_1078);
  let x_1081 : f32 = u_xlat2.x;
  let x_1082 : f32 = u_xlat48;
  let x_1084 : f32 = u_xlat45;
  u_xlat45 = ((x_1081 * x_1082) + x_1084);
  let x_1086 : f32 = u_xlat45;
  u_xlat45 = (x_1086 + 0.00001f);
  let x_1089 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1089);
  let x_1091 : f32 = u_xlat31;
  let x_1092 : f32 = u_xlat31;
  u_xlat47 = (x_1091 * x_1092);
  let x_1094 : f32 = u_xlat17;
  let x_1095 : f32 = u_xlat47;
  let x_1097 : f32 = u_xlat17;
  u_xlat48 = ((x_1094 * x_1095) + -(x_1097));
  let x_1100 : f32 = u_xlat48;
  let x_1101 : f32 = u_xlat17;
  u_xlat17 = ((x_1100 * x_1101) + 1.0f);
  let x_1104 : f32 = u_xlat47;
  u_xlat47 = (x_1104 * 0.318309873f);
  let x_1107 : f32 = u_xlat17;
  let x_1108 : f32 = u_xlat17;
  u_xlat17 = ((x_1107 * x_1108) + 0.0000001f);
  let x_1112 : f32 = u_xlat47;
  let x_1113 : f32 = u_xlat17;
  u_xlat17 = (x_1112 / x_1113);
  let x_1115 : f32 = u_xlat45;
  let x_1116 : f32 = u_xlat17;
  u_xlat45 = (x_1115 * x_1116);
  let x_1119 : f32 = u_xlat2.x;
  let x_1120 : f32 = u_xlat45;
  u_xlat45 = (x_1119 * x_1120);
  let x_1122 : f32 = u_xlat45;
  u_xlat45 = (x_1122 * 3.141592741f);
  let x_1125 : f32 = u_xlat45;
  u_xlat45 = max(x_1125, 0.0f);
  let x_1127 : f32 = u_xlat31;
  let x_1128 : f32 = u_xlat31;
  u_xlat31 = ((x_1127 * x_1128) + 1.0f);
  let x_1131 : f32 = u_xlat31;
  u_xlat31 = (1.0f / x_1131);
  let x_1133 : vec3<f32> = u_xlat0;
  let x_1134 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1133, x_1134);
  let x_1139 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1139 == 0.0f));
  let x_1141 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1141);
  let x_1144 : f32 = u_xlat45;
  let x_1146 : f32 = u_xlat2.x;
  u_xlat45 = (x_1144 * x_1146);
  let x_1148 : f32 = u_xlat46;
  let x_1151 : f32 = x_37.x_Glossiness;
  u_xlat46 = (-(x_1148) + x_1151);
  let x_1153 : f32 = u_xlat46;
  u_xlat46 = (x_1153 + 1.0f);
  let x_1155 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1155, 0.0f, 1.0f);
  let x_1157 : vec3<f32> = u_xlat7;
  let x_1158 : f32 = u_xlat16;
  let x_1161 : vec4<f32> = u_xlat8;
  let x_1163 : vec3<f32> = ((x_1157 * vec3<f32>(x_1158, x_1158, x_1158)) + vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1163.x, x_1163.y, x_1164.z, x_1163.z);
  let x_1166 : vec3<f32> = u_xlat7;
  let x_1167 : f32 = u_xlat45;
  u_xlat4 = (x_1166 * vec3<f32>(x_1167, x_1167, x_1167));
  let x_1171 : f32 = u_xlat1.x;
  u_xlat45 = (-(x_1171) + 1.0f);
  let x_1174 : f32 = u_xlat45;
  let x_1175 : f32 = u_xlat45;
  u_xlat1.x = (x_1174 * x_1175);
  let x_1179 : f32 = u_xlat1.x;
  let x_1181 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1179 * x_1181);
  let x_1184 : f32 = u_xlat45;
  let x_1186 : f32 = u_xlat1.x;
  u_xlat45 = (x_1184 * x_1186);
  let x_1188 : vec3<f32> = u_xlat0;
  let x_1191 : vec3<f32> = (-(x_1188) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1192 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
  let x_1194 : vec4<f32> = u_xlat5;
  let x_1196 : f32 = u_xlat45;
  let x_1199 : vec3<f32> = u_xlat0;
  let x_1200 : vec3<f32> = ((vec3<f32>(x_1194.x, x_1194.y, x_1194.z) * vec3<f32>(x_1196, x_1196, x_1196)) + x_1199);
  let x_1201 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1203 : vec3<f32> = u_xlat4;
  let x_1204 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1203 * vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1207 : vec4<f32> = u_xlat3;
  let x_1209 : vec4<f32> = u_xlat2;
  let x_1212 : vec3<f32> = u_xlat4;
  let x_1213 : vec3<f32> = ((vec3<f32>(x_1207.x, x_1207.y, x_1207.z) * vec3<f32>(x_1209.x, x_1209.y, x_1209.w)) + x_1212);
  let x_1214 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1213.z);
  let x_1216 : vec4<f32> = u_xlat10;
  let x_1218 : f32 = u_xlat31;
  u_xlat1 = (vec3<f32>(x_1216.x, x_1216.y, x_1216.z) * vec3<f32>(x_1218, x_1218, x_1218));
  let x_1221 : vec3<f32> = u_xlat0;
  let x_1223 : f32 = u_xlat46;
  let x_1225 : vec3<f32> = (-(x_1221) + vec3<f32>(x_1223, x_1223, x_1223));
  let x_1226 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
  let x_1228 : f32 = u_xlat32;
  let x_1230 : vec4<f32> = u_xlat3;
  let x_1233 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1228, x_1228, x_1228) * vec3<f32>(x_1230.x, x_1230.y, x_1230.z)) + x_1233);
  let x_1235 : vec3<f32> = u_xlat1;
  let x_1236 : vec3<f32> = u_xlat0;
  let x_1238 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1235 * x_1236) + vec3<f32>(x_1238.x, x_1238.y, x_1238.w));
  let x_1243 : vec3<f32> = u_xlat0;
  let x_1246 : vec4<f32> = x_37.x_AmbientColor;
  let x_1248 : vec3<f32> = (x_1243 + vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
  let x_1249 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

