struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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

var<private> vs_TEXCOORD6 : f32;

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
  var x_609 : f32;
  var x_621 : f32;
  var x_633 : f32;
  var u_xlatb49 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_786 : f32;
  var x_798 : f32;
  var x_810 : f32;
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
    let x_517 : vec4<f32> = x_37.unity_SHAr;
    let x_518 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_517, x_518);
    let x_523 : vec4<f32> = x_37.unity_SHAg;
    let x_524 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_523, x_524);
    let x_529 : vec4<f32> = x_37.unity_SHAb;
    let x_530 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_529, x_530);
  }
  let x_533 : vec4<f32> = u_xlat9;
  let x_537 : vec3<f32> = vs_TEXCOORD5;
  let x_538 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) + x_537);
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat8;
  let x_544 : vec3<f32> = max(vec3<f32>(x_541.x, x_541.y, x_541.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_545 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_549 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb46 = (0.0f < x_549);
  let x_551 : bool = u_xlatb46;
  if (x_551) {
    let x_554 : vec4<f32> = u_xlat6;
    let x_556 : vec4<f32> = u_xlat6;
    u_xlat46 = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(x_556.x, x_556.y, x_556.z));
    let x_559 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_559);
    let x_561 : f32 = u_xlat46;
    let x_563 : vec4<f32> = u_xlat6;
    let x_565 : vec3<f32> = (vec3<f32>(x_561, x_561, x_561) * vec3<f32>(x_563.x, x_563.y, x_563.z));
    let x_566 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
    let x_568 : vec3<f32> = u_xlat0;
    let x_572 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_574 : vec3<f32> = (-(x_568) + vec3<f32>(x_572.x, x_572.y, x_572.z));
    let x_575 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
    let x_577 : vec4<f32> = u_xlat10;
    let x_579 : vec4<f32> = u_xlat9;
    let x_581 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) / vec3<f32>(x_579.x, x_579.y, x_579.z));
    let x_582 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
    let x_585 : vec3<f32> = u_xlat0;
    let x_589 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_585) + vec3<f32>(x_589.x, x_589.y, x_589.z));
    let x_592 : vec3<f32> = u_xlat11;
    let x_593 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_592 / vec3<f32>(x_593.x, x_593.y, x_593.z));
    let x_600 : vec4<f32> = u_xlat9;
    let x_603 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_600.x, x_600.y, x_600.z, x_600.x));
    u_xlatb12 = vec3<bool>(x_603.x, x_603.y, x_603.z);
    let x_606 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_606;
    let x_608 : bool = u_xlatb12.x;
    if (x_608) {
      let x_613 : f32 = u_xlat10.x;
      x_609 = x_613;
    } else {
      let x_616 : f32 = u_xlat11.x;
      x_609 = x_616;
    }
    let x_617 : f32 = x_609;
    hlslcc_movcTemp.x = x_617;
    let x_620 : bool = u_xlatb12.y;
    if (x_620) {
      let x_625 : f32 = u_xlat10.y;
      x_621 = x_625;
    } else {
      let x_628 : f32 = u_xlat11.y;
      x_621 = x_628;
    }
    let x_629 : f32 = x_621;
    hlslcc_movcTemp.y = x_629;
    let x_632 : bool = u_xlatb12.z;
    if (x_632) {
      let x_637 : f32 = u_xlat10.z;
      x_633 = x_637;
    } else {
      let x_640 : f32 = u_xlat11.z;
      x_633 = x_640;
    }
    let x_641 : f32 = x_633;
    hlslcc_movcTemp.z = x_641;
    let x_643 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_643;
    let x_645 : f32 = u_xlat10.y;
    let x_647 : f32 = u_xlat10.x;
    u_xlat46 = min(x_645, x_647);
    let x_650 : f32 = u_xlat10.z;
    let x_651 : f32 = u_xlat46;
    u_xlat46 = min(x_650, x_651);
    let x_653 : vec3<f32> = u_xlat0;
    let x_655 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_658 : vec3<f32> = (x_653 + -(vec3<f32>(x_655.x, x_655.y, x_655.z)));
    let x_659 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
    let x_661 : vec4<f32> = u_xlat9;
    let x_663 : f32 = u_xlat46;
    let x_666 : vec4<f32> = u_xlat10;
    let x_668 : vec3<f32> = ((vec3<f32>(x_661.x, x_661.y, x_661.z) * vec3<f32>(x_663, x_663, x_663)) + vec3<f32>(x_666.x, x_666.y, x_666.z));
    let x_669 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  } else {
    let x_672 : vec4<f32> = u_xlat6;
    let x_673 : vec3<f32> = vec3<f32>(x_672.x, x_672.y, x_672.z);
    let x_674 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  }
  let x_676 : f32 = u_xlat48;
  u_xlat46 = ((-(x_676) * 0.699999988f) + 1.700000048f);
  let x_682 : f32 = u_xlat46;
  let x_683 : f32 = u_xlat48;
  u_xlat46 = (x_682 * x_683);
  let x_685 : f32 = u_xlat46;
  u_xlat46 = (x_685 * 6.0f);
  let x_696 : vec4<f32> = u_xlat9;
  let x_698 : f32 = u_xlat46;
  let x_699 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_696.x, x_696.y, x_696.z), x_698);
  u_xlat9 = x_699;
  let x_701 : f32 = u_xlat9.w;
  u_xlat47 = (x_701 + -1.0f);
  let x_705 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_706 : f32 = u_xlat47;
  u_xlat47 = ((x_705 * x_706) + 1.0f);
  let x_709 : f32 = u_xlat47;
  u_xlat47 = log2(x_709);
  let x_711 : f32 = u_xlat47;
  let x_713 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_711 * x_713);
  let x_715 : f32 = u_xlat47;
  u_xlat47 = exp2(x_715);
  let x_717 : f32 = u_xlat47;
  let x_719 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_717 * x_719);
  let x_721 : vec4<f32> = u_xlat9;
  let x_723 : f32 = u_xlat47;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_723, x_723, x_723));
  let x_726 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_730 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb49 = (x_730 < 0.999989986f);
  let x_733 : bool = u_xlatb49;
  if (x_733) {
    let x_738 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb49 = (0.0f < x_738);
    let x_740 : bool = u_xlatb49;
    if (x_740) {
      let x_743 : vec4<f32> = u_xlat6;
      let x_745 : vec4<f32> = u_xlat6;
      u_xlat49 = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), vec3<f32>(x_745.x, x_745.y, x_745.z));
      let x_748 : f32 = u_xlat49;
      u_xlat49 = inverseSqrt(x_748);
      let x_750 : f32 = u_xlat49;
      let x_752 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_750, x_750, x_750) * vec3<f32>(x_752.x, x_752.y, x_752.z));
      let x_756 : vec3<f32> = u_xlat0;
      let x_760 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_756) + vec3<f32>(x_760.x, x_760.y, x_760.z));
      let x_763 : vec3<f32> = u_xlat12;
      let x_764 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_763 / x_764);
      let x_767 : vec3<f32> = u_xlat0;
      let x_771 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_767) + vec3<f32>(x_771.x, x_771.y, x_771.z));
      let x_774 : vec3<f32> = u_xlat13;
      let x_775 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_774 / x_775);
      let x_778 : vec3<f32> = u_xlat11;
      let x_780 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_778.x, x_778.y, x_778.z, x_778.x));
      u_xlatb14 = vec3<bool>(x_780.x, x_780.y, x_780.z);
      let x_783 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_783;
      let x_785 : bool = u_xlatb14.x;
      if (x_785) {
        let x_790 : f32 = u_xlat12.x;
        x_786 = x_790;
      } else {
        let x_793 : f32 = u_xlat13.x;
        x_786 = x_793;
      }
      let x_794 : f32 = x_786;
      hlslcc_movcTemp_1.x = x_794;
      let x_797 : bool = u_xlatb14.y;
      if (x_797) {
        let x_802 : f32 = u_xlat12.y;
        x_798 = x_802;
      } else {
        let x_805 : f32 = u_xlat13.y;
        x_798 = x_805;
      }
      let x_806 : f32 = x_798;
      hlslcc_movcTemp_1.y = x_806;
      let x_809 : bool = u_xlatb14.z;
      if (x_809) {
        let x_814 : f32 = u_xlat12.z;
        x_810 = x_814;
      } else {
        let x_817 : f32 = u_xlat13.z;
        x_810 = x_817;
      }
      let x_818 : f32 = x_810;
      hlslcc_movcTemp_1.z = x_818;
      let x_820 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_820;
      let x_822 : f32 = u_xlat12.y;
      let x_824 : f32 = u_xlat12.x;
      u_xlat49 = min(x_822, x_824);
      let x_827 : f32 = u_xlat12.z;
      let x_828 : f32 = u_xlat49;
      u_xlat49 = min(x_827, x_828);
      let x_830 : vec3<f32> = u_xlat0;
      let x_832 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_830 + -(vec3<f32>(x_832.x, x_832.y, x_832.z)));
      let x_836 : vec3<f32> = u_xlat11;
      let x_837 : f32 = u_xlat49;
      let x_840 : vec3<f32> = u_xlat0;
      let x_841 : vec3<f32> = ((x_836 * vec3<f32>(x_837, x_837, x_837)) + x_840);
      let x_842 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
    }
    let x_848 : vec4<f32> = u_xlat6;
    let x_850 : f32 = u_xlat46;
    let x_851 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_848.x, x_848.y, x_848.z), x_850);
    u_xlat6 = x_851;
    let x_853 : f32 = u_xlat6.w;
    u_xlat0.x = (x_853 + -1.0f);
    let x_858 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_860 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_858 * x_860) + 1.0f);
    let x_865 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_865);
    let x_869 : f32 = u_xlat0.x;
    let x_871 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_869 * x_871);
    let x_875 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_875);
    let x_879 : f32 = u_xlat0.x;
    let x_881 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_879 * x_881);
    let x_884 : vec4<f32> = u_xlat6;
    let x_886 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_884.x, x_884.y, x_884.z) * vec3<f32>(x_886.x, x_886.x, x_886.x));
    let x_889 : f32 = u_xlat47;
    let x_891 : vec4<f32> = u_xlat9;
    let x_894 : vec3<f32> = u_xlat0;
    let x_896 : vec3<f32> = ((vec3<f32>(x_889, x_889, x_889) * vec3<f32>(x_891.x, x_891.y, x_891.z)) + -(x_894));
    let x_897 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
    let x_900 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_902 : vec4<f32> = u_xlat6;
    let x_905 : vec3<f32> = u_xlat0;
    let x_906 : vec3<f32> = ((vec3<f32>(x_900.w, x_900.w, x_900.w) * vec3<f32>(x_902.x, x_902.y, x_902.z)) + x_905);
    let x_907 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  }
  let x_909 : vec4<f32> = u_xlat3;
  let x_911 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_909.x, x_909.y, x_909.z) * vec3<f32>(x_911.x, x_911.y, x_911.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_919 : f32 = x_37.x_Metallic;
  let x_921 : f32 = x_37.x_Metallic;
  let x_923 : f32 = x_37.x_Metallic;
  let x_924 : vec3<f32> = vec3<f32>(x_919, x_921, x_923);
  let x_929 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_924.x, x_924.y, x_924.z) * x_929) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_935 : f32 = x_37.x_Metallic;
  u_xlat46 = ((-(x_935) * 0.959999979f) + 0.959999979f);
  let x_940 : f32 = u_xlat46;
  let x_942 : vec3<f32> = u_xlat4;
  let x_943 : vec3<f32> = (vec3<f32>(x_940, x_940, x_940) * x_942);
  let x_944 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec3<f32> = u_xlat1;
  let x_947 : f32 = u_xlat45;
  let x_951 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_946 * vec3<f32>(x_947, x_947, x_947)) + vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : vec3<f32> = u_xlat1;
  let x_955 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_954, x_955);
  let x_957 : f32 = u_xlat45;
  u_xlat45 = max(x_957, 0.001f);
  let x_960 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_960);
  let x_962 : f32 = u_xlat45;
  let x_964 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_962, x_962, x_962) * x_964);
  let x_966 : vec4<f32> = u_xlat5;
  let x_968 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat5;
  let x_974 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_971.x, x_971.y, x_971.z), vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_979 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_979, 0.0f, 1.0f);
  let x_983 : vec4<f32> = u_xlat5;
  let x_985 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(vec3<f32>(x_983.x, x_983.y, x_983.z), x_985);
  let x_987 : f32 = u_xlat17;
  u_xlat17 = clamp(x_987, 0.0f, 1.0f);
  let x_990 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_992 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_990.x, x_990.y, x_990.z), x_992);
  let x_996 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_996, 0.0f, 1.0f);
  let x_1001 : f32 = u_xlat1.x;
  let x_1003 : f32 = u_xlat1.x;
  u_xlat16 = (x_1001 * x_1003);
  let x_1005 : f32 = u_xlat16;
  let x_1007 : f32 = u_xlat48;
  u_xlat16 = dot(vec2<f32>(x_1005, x_1005), vec2<f32>(x_1007, x_1007));
  let x_1010 : f32 = u_xlat16;
  u_xlat16 = (x_1010 + -0.5f);
  let x_1015 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_1015) + 1.0f);
  let x_1019 : f32 = u_xlat31;
  let x_1020 : f32 = u_xlat31;
  u_xlat32 = (x_1019 * x_1020);
  let x_1022 : f32 = u_xlat32;
  let x_1023 : f32 = u_xlat32;
  u_xlat32 = (x_1022 * x_1023);
  let x_1025 : f32 = u_xlat31;
  let x_1026 : f32 = u_xlat32;
  u_xlat31 = (x_1025 * x_1026);
  let x_1028 : f32 = u_xlat16;
  let x_1029 : f32 = u_xlat31;
  u_xlat31 = ((x_1028 * x_1029) + 1.0f);
  let x_1032 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_1032)) + 1.0f);
  let x_1036 : f32 = u_xlat32;
  let x_1037 : f32 = u_xlat32;
  u_xlat47 = (x_1036 * x_1037);
  let x_1039 : f32 = u_xlat47;
  let x_1040 : f32 = u_xlat47;
  u_xlat47 = (x_1039 * x_1040);
  let x_1042 : f32 = u_xlat32;
  let x_1043 : f32 = u_xlat47;
  u_xlat32 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat16;
  let x_1046 : f32 = u_xlat32;
  u_xlat16 = ((x_1045 * x_1046) + 1.0f);
  let x_1049 : f32 = u_xlat16;
  let x_1050 : f32 = u_xlat31;
  u_xlat16 = (x_1049 * x_1050);
  let x_1053 : f32 = u_xlat2.x;
  let x_1054 : f32 = u_xlat16;
  u_xlat16 = (x_1053 * x_1054);
  let x_1056 : f32 = u_xlat48;
  let x_1057 : f32 = u_xlat48;
  u_xlat31 = (x_1056 * x_1057);
  let x_1059 : f32 = u_xlat31;
  u_xlat31 = max(x_1059, 0.002f);
  let x_1062 : f32 = u_xlat31;
  u_xlat47 = (-(x_1062) + 1.0f);
  let x_1065 : f32 = u_xlat45;
  let x_1067 : f32 = u_xlat47;
  let x_1069 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_1065) * x_1067) + x_1069);
  let x_1072 : f32 = u_xlat2.x;
  let x_1073 : f32 = u_xlat47;
  let x_1075 : f32 = u_xlat31;
  u_xlat47 = ((x_1072 * x_1073) + x_1075);
  let x_1077 : f32 = u_xlat45;
  let x_1079 : f32 = u_xlat47;
  u_xlat45 = (abs(x_1077) * x_1079);
  let x_1082 : f32 = u_xlat2.x;
  let x_1083 : f32 = u_xlat48;
  let x_1085 : f32 = u_xlat45;
  u_xlat45 = ((x_1082 * x_1083) + x_1085);
  let x_1087 : f32 = u_xlat45;
  u_xlat45 = (x_1087 + 0.00001f);
  let x_1090 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1090);
  let x_1092 : f32 = u_xlat31;
  let x_1093 : f32 = u_xlat31;
  u_xlat47 = (x_1092 * x_1093);
  let x_1095 : f32 = u_xlat17;
  let x_1096 : f32 = u_xlat47;
  let x_1098 : f32 = u_xlat17;
  u_xlat48 = ((x_1095 * x_1096) + -(x_1098));
  let x_1101 : f32 = u_xlat48;
  let x_1102 : f32 = u_xlat17;
  u_xlat17 = ((x_1101 * x_1102) + 1.0f);
  let x_1105 : f32 = u_xlat47;
  u_xlat47 = (x_1105 * 0.318309873f);
  let x_1108 : f32 = u_xlat17;
  let x_1109 : f32 = u_xlat17;
  u_xlat17 = ((x_1108 * x_1109) + 0.0000001f);
  let x_1113 : f32 = u_xlat47;
  let x_1114 : f32 = u_xlat17;
  u_xlat17 = (x_1113 / x_1114);
  let x_1116 : f32 = u_xlat45;
  let x_1117 : f32 = u_xlat17;
  u_xlat45 = (x_1116 * x_1117);
  let x_1120 : f32 = u_xlat2.x;
  let x_1121 : f32 = u_xlat45;
  u_xlat45 = (x_1120 * x_1121);
  let x_1123 : f32 = u_xlat45;
  u_xlat45 = (x_1123 * 3.141592741f);
  let x_1126 : f32 = u_xlat45;
  u_xlat45 = max(x_1126, 0.0f);
  let x_1128 : f32 = u_xlat31;
  let x_1129 : f32 = u_xlat31;
  u_xlat31 = ((x_1128 * x_1129) + 1.0f);
  let x_1132 : f32 = u_xlat31;
  u_xlat31 = (1.0f / x_1132);
  let x_1134 : vec3<f32> = u_xlat0;
  let x_1135 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1134, x_1135);
  let x_1140 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1140 == 0.0f));
  let x_1142 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1142);
  let x_1145 : f32 = u_xlat45;
  let x_1147 : f32 = u_xlat2.x;
  u_xlat45 = (x_1145 * x_1147);
  let x_1149 : f32 = u_xlat46;
  let x_1152 : f32 = x_37.x_Glossiness;
  u_xlat46 = (-(x_1149) + x_1152);
  let x_1154 : f32 = u_xlat46;
  u_xlat46 = (x_1154 + 1.0f);
  let x_1156 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1156, 0.0f, 1.0f);
  let x_1158 : vec3<f32> = u_xlat7;
  let x_1159 : f32 = u_xlat16;
  let x_1162 : vec4<f32> = u_xlat8;
  let x_1164 : vec3<f32> = ((x_1158 * vec3<f32>(x_1159, x_1159, x_1159)) + vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1164.z);
  let x_1167 : vec3<f32> = u_xlat7;
  let x_1168 : f32 = u_xlat45;
  u_xlat4 = (x_1167 * vec3<f32>(x_1168, x_1168, x_1168));
  let x_1172 : f32 = u_xlat1.x;
  u_xlat45 = (-(x_1172) + 1.0f);
  let x_1175 : f32 = u_xlat45;
  let x_1176 : f32 = u_xlat45;
  u_xlat1.x = (x_1175 * x_1176);
  let x_1180 : f32 = u_xlat1.x;
  let x_1182 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1180 * x_1182);
  let x_1185 : f32 = u_xlat45;
  let x_1187 : f32 = u_xlat1.x;
  u_xlat45 = (x_1185 * x_1187);
  let x_1189 : vec3<f32> = u_xlat0;
  let x_1192 : vec3<f32> = (-(x_1189) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1193 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1195 : vec4<f32> = u_xlat5;
  let x_1197 : f32 = u_xlat45;
  let x_1200 : vec3<f32> = u_xlat0;
  let x_1201 : vec3<f32> = ((vec3<f32>(x_1195.x, x_1195.y, x_1195.z) * vec3<f32>(x_1197, x_1197, x_1197)) + x_1200);
  let x_1202 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1204 : vec3<f32> = u_xlat4;
  let x_1205 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1204 * vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1208 : vec4<f32> = u_xlat3;
  let x_1210 : vec4<f32> = u_xlat2;
  let x_1213 : vec3<f32> = u_xlat4;
  let x_1214 : vec3<f32> = ((vec3<f32>(x_1208.x, x_1208.y, x_1208.z) * vec3<f32>(x_1210.x, x_1210.y, x_1210.w)) + x_1213);
  let x_1215 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1214.z);
  let x_1217 : vec4<f32> = u_xlat10;
  let x_1219 : f32 = u_xlat31;
  u_xlat1 = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) * vec3<f32>(x_1219, x_1219, x_1219));
  let x_1222 : vec3<f32> = u_xlat0;
  let x_1224 : f32 = u_xlat46;
  let x_1226 : vec3<f32> = (-(x_1222) + vec3<f32>(x_1224, x_1224, x_1224));
  let x_1227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
  let x_1229 : f32 = u_xlat32;
  let x_1231 : vec4<f32> = u_xlat3;
  let x_1234 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1229, x_1229, x_1229) * vec3<f32>(x_1231.x, x_1231.y, x_1231.z)) + x_1234);
  let x_1236 : vec3<f32> = u_xlat1;
  let x_1237 : vec3<f32> = u_xlat0;
  let x_1239 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1236 * x_1237) + vec3<f32>(x_1239.x, x_1239.y, x_1239.w));
  let x_1242 : vec3<f32> = u_xlat0;
  let x_1245 : vec4<f32> = x_37.x_AmbientColor;
  u_xlat0 = (x_1242 + vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
  let x_1249 : f32 = vs_TEXCOORD6;
  let x_1251 : f32 = x_37.x_ProjectionParams.y;
  u_xlat45 = (x_1249 / x_1251);
  let x_1253 : f32 = u_xlat45;
  u_xlat45 = (-(x_1253) + 1.0f);
  let x_1256 : f32 = u_xlat45;
  let x_1258 : f32 = x_37.x_ProjectionParams.z;
  u_xlat45 = (x_1256 * x_1258);
  let x_1260 : f32 = u_xlat45;
  u_xlat45 = max(x_1260, 0.0f);
  let x_1262 : f32 = u_xlat45;
  let x_1265 : f32 = x_37.unity_FogParams.x;
  u_xlat45 = (x_1262 * x_1265);
  let x_1267 : f32 = u_xlat45;
  let x_1268 : f32 = u_xlat45;
  u_xlat45 = (x_1267 * -(x_1268));
  let x_1271 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1271);
  let x_1273 : vec3<f32> = u_xlat0;
  let x_1276 : vec4<f32> = x_37.unity_FogColor;
  u_xlat0 = (x_1273 + -(vec3<f32>(x_1276.x, x_1276.y, x_1276.z)));
  let x_1282 : f32 = u_xlat45;
  let x_1284 : vec3<f32> = u_xlat0;
  let x_1287 : vec4<f32> = x_37.unity_FogColor;
  let x_1289 : vec3<f32> = ((vec3<f32>(x_1282, x_1282, x_1282) * x_1284) + vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
  let x_1290 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

