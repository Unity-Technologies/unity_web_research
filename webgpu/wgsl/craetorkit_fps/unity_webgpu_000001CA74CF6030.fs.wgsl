struct PGlobals {
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
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD4 : vec3<f32>;

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
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var u_xlat6 : vec4<f32>;
  var x_209 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var x_393 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_576 : f32;
  var x_588 : f32;
  var x_600 : f32;
  var u_xlatb50 : bool;
  var u_xlat50 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_754 : f32;
  var x_766 : f32;
  var x_778 : f32;
  var u_xlat17 : f32;
  var u_xlat16 : f32;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD0.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD1.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD2.w;
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
  let x_72 : vec2<f32> = vs_TEXCOORD3;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_72);
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_78 : vec4<f32> = x_37.x_Color;
  u_xlat3 = (x_74 * x_78);
  let x_81 : vec4<f32> = u_xlat3;
  let x_83 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (x_81 * x_83);
  let x_91 : vec2<f32> = vs_TEXCOORD3;
  let x_92 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_91);
  let x_93 : vec3<f32> = vec3<f32>(x_92.x, x_92.y, x_92.w);
  let x_94 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : f32 = u_xlat5.z;
  let x_99 : f32 = u_xlat5.x;
  u_xlat5.x = (x_97 * x_99);
  let x_102 : vec4<f32> = u_xlat5;
  let x_109 : vec2<f32> = ((vec2<f32>(x_102.x, x_102.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_110 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat5;
  let x_117 : f32 = x_37.x_BumpScale;
  let x_119 : vec2<f32> = (vec2<f32>(x_112.x, x_112.y) * vec2<f32>(x_117, x_117));
  let x_120 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_123 : vec4<f32> = u_xlat5;
  let x_125 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec2<f32>(x_123.x, x_123.y), vec2<f32>(x_125.x, x_125.y));
  let x_128 : f32 = u_xlat46;
  u_xlat46 = min(x_128, 1.0f);
  let x_131 : f32 = u_xlat46;
  u_xlat46 = (-(x_131) + 1.0f);
  let x_134 : f32 = u_xlat46;
  u_xlat5.z = sqrt(x_134);
  let x_137 : vec4<f32> = u_xlat5;
  let x_139 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_142);
  let x_144 : f32 = u_xlat46;
  let x_146 : vec4<f32> = u_xlat5;
  let x_148 : vec3<f32> = (vec3<f32>(x_144, x_144, x_144) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_156 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb46 = (x_156 == 1.0f);
  let x_158 : bool = u_xlatb46;
  if (x_158) {
    let x_163 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb47 = (x_163 == 1.0f);
    let x_166 : vec4<f32> = vs_TEXCOORD1;
    let x_171 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_173 : vec3<f32> = (vec3<f32>(x_166.w, x_166.w, x_166.w) * vec3<f32>(x_171.x, x_171.y, x_171.z));
    let x_174 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
    let x_177 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_179 : vec4<f32> = vs_TEXCOORD0;
    let x_182 : vec4<f32> = u_xlat6;
    let x_184 : vec3<f32> = ((vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_179.w, x_179.w, x_179.w)) + vec3<f32>(x_182.x, x_182.y, x_182.z));
    let x_185 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_189 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_191 : vec4<f32> = vs_TEXCOORD2;
    let x_194 : vec4<f32> = u_xlat6;
    let x_196 : vec3<f32> = ((vec3<f32>(x_189.x, x_189.y, x_189.z) * vec3<f32>(x_191.w, x_191.w, x_191.w)) + vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_197 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : vec4<f32> = u_xlat6;
    let x_203 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_205 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) + vec3<f32>(x_203.x, x_203.y, x_203.z));
    let x_206 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : bool = u_xlatb47;
    if (x_208) {
      let x_212 : vec4<f32> = u_xlat6;
      x_209 = vec3<f32>(x_212.x, x_212.y, x_212.z);
    } else {
      let x_215 : vec3<f32> = u_xlat0;
      x_209 = x_215;
    }
    let x_216 : vec3<f32> = x_209;
    let x_217 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
    let x_219 : vec4<f32> = u_xlat6;
    let x_223 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_225 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) + -(x_223));
    let x_226 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : vec4<f32> = u_xlat6;
    let x_232 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_233 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) * x_232);
    let x_234 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_234.x, x_233.x, x_233.y, x_233.z);
    let x_238 : f32 = u_xlat6.y;
    u_xlat47 = ((x_238 * 0.25f) + 0.75f);
    let x_245 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat48 = ((x_245 * 0.5f) + 0.75f);
    let x_249 : f32 = u_xlat47;
    let x_250 : f32 = u_xlat48;
    u_xlat6.x = max(x_249, x_250);
    let x_261 : vec4<f32> = u_xlat6;
    let x_263 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_261.x, x_261.z, x_261.w));
    u_xlat6 = x_263;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_269 : vec4<f32> = u_xlat6;
  let x_272 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat47 = dot(x_269, x_272);
  let x_274 : f32 = u_xlat47;
  u_xlat47 = clamp(x_274, 0.0f, 1.0f);
  let x_277 : vec4<f32> = vs_TEXCOORD0;
  let x_279 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_277.x, x_277.y, x_277.z), vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_283 : vec4<f32> = vs_TEXCOORD1;
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = vs_TEXCOORD2;
  let x_291 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_295 : vec4<f32> = u_xlat6;
  let x_297 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_295.x, x_295.y, x_295.z), vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_300);
  let x_302 : f32 = u_xlat48;
  let x_304 : vec4<f32> = u_xlat6;
  let x_306 : vec3<f32> = (vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_311 : f32 = x_37.x_Glossiness;
  u_xlat48 = (-(x_311) + 1.0f);
  let x_314 : vec4<f32> = u_xlat2;
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(-(vec3<f32>(x_314.x, x_314.y, x_314.z)), vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_322 : f32 = u_xlat6.x;
  let x_324 : f32 = u_xlat6.x;
  u_xlat6.x = (x_322 + x_324);
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec4<f32> = u_xlat6;
  let x_333 : vec4<f32> = u_xlat2;
  let x_336 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * -(vec3<f32>(x_329.x, x_329.x, x_329.x))) + -(vec3<f32>(x_333.x, x_333.y, x_333.z)));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_340 : f32 = u_xlat47;
  let x_344 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_340, x_340, x_340) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : bool = u_xlatb46;
  if (x_347) {
    let x_351 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb46 = (x_351 == 1.0f);
    let x_354 : vec4<f32> = vs_TEXCOORD1;
    let x_357 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_359 : vec3<f32> = (vec3<f32>(x_354.w, x_354.w, x_354.w) * vec3<f32>(x_357.x, x_357.y, x_357.z));
    let x_360 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
    let x_363 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_365 : vec4<f32> = vs_TEXCOORD0;
    let x_368 : vec4<f32> = u_xlat8;
    let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.w, x_365.w, x_365.w)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
    let x_371 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
    let x_374 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_376 : vec4<f32> = vs_TEXCOORD2;
    let x_379 : vec4<f32> = u_xlat8;
    let x_381 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_376.w, x_376.w, x_376.w)) + vec3<f32>(x_379.x, x_379.y, x_379.z));
    let x_382 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
    let x_384 : vec4<f32> = u_xlat8;
    let x_387 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_389 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) + vec3<f32>(x_387.x, x_387.y, x_387.z));
    let x_390 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
    let x_392 : bool = u_xlatb46;
    if (x_392) {
      let x_396 : vec4<f32> = u_xlat8;
      x_393 = vec3<f32>(x_396.x, x_396.y, x_396.z);
    } else {
      let x_399 : vec3<f32> = u_xlat0;
      x_393 = x_399;
    }
    let x_400 : vec3<f32> = x_393;
    let x_401 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
    let x_403 : vec4<f32> = u_xlat8;
    let x_406 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_408 : vec3<f32> = (vec3<f32>(x_403.x, x_403.y, x_403.z) + -(x_406));
    let x_409 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
    let x_411 : vec4<f32> = u_xlat8;
    let x_414 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_415 : vec3<f32> = (vec3<f32>(x_411.x, x_411.y, x_411.z) * x_414);
    let x_416 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_416.x, x_415.x, x_415.y, x_415.z);
    let x_419 : f32 = u_xlat8.y;
    u_xlat46 = (x_419 * 0.25f);
    let x_422 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat47 = (x_422 * 0.5f);
    let x_426 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat51 = ((-(x_426) * 0.5f) + 0.25f);
    let x_430 : f32 = u_xlat46;
    let x_431 : f32 = u_xlat47;
    u_xlat46 = max(x_430, x_431);
    let x_433 : f32 = u_xlat51;
    let x_434 : f32 = u_xlat46;
    u_xlat8.x = min(x_433, x_434);
    let x_441 : vec4<f32> = u_xlat8;
    let x_443 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_441.x, x_441.z, x_441.w));
    u_xlat9 = x_443;
    let x_445 : vec4<f32> = u_xlat8;
    let x_448 : vec3<f32> = (vec3<f32>(x_445.x, x_445.z, x_445.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_449 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_454 : vec4<f32> = u_xlat10;
    let x_456 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_454.x, x_454.y, x_454.z));
    u_xlat10 = x_456;
    let x_457 : vec4<f32> = u_xlat8;
    let x_460 : vec3<f32> = (vec3<f32>(x_457.x, x_457.z, x_457.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_461 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
    let x_466 : vec4<f32> = u_xlat8;
    let x_468 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_466.x, x_466.y, x_466.z));
    u_xlat8 = x_468;
    u_xlat5.w = 1.0f;
    let x_470 : vec4<f32> = u_xlat9;
    let x_471 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_470, x_471);
    let x_474 : vec4<f32> = u_xlat10;
    let x_475 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_474, x_475);
    let x_478 : vec4<f32> = u_xlat8;
    let x_479 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_478, x_479);
  } else {
    u_xlat5.w = 1.0f;
    let x_485 : vec4<f32> = x_37.unity_SHAr;
    let x_486 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_485, x_486);
    let x_490 : vec4<f32> = x_37.unity_SHAg;
    let x_491 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_490, x_491);
    let x_496 : vec4<f32> = x_37.unity_SHAb;
    let x_497 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_496, x_497);
  }
  let x_500 : vec4<f32> = u_xlat9;
  let x_504 : vec3<f32> = vs_TEXCOORD4;
  let x_505 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) + x_504);
  let x_506 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat8;
  let x_511 : vec3<f32> = max(vec3<f32>(x_508.x, x_508.y, x_508.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_512 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_516 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb46 = (0.0f < x_516);
  let x_518 : bool = u_xlatb46;
  if (x_518) {
    let x_521 : vec4<f32> = u_xlat6;
    let x_523 : vec4<f32> = u_xlat6;
    u_xlat46 = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), vec3<f32>(x_523.x, x_523.y, x_523.z));
    let x_526 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_526);
    let x_528 : f32 = u_xlat46;
    let x_530 : vec4<f32> = u_xlat6;
    let x_532 : vec3<f32> = (vec3<f32>(x_528, x_528, x_528) * vec3<f32>(x_530.x, x_530.y, x_530.z));
    let x_533 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
    let x_535 : vec3<f32> = u_xlat0;
    let x_539 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_541 : vec3<f32> = (-(x_535) + vec3<f32>(x_539.x, x_539.y, x_539.z));
    let x_542 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
    let x_544 : vec4<f32> = u_xlat10;
    let x_546 : vec4<f32> = u_xlat9;
    let x_548 : vec3<f32> = (vec3<f32>(x_544.x, x_544.y, x_544.z) / vec3<f32>(x_546.x, x_546.y, x_546.z));
    let x_549 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
    let x_552 : vec3<f32> = u_xlat0;
    let x_556 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_552) + vec3<f32>(x_556.x, x_556.y, x_556.z));
    let x_559 : vec3<f32> = u_xlat11;
    let x_560 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_559 / vec3<f32>(x_560.x, x_560.y, x_560.z));
    let x_567 : vec4<f32> = u_xlat9;
    let x_570 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_567.x, x_567.y, x_567.z, x_567.x));
    u_xlatb12 = vec3<bool>(x_570.x, x_570.y, x_570.z);
    let x_573 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_573;
    let x_575 : bool = u_xlatb12.x;
    if (x_575) {
      let x_580 : f32 = u_xlat10.x;
      x_576 = x_580;
    } else {
      let x_583 : f32 = u_xlat11.x;
      x_576 = x_583;
    }
    let x_584 : f32 = x_576;
    hlslcc_movcTemp.x = x_584;
    let x_587 : bool = u_xlatb12.y;
    if (x_587) {
      let x_592 : f32 = u_xlat10.y;
      x_588 = x_592;
    } else {
      let x_595 : f32 = u_xlat11.y;
      x_588 = x_595;
    }
    let x_596 : f32 = x_588;
    hlslcc_movcTemp.y = x_596;
    let x_599 : bool = u_xlatb12.z;
    if (x_599) {
      let x_604 : f32 = u_xlat10.z;
      x_600 = x_604;
    } else {
      let x_607 : f32 = u_xlat11.z;
      x_600 = x_607;
    }
    let x_608 : f32 = x_600;
    hlslcc_movcTemp.z = x_608;
    let x_610 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_610;
    let x_612 : f32 = u_xlat10.y;
    let x_614 : f32 = u_xlat10.x;
    u_xlat46 = min(x_612, x_614);
    let x_617 : f32 = u_xlat10.z;
    let x_618 : f32 = u_xlat46;
    u_xlat46 = min(x_617, x_618);
    let x_620 : vec3<f32> = u_xlat0;
    let x_622 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_625 : vec3<f32> = (x_620 + -(vec3<f32>(x_622.x, x_622.y, x_622.z)));
    let x_626 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
    let x_628 : vec4<f32> = u_xlat9;
    let x_630 : f32 = u_xlat46;
    let x_633 : vec4<f32> = u_xlat10;
    let x_635 : vec3<f32> = ((vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(x_630, x_630, x_630)) + vec3<f32>(x_633.x, x_633.y, x_633.z));
    let x_636 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  } else {
    let x_639 : vec4<f32> = u_xlat6;
    let x_640 : vec3<f32> = vec3<f32>(x_639.x, x_639.y, x_639.z);
    let x_641 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  }
  let x_643 : f32 = u_xlat48;
  u_xlat46 = ((-(x_643) * 0.699999988f) + 1.700000048f);
  let x_649 : f32 = u_xlat46;
  let x_650 : f32 = u_xlat48;
  u_xlat46 = (x_649 * x_650);
  let x_652 : f32 = u_xlat46;
  u_xlat46 = (x_652 * 6.0f);
  let x_663 : vec4<f32> = u_xlat9;
  let x_665 : f32 = u_xlat46;
  let x_666 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_663.x, x_663.y, x_663.z), x_665);
  u_xlat9 = x_666;
  let x_668 : f32 = u_xlat9.w;
  u_xlat47 = (x_668 + -1.0f);
  let x_672 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_673 : f32 = u_xlat47;
  u_xlat47 = ((x_672 * x_673) + 1.0f);
  let x_676 : f32 = u_xlat47;
  u_xlat47 = log2(x_676);
  let x_678 : f32 = u_xlat47;
  let x_680 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_678 * x_680);
  let x_682 : f32 = u_xlat47;
  u_xlat47 = exp2(x_682);
  let x_684 : f32 = u_xlat47;
  let x_686 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_684 * x_686);
  let x_688 : vec4<f32> = u_xlat9;
  let x_690 : f32 = u_xlat47;
  let x_692 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(x_690, x_690, x_690));
  let x_693 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_697 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb50 = (x_697 < 0.999989986f);
  let x_700 : bool = u_xlatb50;
  if (x_700) {
    let x_705 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb50 = (0.0f < x_705);
    let x_707 : bool = u_xlatb50;
    if (x_707) {
      let x_711 : vec4<f32> = u_xlat6;
      let x_713 : vec4<f32> = u_xlat6;
      u_xlat50 = dot(vec3<f32>(x_711.x, x_711.y, x_711.z), vec3<f32>(x_713.x, x_713.y, x_713.z));
      let x_716 : f32 = u_xlat50;
      u_xlat50 = inverseSqrt(x_716);
      let x_718 : f32 = u_xlat50;
      let x_720 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_718, x_718, x_718) * vec3<f32>(x_720.x, x_720.y, x_720.z));
      let x_724 : vec3<f32> = u_xlat0;
      let x_728 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_724) + vec3<f32>(x_728.x, x_728.y, x_728.z));
      let x_731 : vec3<f32> = u_xlat12;
      let x_732 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_731 / x_732);
      let x_735 : vec3<f32> = u_xlat0;
      let x_739 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_735) + vec3<f32>(x_739.x, x_739.y, x_739.z));
      let x_742 : vec3<f32> = u_xlat13;
      let x_743 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_742 / x_743);
      let x_746 : vec3<f32> = u_xlat11;
      let x_748 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_746.x, x_746.y, x_746.z, x_746.x));
      u_xlatb14 = vec3<bool>(x_748.x, x_748.y, x_748.z);
      let x_751 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_751;
      let x_753 : bool = u_xlatb14.x;
      if (x_753) {
        let x_758 : f32 = u_xlat12.x;
        x_754 = x_758;
      } else {
        let x_761 : f32 = u_xlat13.x;
        x_754 = x_761;
      }
      let x_762 : f32 = x_754;
      hlslcc_movcTemp_1.x = x_762;
      let x_765 : bool = u_xlatb14.y;
      if (x_765) {
        let x_770 : f32 = u_xlat12.y;
        x_766 = x_770;
      } else {
        let x_773 : f32 = u_xlat13.y;
        x_766 = x_773;
      }
      let x_774 : f32 = x_766;
      hlslcc_movcTemp_1.y = x_774;
      let x_777 : bool = u_xlatb14.z;
      if (x_777) {
        let x_782 : f32 = u_xlat12.z;
        x_778 = x_782;
      } else {
        let x_785 : f32 = u_xlat13.z;
        x_778 = x_785;
      }
      let x_786 : f32 = x_778;
      hlslcc_movcTemp_1.z = x_786;
      let x_788 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_788;
      let x_790 : f32 = u_xlat12.y;
      let x_792 : f32 = u_xlat12.x;
      u_xlat50 = min(x_790, x_792);
      let x_795 : f32 = u_xlat12.z;
      let x_796 : f32 = u_xlat50;
      u_xlat50 = min(x_795, x_796);
      let x_798 : vec3<f32> = u_xlat0;
      let x_800 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_798 + -(vec3<f32>(x_800.x, x_800.y, x_800.z)));
      let x_804 : vec3<f32> = u_xlat11;
      let x_805 : f32 = u_xlat50;
      let x_808 : vec3<f32> = u_xlat0;
      let x_809 : vec3<f32> = ((x_804 * vec3<f32>(x_805, x_805, x_805)) + x_808);
      let x_810 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
    }
    let x_816 : vec4<f32> = u_xlat6;
    let x_818 : f32 = u_xlat46;
    let x_819 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_816.x, x_816.y, x_816.z), x_818);
    u_xlat6 = x_819;
    let x_821 : f32 = u_xlat6.w;
    u_xlat0.x = (x_821 + -1.0f);
    let x_826 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_828 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_826 * x_828) + 1.0f);
    let x_833 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_833);
    let x_837 : f32 = u_xlat0.x;
    let x_839 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_837 * x_839);
    let x_843 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_843);
    let x_847 : f32 = u_xlat0.x;
    let x_849 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_847 * x_849);
    let x_852 : vec4<f32> = u_xlat6;
    let x_854 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_852.x, x_852.y, x_852.z) * vec3<f32>(x_854.x, x_854.x, x_854.x));
    let x_857 : f32 = u_xlat47;
    let x_859 : vec4<f32> = u_xlat9;
    let x_862 : vec3<f32> = u_xlat0;
    let x_864 : vec3<f32> = ((vec3<f32>(x_857, x_857, x_857) * vec3<f32>(x_859.x, x_859.y, x_859.z)) + -(x_862));
    let x_865 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
    let x_868 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_870 : vec4<f32> = u_xlat6;
    let x_873 : vec3<f32> = u_xlat0;
    let x_874 : vec3<f32> = ((vec3<f32>(x_868.w, x_868.w, x_868.w) * vec3<f32>(x_870.x, x_870.y, x_870.z)) + x_873);
    let x_875 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  }
  let x_877 : vec4<f32> = u_xlat3;
  let x_879 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_877.x, x_877.y, x_877.z) * vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_887 : f32 = x_37.x_Metallic;
  let x_889 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_887, x_887, x_887) * x_889) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_895 : f32 = x_37.x_Metallic;
  u_xlat46 = ((-(x_895) * 0.959999979f) + 0.959999979f);
  let x_900 : f32 = u_xlat46;
  let x_902 : vec4<f32> = u_xlat4;
  let x_904 : vec3<f32> = (vec3<f32>(x_900, x_900, x_900) * vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec3<f32> = u_xlat1;
  let x_908 : f32 = u_xlat45;
  let x_912 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_907 * vec3<f32>(x_908, x_908, x_908)) + vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : vec3<f32> = u_xlat1;
  let x_916 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_915, x_916);
  let x_918 : f32 = u_xlat45;
  u_xlat45 = max(x_918, 0.001f);
  let x_921 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_921);
  let x_923 : f32 = u_xlat45;
  let x_925 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_923, x_923, x_923) * x_925);
  let x_927 : vec4<f32> = u_xlat5;
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat5;
  let x_935 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_932.x, x_932.y, x_932.z), vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_940 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_940, 0.0f, 1.0f);
  let x_944 : vec4<f32> = u_xlat5;
  let x_946 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(vec3<f32>(x_944.x, x_944.y, x_944.z), x_946);
  let x_948 : f32 = u_xlat17;
  u_xlat17 = clamp(x_948, 0.0f, 1.0f);
  let x_951 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_953 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_951.x, x_951.y, x_951.z), x_953);
  let x_957 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_957, 0.0f, 1.0f);
  let x_962 : f32 = u_xlat1.x;
  let x_964 : f32 = u_xlat1.x;
  u_xlat16 = (x_962 * x_964);
  let x_966 : f32 = u_xlat16;
  let x_968 : f32 = u_xlat48;
  u_xlat16 = dot(vec2<f32>(x_966, x_966), vec2<f32>(x_968, x_968));
  let x_971 : f32 = u_xlat16;
  u_xlat16 = (x_971 + -0.5f);
  let x_976 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_976) + 1.0f);
  let x_980 : f32 = u_xlat31;
  let x_981 : f32 = u_xlat31;
  u_xlat32 = (x_980 * x_981);
  let x_983 : f32 = u_xlat32;
  let x_984 : f32 = u_xlat32;
  u_xlat32 = (x_983 * x_984);
  let x_986 : f32 = u_xlat31;
  let x_987 : f32 = u_xlat32;
  u_xlat31 = (x_986 * x_987);
  let x_989 : f32 = u_xlat16;
  let x_990 : f32 = u_xlat31;
  u_xlat31 = ((x_989 * x_990) + 1.0f);
  let x_993 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_993)) + 1.0f);
  let x_997 : f32 = u_xlat32;
  let x_998 : f32 = u_xlat32;
  u_xlat47 = (x_997 * x_998);
  let x_1000 : f32 = u_xlat47;
  let x_1001 : f32 = u_xlat47;
  u_xlat47 = (x_1000 * x_1001);
  let x_1003 : f32 = u_xlat32;
  let x_1004 : f32 = u_xlat47;
  u_xlat32 = (x_1003 * x_1004);
  let x_1006 : f32 = u_xlat16;
  let x_1007 : f32 = u_xlat32;
  u_xlat16 = ((x_1006 * x_1007) + 1.0f);
  let x_1010 : f32 = u_xlat16;
  let x_1011 : f32 = u_xlat31;
  u_xlat16 = (x_1010 * x_1011);
  let x_1014 : f32 = u_xlat2.x;
  let x_1015 : f32 = u_xlat16;
  u_xlat16 = (x_1014 * x_1015);
  let x_1017 : f32 = u_xlat48;
  let x_1018 : f32 = u_xlat48;
  u_xlat31 = (x_1017 * x_1018);
  let x_1020 : f32 = u_xlat31;
  u_xlat31 = max(x_1020, 0.002f);
  let x_1023 : f32 = u_xlat31;
  u_xlat47 = (-(x_1023) + 1.0f);
  let x_1026 : f32 = u_xlat45;
  let x_1028 : f32 = u_xlat47;
  let x_1030 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_1026) * x_1028) + x_1030);
  let x_1033 : f32 = u_xlat2.x;
  let x_1034 : f32 = u_xlat47;
  let x_1036 : f32 = u_xlat31;
  u_xlat47 = ((x_1033 * x_1034) + x_1036);
  let x_1038 : f32 = u_xlat45;
  let x_1040 : f32 = u_xlat47;
  u_xlat45 = (abs(x_1038) * x_1040);
  let x_1043 : f32 = u_xlat2.x;
  let x_1044 : f32 = u_xlat48;
  let x_1046 : f32 = u_xlat45;
  u_xlat45 = ((x_1043 * x_1044) + x_1046);
  let x_1048 : f32 = u_xlat45;
  u_xlat45 = (x_1048 + 0.00001f);
  let x_1051 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1051);
  let x_1053 : f32 = u_xlat31;
  let x_1054 : f32 = u_xlat31;
  u_xlat47 = (x_1053 * x_1054);
  let x_1056 : f32 = u_xlat17;
  let x_1057 : f32 = u_xlat47;
  let x_1059 : f32 = u_xlat17;
  u_xlat48 = ((x_1056 * x_1057) + -(x_1059));
  let x_1062 : f32 = u_xlat48;
  let x_1063 : f32 = u_xlat17;
  u_xlat17 = ((x_1062 * x_1063) + 1.0f);
  let x_1066 : f32 = u_xlat47;
  u_xlat47 = (x_1066 * 0.318309873f);
  let x_1069 : f32 = u_xlat17;
  let x_1070 : f32 = u_xlat17;
  u_xlat17 = ((x_1069 * x_1070) + 0.0000001f);
  let x_1074 : f32 = u_xlat47;
  let x_1075 : f32 = u_xlat17;
  u_xlat17 = (x_1074 / x_1075);
  let x_1077 : f32 = u_xlat45;
  let x_1078 : f32 = u_xlat17;
  u_xlat45 = (x_1077 * x_1078);
  let x_1081 : f32 = u_xlat2.x;
  let x_1082 : f32 = u_xlat45;
  u_xlat45 = (x_1081 * x_1082);
  let x_1084 : f32 = u_xlat45;
  u_xlat45 = (x_1084 * 3.141592741f);
  let x_1087 : f32 = u_xlat45;
  u_xlat45 = max(x_1087, 0.0f);
  let x_1089 : f32 = u_xlat31;
  let x_1090 : f32 = u_xlat31;
  u_xlat31 = ((x_1089 * x_1090) + 1.0f);
  let x_1093 : f32 = u_xlat31;
  u_xlat31 = (1.0f / x_1093);
  let x_1095 : vec3<f32> = u_xlat0;
  let x_1096 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1095, x_1096);
  let x_1101 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1101 == 0.0f));
  let x_1103 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1103);
  let x_1106 : f32 = u_xlat45;
  let x_1108 : f32 = u_xlat2.x;
  u_xlat45 = (x_1106 * x_1108);
  let x_1110 : f32 = u_xlat46;
  let x_1113 : f32 = x_37.x_Glossiness;
  u_xlat46 = (-(x_1110) + x_1113);
  let x_1115 : f32 = u_xlat46;
  u_xlat46 = (x_1115 + 1.0f);
  let x_1117 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1117, 0.0f, 1.0f);
  let x_1119 : vec3<f32> = u_xlat7;
  let x_1120 : f32 = u_xlat16;
  let x_1123 : vec4<f32> = u_xlat8;
  let x_1125 : vec3<f32> = ((x_1119 * vec3<f32>(x_1120, x_1120, x_1120)) + vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1125.z);
  let x_1128 : vec3<f32> = u_xlat7;
  let x_1129 : f32 = u_xlat45;
  let x_1131 : vec3<f32> = (x_1128 * vec3<f32>(x_1129, x_1129, x_1129));
  let x_1132 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1135 : f32 = u_xlat1.x;
  u_xlat45 = (-(x_1135) + 1.0f);
  let x_1138 : f32 = u_xlat45;
  let x_1139 : f32 = u_xlat45;
  u_xlat1.x = (x_1138 * x_1139);
  let x_1143 : f32 = u_xlat1.x;
  let x_1145 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1143 * x_1145);
  let x_1148 : f32 = u_xlat45;
  let x_1150 : f32 = u_xlat1.x;
  u_xlat45 = (x_1148 * x_1150);
  let x_1152 : vec3<f32> = u_xlat0;
  let x_1155 : vec3<f32> = (-(x_1152) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1156 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : vec4<f32> = u_xlat5;
  let x_1160 : f32 = u_xlat45;
  let x_1163 : vec3<f32> = u_xlat0;
  let x_1164 : vec3<f32> = ((vec3<f32>(x_1158.x, x_1158.y, x_1158.z) * vec3<f32>(x_1160, x_1160, x_1160)) + x_1163);
  let x_1165 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1167 : vec4<f32> = u_xlat4;
  let x_1169 : vec4<f32> = u_xlat5;
  let x_1171 : vec3<f32> = (vec3<f32>(x_1167.x, x_1167.y, x_1167.z) * vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
  let x_1172 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : vec4<f32> = u_xlat3;
  let x_1176 : vec4<f32> = u_xlat2;
  let x_1179 : vec4<f32> = u_xlat4;
  let x_1181 : vec3<f32> = ((vec3<f32>(x_1174.x, x_1174.y, x_1174.z) * vec3<f32>(x_1176.x, x_1176.y, x_1176.w)) + vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1181.z);
  let x_1184 : vec4<f32> = u_xlat10;
  let x_1186 : f32 = u_xlat31;
  u_xlat1 = (vec3<f32>(x_1184.x, x_1184.y, x_1184.z) * vec3<f32>(x_1186, x_1186, x_1186));
  let x_1189 : vec3<f32> = u_xlat0;
  let x_1191 : f32 = u_xlat46;
  let x_1193 : vec3<f32> = (-(x_1189) + vec3<f32>(x_1191, x_1191, x_1191));
  let x_1194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : f32 = u_xlat32;
  let x_1198 : vec4<f32> = u_xlat3;
  let x_1201 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1196, x_1196, x_1196) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z)) + x_1201);
  let x_1205 : vec3<f32> = u_xlat1;
  let x_1206 : vec3<f32> = u_xlat0;
  let x_1208 : vec4<f32> = u_xlat2;
  let x_1210 : vec3<f32> = ((x_1205 * x_1206) + vec3<f32>(x_1208.x, x_1208.y, x_1208.w));
  let x_1211 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1214 : f32 = u_xlat4.w;
  SV_Target0.w = x_1214;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

