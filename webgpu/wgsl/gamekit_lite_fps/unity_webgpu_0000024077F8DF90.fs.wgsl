struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat36 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlatb39 : bool;

var<private> u_xlat16 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb38 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb9 : vec3<bool>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat40 : f32;

var<private> u_xlatb41 : bool;

var<private> u_xlat41 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb11 : vec3<bool>;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_207 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_409 : f32;
  var x_421 : f32;
  var x_433 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_588 : f32;
  var x_600 : f32;
  var x_612 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD1;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_24 : vec3<f32> = (-(x_13) + x_23);
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_24.z, x_25.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat36 = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_34 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat36;
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec3<f32> = (vec3<f32>(x_37, x_37, x_37) * vec3<f32>(x_39.x, x_39.y, x_39.z));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_46 : vec3<f32> = vs_TEXCOORD0;
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat37 = dot(x_46, vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_50 : f32 = u_xlat37;
  u_xlat37 = log2(x_50);
  let x_52 : f32 = u_xlat37;
  u_xlat37 = (x_52 * 0.100000001f);
  let x_55 : f32 = u_xlat37;
  u_xlat37 = exp2(x_55);
  let x_57 : f32 = u_xlat37;
  u_xlat37 = (-(x_57) + 1.0f);
  let x_61 : f32 = u_xlat37;
  u_xlat37 = max(x_61, 0.0f);
  let x_66 : f32 = u_xlat37;
  let x_71 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (vec3<f32>(x_66, x_66, x_66) * vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_79 : f32 = x_18.x_Time.x;
  u_xlat37 = (x_79 * 200.0f);
  let x_82 : f32 = u_xlat37;
  u_xlat37 = sin(x_82);
  let x_84 : f32 = u_xlat37;
  u_xlat37 = (x_84 + 1.0f);
  let x_86 : f32 = u_xlat37;
  u_xlat37 = (x_86 * 0.5f);
  let x_90 : f32 = u_xlat37;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_98 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat4.x = x_98;
  let x_101 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat4.y = x_101;
  let x_106 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat4.z = x_106;
  let x_109 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec3<f32> = vs_TEXCOORD1;
  let x_117 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_120 : vec3<f32> = (x_114 + -(vec3<f32>(x_117.x, x_117.y, x_117.z)));
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : vec4<f32> = u_xlat4;
  let x_126 : vec4<f32> = u_xlat4;
  u_xlat39 = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : f32 = u_xlat39;
  u_xlat39 = sqrt(x_129);
  let x_131 : f32 = u_xlat38;
  let x_133 : f32 = u_xlat39;
  u_xlat39 = (-(x_131) + x_133);
  let x_137 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_138 : f32 = u_xlat39;
  let x_140 : f32 = u_xlat38;
  u_xlat38 = ((x_137 * x_138) + x_140);
  let x_142 : f32 = u_xlat38;
  let x_145 : f32 = x_18.x_LightShadowData.z;
  let x_148 : f32 = x_18.x_LightShadowData.w;
  u_xlat38 = ((x_142 * x_145) + x_148);
  let x_150 : f32 = u_xlat38;
  u_xlat38 = clamp(x_150, 0.0f, 1.0f);
  let x_157 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb39 = (x_157 == 1.0f);
  let x_159 : bool = u_xlatb39;
  if (x_159) {
    let x_163 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb39 = (x_163 == 1.0f);
    let x_165 : vec3<f32> = vs_TEXCOORD1;
    let x_169 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_171 : vec3<f32> = (vec3<f32>(x_165.y, x_165.y, x_165.y) * vec3<f32>(x_169.x, x_169.y, x_169.z));
    let x_172 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_175 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_177 : vec3<f32> = vs_TEXCOORD1;
    let x_180 : vec4<f32> = u_xlat4;
    let x_182 : vec3<f32> = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.x, x_177.x, x_177.x)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
    let x_183 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
    let x_186 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_188 : vec3<f32> = vs_TEXCOORD1;
    let x_191 : vec4<f32> = u_xlat4;
    let x_193 : vec3<f32> = ((vec3<f32>(x_186.x, x_186.y, x_186.z) * vec3<f32>(x_188.z, x_188.z, x_188.z)) + vec3<f32>(x_191.x, x_191.y, x_191.z));
    let x_194 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_196 : vec4<f32> = u_xlat4;
    let x_200 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_202 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) + vec3<f32>(x_200.x, x_200.y, x_200.z));
    let x_203 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_205 : bool = u_xlatb39;
    if (x_205) {
      let x_210 : vec4<f32> = u_xlat4;
      x_207 = vec3<f32>(x_210.x, x_210.y, x_210.z);
    } else {
      let x_213 : vec3<f32> = vs_TEXCOORD1;
      x_207 = x_213;
    }
    let x_214 : vec3<f32> = x_207;
    let x_215 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
    let x_217 : vec4<f32> = u_xlat4;
    let x_221 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_223 : vec3<f32> = (vec3<f32>(x_217.x, x_217.y, x_217.z) + -(x_221));
    let x_224 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
    let x_226 : vec4<f32> = u_xlat4;
    let x_230 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_231 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) * x_230);
    let x_232 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_232.x, x_231.x, x_231.y, x_231.z);
    let x_235 : f32 = u_xlat4.y;
    u_xlat39 = ((x_235 * 0.25f) + 0.75f);
    let x_242 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat16 = ((x_242 * 0.5f) + 0.75f);
    let x_245 : f32 = u_xlat39;
    let x_246 : f32 = u_xlat16;
    u_xlat4.x = max(x_245, x_246);
    let x_259 : vec4<f32> = u_xlat4;
    let x_261 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_259.x, x_259.z, x_259.w));
    u_xlat4 = x_261;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_267 : vec4<f32> = u_xlat4;
  let x_269 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat39 = dot(x_267, x_269);
  let x_271 : f32 = u_xlat39;
  u_xlat39 = clamp(x_271, 0.0f, 1.0f);
  let x_276 : vec4<f32> = vs_TEXCOORD4;
  let x_278 : vec4<f32> = vs_TEXCOORD4;
  let x_280 : vec2<f32> = (vec2<f32>(x_276.x, x_276.y) / vec2<f32>(x_278.w, x_278.w));
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_280.y, x_281.z, x_281.w);
  let x_291 : vec4<f32> = u_xlat4;
  let x_293 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_291.x, x_291.y));
  u_xlat4.x = x_293.x;
  let x_296 : f32 = u_xlat39;
  let x_298 : f32 = u_xlat4.x;
  u_xlat39 = (x_296 + -(x_298));
  let x_301 : f32 = u_xlat38;
  let x_302 : f32 = u_xlat39;
  let x_305 : f32 = u_xlat4.x;
  u_xlat38 = ((x_301 * x_302) + x_305);
  let x_309 : f32 = x_18.x_Glossiness;
  u_xlat39 = (-(x_309) + 1.0f);
  let x_312 : vec4<f32> = u_xlat1;
  let x_315 : vec3<f32> = vs_TEXCOORD0;
  u_xlat4.x = dot(-(vec3<f32>(x_312.x, x_312.y, x_312.z)), x_315);
  let x_319 : f32 = u_xlat4.x;
  let x_321 : f32 = u_xlat4.x;
  u_xlat4.x = (x_319 + x_321);
  let x_324 : vec3<f32> = vs_TEXCOORD0;
  let x_325 : vec4<f32> = u_xlat4;
  let x_329 : vec4<f32> = u_xlat1;
  let x_332 : vec3<f32> = ((x_324 * -(vec3<f32>(x_325.x, x_325.x, x_325.x))) + -(vec3<f32>(x_329.x, x_329.y, x_329.z)));
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_336 : f32 = u_xlat38;
  let x_340 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_336, x_336, x_336) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_346 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb38 = (0.0f < x_346);
  let x_348 : bool = u_xlatb38;
  if (x_348) {
    let x_351 : vec4<f32> = u_xlat4;
    let x_353 : vec4<f32> = u_xlat4;
    u_xlat38 = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
    let x_356 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_356);
    let x_359 : f32 = u_xlat38;
    let x_361 : vec4<f32> = u_xlat4;
    let x_363 : vec3<f32> = (vec3<f32>(x_359, x_359, x_359) * vec3<f32>(x_361.x, x_361.y, x_361.z));
    let x_364 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
    let x_367 : vec3<f32> = vs_TEXCOORD1;
    let x_371 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    u_xlat7 = (-(x_367) + vec3<f32>(x_371.x, x_371.y, x_371.z));
    let x_374 : vec3<f32> = u_xlat7;
    let x_375 : vec4<f32> = u_xlat6;
    u_xlat7 = (x_374 / vec3<f32>(x_375.x, x_375.y, x_375.z));
    let x_379 : vec3<f32> = vs_TEXCOORD1;
    let x_383 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_385 : vec3<f32> = (-(x_379) + vec3<f32>(x_383.x, x_383.y, x_383.z));
    let x_386 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
    let x_388 : vec4<f32> = u_xlat8;
    let x_390 : vec4<f32> = u_xlat6;
    let x_392 : vec3<f32> = (vec3<f32>(x_388.x, x_388.y, x_388.z) / vec3<f32>(x_390.x, x_390.y, x_390.z));
    let x_393 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
    let x_399 : vec4<f32> = u_xlat6;
    let x_402 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_399.x, x_399.y, x_399.z, x_399.x));
    u_xlatb9 = vec3<bool>(x_402.x, x_402.y, x_402.z);
    let x_405 : vec3<f32> = u_xlat7;
    hlslcc_movcTemp = x_405;
    let x_407 : bool = u_xlatb9.x;
    if (x_407) {
      let x_413 : f32 = u_xlat7.x;
      x_409 = x_413;
    } else {
      let x_416 : f32 = u_xlat8.x;
      x_409 = x_416;
    }
    let x_417 : f32 = x_409;
    hlslcc_movcTemp.x = x_417;
    let x_420 : bool = u_xlatb9.y;
    if (x_420) {
      let x_425 : f32 = u_xlat7.y;
      x_421 = x_425;
    } else {
      let x_428 : f32 = u_xlat8.y;
      x_421 = x_428;
    }
    let x_429 : f32 = x_421;
    hlslcc_movcTemp.y = x_429;
    let x_432 : bool = u_xlatb9.z;
    if (x_432) {
      let x_437 : f32 = u_xlat7.z;
      x_433 = x_437;
    } else {
      let x_440 : f32 = u_xlat8.z;
      x_433 = x_440;
    }
    let x_441 : f32 = x_433;
    hlslcc_movcTemp.z = x_441;
    let x_443 : vec3<f32> = hlslcc_movcTemp;
    u_xlat7 = x_443;
    let x_445 : f32 = u_xlat7.y;
    let x_447 : f32 = u_xlat7.x;
    u_xlat38 = min(x_445, x_447);
    let x_450 : f32 = u_xlat7.z;
    let x_451 : f32 = u_xlat38;
    u_xlat38 = min(x_450, x_451);
    let x_453 : vec3<f32> = vs_TEXCOORD1;
    let x_455 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    u_xlat7 = (x_453 + -(vec3<f32>(x_455.x, x_455.y, x_455.z)));
    let x_459 : vec4<f32> = u_xlat6;
    let x_461 : f32 = u_xlat38;
    let x_464 : vec3<f32> = u_xlat7;
    let x_465 : vec3<f32> = ((vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(x_461, x_461, x_461)) + x_464);
    let x_466 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  } else {
    let x_469 : vec4<f32> = u_xlat4;
    let x_470 : vec3<f32> = vec3<f32>(x_469.x, x_469.y, x_469.z);
    let x_471 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  }
  let x_473 : f32 = u_xlat39;
  u_xlat38 = ((-(x_473) * 0.699999988f) + 1.700000048f);
  let x_479 : f32 = u_xlat38;
  let x_480 : f32 = u_xlat39;
  u_xlat38 = (x_479 * x_480);
  let x_482 : f32 = u_xlat38;
  u_xlat38 = (x_482 * 6.0f);
  let x_493 : vec4<f32> = u_xlat6;
  let x_495 : f32 = u_xlat38;
  let x_496 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_493.x, x_493.y, x_493.z), x_495);
  u_xlat6 = x_496;
  let x_499 : f32 = u_xlat6.w;
  u_xlat40 = (x_499 + -1.0f);
  let x_504 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_505 : f32 = u_xlat40;
  u_xlat40 = ((x_504 * x_505) + 1.0f);
  let x_508 : f32 = u_xlat40;
  u_xlat40 = log2(x_508);
  let x_510 : f32 = u_xlat40;
  let x_512 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_510 * x_512);
  let x_514 : f32 = u_xlat40;
  u_xlat40 = exp2(x_514);
  let x_516 : f32 = u_xlat40;
  let x_518 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_516 * x_518);
  let x_520 : vec4<f32> = u_xlat6;
  let x_522 : f32 = u_xlat40;
  u_xlat7 = (vec3<f32>(x_520.x, x_520.y, x_520.z) * vec3<f32>(x_522, x_522, x_522));
  let x_527 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb41 = (x_527 < 0.999989986f);
  let x_530 : bool = u_xlatb41;
  if (x_530) {
    let x_535 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb41 = (0.0f < x_535);
    let x_537 : bool = u_xlatb41;
    if (x_537) {
      let x_541 : vec4<f32> = u_xlat4;
      let x_543 : vec4<f32> = u_xlat4;
      u_xlat41 = dot(vec3<f32>(x_541.x, x_541.y, x_541.z), vec3<f32>(x_543.x, x_543.y, x_543.z));
      let x_546 : f32 = u_xlat41;
      u_xlat41 = inverseSqrt(x_546);
      let x_548 : vec4<f32> = u_xlat4;
      let x_550 : f32 = u_xlat41;
      let x_552 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) * vec3<f32>(x_550, x_550, x_550));
      let x_553 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
      let x_556 : vec3<f32> = vs_TEXCOORD1;
      let x_560 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat9 = (-(x_556) + vec3<f32>(x_560.x, x_560.y, x_560.z));
      let x_563 : vec3<f32> = u_xlat9;
      let x_564 : vec4<f32> = u_xlat8;
      u_xlat9 = (x_563 / vec3<f32>(x_564.x, x_564.y, x_564.z));
      let x_568 : vec3<f32> = vs_TEXCOORD1;
      let x_572 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat10 = (-(x_568) + vec3<f32>(x_572.x, x_572.y, x_572.z));
      let x_575 : vec3<f32> = u_xlat10;
      let x_576 : vec4<f32> = u_xlat8;
      u_xlat10 = (x_575 / vec3<f32>(x_576.x, x_576.y, x_576.z));
      let x_580 : vec4<f32> = u_xlat8;
      let x_582 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_580.x, x_580.y, x_580.z, x_580.x));
      u_xlatb11 = vec3<bool>(x_582.x, x_582.y, x_582.z);
      let x_585 : vec3<f32> = u_xlat9;
      hlslcc_movcTemp_1 = x_585;
      let x_587 : bool = u_xlatb11.x;
      if (x_587) {
        let x_592 : f32 = u_xlat9.x;
        x_588 = x_592;
      } else {
        let x_595 : f32 = u_xlat10.x;
        x_588 = x_595;
      }
      let x_596 : f32 = x_588;
      hlslcc_movcTemp_1.x = x_596;
      let x_599 : bool = u_xlatb11.y;
      if (x_599) {
        let x_604 : f32 = u_xlat9.y;
        x_600 = x_604;
      } else {
        let x_607 : f32 = u_xlat10.y;
        x_600 = x_607;
      }
      let x_608 : f32 = x_600;
      hlslcc_movcTemp_1.y = x_608;
      let x_611 : bool = u_xlatb11.z;
      if (x_611) {
        let x_616 : f32 = u_xlat9.z;
        x_612 = x_616;
      } else {
        let x_619 : f32 = u_xlat10.z;
        x_612 = x_619;
      }
      let x_620 : f32 = x_612;
      hlslcc_movcTemp_1.z = x_620;
      let x_622 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat9 = x_622;
      let x_624 : f32 = u_xlat9.y;
      let x_626 : f32 = u_xlat9.x;
      u_xlat41 = min(x_624, x_626);
      let x_629 : f32 = u_xlat9.z;
      let x_630 : f32 = u_xlat41;
      u_xlat41 = min(x_629, x_630);
      let x_632 : vec3<f32> = vs_TEXCOORD1;
      let x_634 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat9 = (x_632 + -(vec3<f32>(x_634.x, x_634.y, x_634.z)));
      let x_638 : vec4<f32> = u_xlat8;
      let x_640 : f32 = u_xlat41;
      let x_643 : vec3<f32> = u_xlat9;
      let x_644 : vec3<f32> = ((vec3<f32>(x_638.x, x_638.y, x_638.z) * vec3<f32>(x_640, x_640, x_640)) + x_643);
      let x_645 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
    }
    let x_651 : vec4<f32> = u_xlat4;
    let x_653 : f32 = u_xlat38;
    let x_654 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_651.x, x_651.y, x_651.z), x_653);
    u_xlat8 = x_654;
    let x_656 : f32 = u_xlat8.w;
    u_xlat38 = (x_656 + -1.0f);
    let x_660 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_661 : f32 = u_xlat38;
    u_xlat38 = ((x_660 * x_661) + 1.0f);
    let x_664 : f32 = u_xlat38;
    u_xlat38 = log2(x_664);
    let x_666 : f32 = u_xlat38;
    let x_668 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat38 = (x_666 * x_668);
    let x_670 : f32 = u_xlat38;
    u_xlat38 = exp2(x_670);
    let x_672 : f32 = u_xlat38;
    let x_674 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat38 = (x_672 * x_674);
    let x_676 : vec4<f32> = u_xlat8;
    let x_678 : f32 = u_xlat38;
    let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678, x_678, x_678));
    let x_681 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
    let x_683 : f32 = u_xlat40;
    let x_685 : vec4<f32> = u_xlat6;
    let x_688 : vec4<f32> = u_xlat4;
    let x_691 : vec3<f32> = ((vec3<f32>(x_683, x_683, x_683) * vec3<f32>(x_685.x, x_685.y, x_685.z)) + -(vec3<f32>(x_688.x, x_688.y, x_688.z)));
    let x_692 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
    let x_695 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_697 : vec4<f32> = u_xlat6;
    let x_700 : vec4<f32> = u_xlat4;
    u_xlat7 = ((vec3<f32>(x_695.w, x_695.w, x_695.w) * vec3<f32>(x_697.x, x_697.y, x_697.z)) + vec3<f32>(x_700.x, x_700.y, x_700.z));
  }
  let x_703 : vec3<f32> = vs_TEXCOORD0;
  let x_704 : vec3<f32> = vs_TEXCOORD0;
  u_xlat38 = dot(x_703, x_704);
  let x_706 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_706);
  let x_708 : f32 = u_xlat38;
  let x_710 : vec3<f32> = vs_TEXCOORD0;
  let x_711 : vec3<f32> = (vec3<f32>(x_708, x_708, x_708) * x_710);
  let x_712 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec3<f32> = u_xlat2;
  let x_715 : f32 = u_xlat37;
  u_xlat2 = ((x_714 * vec3<f32>(x_715, x_715, x_715)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_723 : f32 = x_18.x_Metallic;
  let x_725 : f32 = x_18.x_Metallic;
  let x_727 : f32 = x_18.x_Metallic;
  let x_728 : vec3<f32> = vec3<f32>(x_723, x_725, x_727);
  let x_733 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_728.x, x_728.y, x_728.z) * x_733) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_739 : f32 = x_18.x_Metallic;
  u_xlat37 = ((-(x_739) * 0.959999979f) + 0.959999979f);
  let x_744 : f32 = u_xlat37;
  let x_746 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_744, x_744, x_744) * x_746);
  let x_748 : vec4<f32> = u_xlat0;
  let x_750 : f32 = u_xlat36;
  let x_754 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_756 : vec3<f32> = ((vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(x_750, x_750, x_750)) + vec3<f32>(x_754.x, x_754.y, x_754.z));
  let x_757 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_759 : vec4<f32> = u_xlat0;
  let x_761 : vec4<f32> = u_xlat0;
  u_xlat36 = dot(vec3<f32>(x_759.x, x_759.y, x_759.z), vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : f32 = u_xlat36;
  u_xlat36 = max(x_764, 0.001f);
  let x_767 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_767);
  let x_769 : f32 = u_xlat36;
  let x_771 : vec4<f32> = u_xlat0;
  let x_773 : vec3<f32> = (vec3<f32>(x_769, x_769, x_769) * vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat4;
  let x_778 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_776.x, x_776.y, x_776.z), vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat4;
  let x_784 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_781.x, x_781.y, x_781.z), vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_789 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_789, 0.0f, 1.0f);
  let x_793 : vec4<f32> = u_xlat4;
  let x_795 : vec4<f32> = u_xlat0;
  u_xlat13 = dot(vec3<f32>(x_793.x, x_793.y, x_793.z), vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_798 : f32 = u_xlat13;
  u_xlat13 = clamp(x_798, 0.0f, 1.0f);
  let x_801 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_803 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_801.x, x_801.y, x_801.z), vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_808 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_808, 0.0f, 1.0f);
  let x_813 : f32 = u_xlat0.x;
  let x_815 : f32 = u_xlat0.x;
  u_xlat12.x = (x_813 * x_815);
  let x_818 : vec3<f32> = u_xlat12;
  let x_820 : f32 = u_xlat39;
  u_xlat12.x = dot(vec2<f32>(x_818.x, x_818.x), vec2<f32>(x_820, x_820));
  let x_825 : f32 = u_xlat12.x;
  u_xlat12.x = (x_825 + -0.5f);
  let x_831 : f32 = u_xlat1.x;
  u_xlat24 = (-(x_831) + 1.0f);
  let x_835 : f32 = u_xlat24;
  let x_836 : f32 = u_xlat24;
  u_xlat25 = (x_835 * x_836);
  let x_838 : f32 = u_xlat25;
  let x_839 : f32 = u_xlat25;
  u_xlat25 = (x_838 * x_839);
  let x_841 : f32 = u_xlat24;
  let x_842 : f32 = u_xlat25;
  u_xlat24 = (x_841 * x_842);
  let x_845 : f32 = u_xlat12.x;
  let x_846 : f32 = u_xlat24;
  u_xlat24 = ((x_845 * x_846) + 1.0f);
  let x_849 : f32 = u_xlat36;
  u_xlat25 = (-(abs(x_849)) + 1.0f);
  let x_853 : f32 = u_xlat25;
  let x_854 : f32 = u_xlat25;
  u_xlat38 = (x_853 * x_854);
  let x_856 : f32 = u_xlat38;
  let x_857 : f32 = u_xlat38;
  u_xlat38 = (x_856 * x_857);
  let x_859 : f32 = u_xlat25;
  let x_860 : f32 = u_xlat38;
  u_xlat25 = (x_859 * x_860);
  let x_863 : f32 = u_xlat12.x;
  let x_864 : f32 = u_xlat25;
  u_xlat12.x = ((x_863 * x_864) + 1.0f);
  let x_869 : f32 = u_xlat12.x;
  let x_870 : f32 = u_xlat24;
  u_xlat12.x = (x_869 * x_870);
  let x_873 : f32 = u_xlat39;
  let x_874 : f32 = u_xlat39;
  u_xlat24 = (x_873 * x_874);
  let x_876 : f32 = u_xlat24;
  u_xlat24 = max(x_876, 0.002f);
  let x_879 : f32 = u_xlat24;
  u_xlat38 = (-(x_879) + 1.0f);
  let x_882 : f32 = u_xlat36;
  let x_884 : f32 = u_xlat38;
  let x_886 : f32 = u_xlat24;
  u_xlat39 = ((abs(x_882) * x_884) + x_886);
  let x_889 : f32 = u_xlat1.x;
  let x_890 : f32 = u_xlat38;
  let x_892 : f32 = u_xlat24;
  u_xlat38 = ((x_889 * x_890) + x_892);
  let x_894 : f32 = u_xlat36;
  let x_896 : f32 = u_xlat38;
  u_xlat36 = (abs(x_894) * x_896);
  let x_899 : f32 = u_xlat1.x;
  let x_900 : f32 = u_xlat39;
  let x_902 : f32 = u_xlat36;
  u_xlat36 = ((x_899 * x_900) + x_902);
  let x_904 : f32 = u_xlat36;
  u_xlat36 = (x_904 + 0.00001f);
  let x_907 : f32 = u_xlat36;
  u_xlat36 = (0.5f / x_907);
  let x_909 : f32 = u_xlat24;
  let x_910 : f32 = u_xlat24;
  u_xlat38 = (x_909 * x_910);
  let x_912 : f32 = u_xlat13;
  let x_913 : f32 = u_xlat38;
  let x_915 : f32 = u_xlat13;
  u_xlat39 = ((x_912 * x_913) + -(x_915));
  let x_918 : f32 = u_xlat39;
  let x_919 : f32 = u_xlat13;
  u_xlat13 = ((x_918 * x_919) + 1.0f);
  let x_922 : f32 = u_xlat38;
  u_xlat38 = (x_922 * 0.318309873f);
  let x_925 : f32 = u_xlat13;
  let x_926 : f32 = u_xlat13;
  u_xlat13 = ((x_925 * x_926) + 0.0000001f);
  let x_930 : f32 = u_xlat38;
  let x_931 : f32 = u_xlat13;
  u_xlat13 = (x_930 / x_931);
  let x_933 : f32 = u_xlat36;
  let x_934 : f32 = u_xlat13;
  u_xlat12.z = (x_933 * x_934);
  let x_937 : vec4<f32> = u_xlat1;
  let x_939 : vec3<f32> = u_xlat12;
  let x_941 : vec2<f32> = (vec2<f32>(x_937.x, x_937.x) * vec2<f32>(x_939.x, x_939.z));
  let x_942 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_941.x, x_942.y, x_941.y);
  let x_945 : f32 = u_xlat12.z;
  u_xlat36 = (x_945 * 3.141592741f);
  let x_948 : f32 = u_xlat36;
  u_xlat36 = max(x_948, 0.0f);
  let x_950 : f32 = u_xlat24;
  let x_951 : f32 = u_xlat24;
  u_xlat24 = ((x_950 * x_951) + 1.0f);
  let x_954 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_954);
  let x_956 : vec3<f32> = u_xlat2;
  let x_957 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_956, x_957);
  let x_962 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_962 == 0.0f));
  let x_964 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_964);
  let x_967 : f32 = u_xlat36;
  let x_969 : f32 = u_xlat1.x;
  u_xlat36 = (x_967 * x_969);
  let x_971 : f32 = u_xlat37;
  let x_974 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_971) + x_974);
  let x_978 : f32 = u_xlat1.x;
  u_xlat1.x = (x_978 + 1.0f);
  let x_982 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_982, 0.0f, 1.0f);
  let x_985 : vec3<f32> = u_xlat12;
  let x_987 : vec3<f32> = u_xlat5;
  let x_988 : vec3<f32> = (vec3<f32>(x_985.x, x_985.x, x_985.x) * x_987);
  let x_989 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec3<f32> = u_xlat5;
  let x_992 : f32 = u_xlat36;
  u_xlat5 = (x_991 * vec3<f32>(x_992, x_992, x_992));
  let x_996 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_996) + 1.0f);
  let x_1001 : f32 = u_xlat0.x;
  let x_1003 : f32 = u_xlat0.x;
  u_xlat12.x = (x_1001 * x_1003);
  let x_1007 : f32 = u_xlat12.x;
  let x_1009 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1007 * x_1009);
  let x_1013 : f32 = u_xlat0.x;
  let x_1015 : f32 = u_xlat12.x;
  u_xlat0.x = (x_1013 * x_1015);
  let x_1018 : vec3<f32> = u_xlat2;
  let x_1021 : vec3<f32> = (-(x_1018) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1022 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : vec4<f32> = u_xlat6;
  let x_1026 : vec4<f32> = u_xlat0;
  let x_1029 : vec3<f32> = u_xlat2;
  let x_1030 : vec3<f32> = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.x, x_1026.x, x_1026.x)) + x_1029);
  let x_1031 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1030.z);
  let x_1033 : vec4<f32> = u_xlat0;
  let x_1035 : vec3<f32> = u_xlat5;
  let x_1036 : vec3<f32> = (vec3<f32>(x_1033.x, x_1033.y, x_1033.w) * x_1035);
  let x_1037 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1036.z);
  let x_1039 : vec3<f32> = u_xlat3;
  let x_1040 : vec4<f32> = u_xlat4;
  let x_1043 : vec4<f32> = u_xlat0;
  let x_1045 : vec3<f32> = ((x_1039 * vec3<f32>(x_1040.x, x_1040.y, x_1040.z)) + vec3<f32>(x_1043.x, x_1043.y, x_1043.w));
  let x_1046 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1045.z);
  let x_1048 : vec3<f32> = u_xlat7;
  let x_1049 : f32 = u_xlat24;
  u_xlat3 = (x_1048 * vec3<f32>(x_1049, x_1049, x_1049));
  let x_1052 : vec3<f32> = u_xlat2;
  let x_1054 : vec4<f32> = u_xlat1;
  let x_1056 : vec3<f32> = (-(x_1052) + vec3<f32>(x_1054.x, x_1054.x, x_1054.x));
  let x_1057 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1056.z);
  let x_1059 : f32 = u_xlat25;
  let x_1061 : vec4<f32> = u_xlat1;
  let x_1064 : vec3<f32> = u_xlat2;
  let x_1065 : vec3<f32> = ((vec3<f32>(x_1059, x_1059, x_1059) * vec3<f32>(x_1061.x, x_1061.y, x_1061.w)) + x_1064);
  let x_1066 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1070 : vec3<f32> = u_xlat3;
  let x_1071 : vec4<f32> = u_xlat1;
  let x_1074 : vec4<f32> = u_xlat0;
  let x_1076 : vec3<f32> = ((x_1070 * vec3<f32>(x_1071.x, x_1071.y, x_1071.z)) + vec3<f32>(x_1074.x, x_1074.y, x_1074.w));
  let x_1077 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

