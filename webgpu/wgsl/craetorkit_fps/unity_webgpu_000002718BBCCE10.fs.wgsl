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
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb19 : bool;
  var u_xlat4 : vec4<f32>;
  var x_241 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat18 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_81.x, x_81.y));
  u_xlat2 = vec3<f32>(x_83.x, x_83.y, x_83.w);
  let x_88 : f32 = u_xlat2.z;
  let x_91 : f32 = u_xlat2.x;
  u_xlat2.x = (x_88 * x_91);
  let x_94 : vec3<f32> = u_xlat2;
  let x_101 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_102 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_101.x, x_101.y, x_102.z);
  let x_105 : vec3<f32> = u_xlat2;
  let x_107 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(vec2<f32>(x_105.x, x_105.y), vec2<f32>(x_107.x, x_107.y));
  let x_110 : f32 = u_xlat19;
  u_xlat19 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat19;
  u_xlat19 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_116);
  let x_119 : vec3<f32> = u_xlat2;
  let x_122 : vec4<f32> = vs_TEXCOORD3;
  u_xlat8 = (vec3<f32>(x_119.y, x_119.y, x_119.y) * vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_126 : vec4<f32> = vs_TEXCOORD2;
  let x_128 : vec3<f32> = u_xlat2;
  let x_131 : vec3<f32> = u_xlat8;
  u_xlat2 = ((vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_128.x, x_128.x, x_128.x)) + x_131);
  let x_134 : vec4<f32> = vs_TEXCOORD4;
  let x_136 : f32 = u_xlat19;
  let x_139 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(x_136, x_136, x_136)) + x_139);
  let x_144 : vec3<f32> = vs_TEXCOORD5;
  let x_149 : vec4<f32> = x_33.unity_WorldToLight[1i];
  let x_151 : vec2<f32> = (vec2<f32>(x_144.y, x_144.y) * vec2<f32>(x_149.x, x_149.y));
  let x_152 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_151.x, x_151.y, x_152.z);
  let x_156 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_158 : vec3<f32> = vs_TEXCOORD5;
  let x_161 : vec3<f32> = u_xlat3;
  let x_163 : vec2<f32> = ((vec2<f32>(x_156.x, x_156.y) * vec2<f32>(x_158.x, x_158.x)) + vec2<f32>(x_161.x, x_161.y));
  let x_164 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_163.x, x_163.y, x_164.z);
  let x_168 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_170 : vec3<f32> = vs_TEXCOORD5;
  let x_173 : vec3<f32> = u_xlat3;
  let x_175 : vec2<f32> = ((vec2<f32>(x_168.x, x_168.y) * vec2<f32>(x_170.z, x_170.z)) + vec2<f32>(x_173.x, x_173.y));
  let x_176 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_175.x, x_175.y, x_176.z);
  let x_178 : vec3<f32> = u_xlat3;
  let x_182 : vec4<f32> = x_33.unity_WorldToLight[3i];
  let x_184 : vec2<f32> = (vec2<f32>(x_178.x, x_178.y) + vec2<f32>(x_182.x, x_182.y));
  let x_185 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_184.x, x_184.y, x_185.z);
  let x_191 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_191 == 1.0f);
  let x_193 : bool = u_xlatb19;
  if (x_193) {
    let x_198 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_198 == 1.0f);
    let x_202 : vec3<f32> = vs_TEXCOORD5;
    let x_205 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_207 : vec3<f32> = (vec3<f32>(x_202.y, x_202.y, x_202.y) * vec3<f32>(x_205.x, x_205.y, x_205.z));
    let x_208 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
    let x_211 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_213 : vec3<f32> = vs_TEXCOORD5;
    let x_216 : vec4<f32> = u_xlat4;
    let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.x, x_213.x, x_213.x)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_222 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_224 : vec3<f32> = vs_TEXCOORD5;
    let x_227 : vec4<f32> = u_xlat4;
    let x_229 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.z, x_224.z, x_224.z)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
    let x_230 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_232 : vec4<f32> = u_xlat4;
    let x_235 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_237 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) + vec3<f32>(x_235.x, x_235.y, x_235.z));
    let x_238 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_240 : bool = u_xlatb19;
    if (x_240) {
      let x_244 : vec4<f32> = u_xlat4;
      x_241 = vec3<f32>(x_244.x, x_244.y, x_244.z);
    } else {
      let x_247 : vec3<f32> = vs_TEXCOORD5;
      x_241 = x_247;
    }
    let x_248 : vec3<f32> = x_241;
    let x_249 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
    let x_251 : vec4<f32> = u_xlat4;
    let x_256 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_258 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + -(x_256));
    let x_259 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat4;
    let x_264 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_265 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) * x_264);
    let x_266 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_266.x, x_265.x, x_265.y, x_265.z);
    let x_269 : f32 = u_xlat4.y;
    u_xlat19 = ((x_269 * 0.25f) + 0.75f);
    let x_276 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_276 * 0.5f) + 0.75f);
    let x_280 : f32 = u_xlat19;
    let x_281 : f32 = u_xlat20;
    u_xlat4.x = max(x_280, x_281);
    let x_292 : vec4<f32> = u_xlat4;
    let x_294 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_292.x, x_292.z, x_292.w));
    u_xlat4 = x_294;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_301 : vec4<f32> = u_xlat4;
  let x_303 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_301, x_303);
  let x_305 : f32 = u_xlat19;
  u_xlat19 = clamp(x_305, 0.0f, 1.0f);
  let x_313 : vec3<f32> = u_xlat3;
  let x_315 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_313.x, x_313.y));
  u_xlat20 = x_315.w;
  let x_317 : f32 = u_xlat19;
  let x_318 : f32 = u_xlat20;
  u_xlat19 = (x_317 * x_318);
  let x_320 : f32 = u_xlat19;
  let x_324 : vec4<f32> = x_33.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_320, x_320, x_320) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_328 : vec4<f32> = vs_TEXCOORD1;
  let x_331 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_328.x, x_328.y, x_328.z)), x_331);
  let x_333 : f32 = u_xlat19;
  let x_334 : f32 = u_xlat19;
  u_xlat19 = (x_333 + x_334);
  let x_336 : vec3<f32> = u_xlat2;
  let x_337 : f32 = u_xlat19;
  let x_341 : vec4<f32> = vs_TEXCOORD1;
  let x_344 : vec3<f32> = ((x_336 * -(vec3<f32>(x_337, x_337, x_337))) + -(vec3<f32>(x_341.x, x_341.y, x_341.z)));
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_350 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_350;
  let x_353 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_353;
  let x_356 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_356;
  let x_358 : vec3<f32> = u_xlat2;
  let x_359 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_358, x_359);
  let x_361 : f32 = u_xlat19;
  u_xlat19 = clamp(x_361, 0.0f, 1.0f);
  let x_363 : vec4<f32> = u_xlat4;
  let x_365 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_363.x, x_363.y, x_363.z), x_365);
  let x_369 : f32 = u_xlat2.x;
  let x_371 : f32 = u_xlat2.x;
  u_xlat2.x = (x_369 * x_371);
  let x_375 : f32 = u_xlat2.x;
  let x_377 : f32 = u_xlat2.x;
  u_xlat2.x = (x_375 * x_377);
  let x_382 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_382) + 1.0f);
  let x_391 : vec3<f32> = u_xlat2;
  let x_393 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_391.x, x_391.y));
  u_xlat2.x = x_393.x;
  let x_397 : f32 = u_xlat2.x;
  u_xlat2.x = (x_397 * 16.0f);
  let x_401 : vec3<f32> = u_xlat0;
  let x_402 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_401 * vec3<f32>(x_402.x, x_402.x, x_402.x));
  let x_405 : vec3<f32> = u_xlat1;
  let x_406 : f32 = u_xlat18;
  let x_409 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_405 * vec3<f32>(x_406, x_406, x_406)) + x_409);
  let x_411 : f32 = u_xlat19;
  let x_413 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_411, x_411, x_411) * x_413);
  let x_417 : vec3<f32> = u_xlat0;
  let x_418 : vec3<f32> = u_xlat1;
  let x_419 : vec3<f32> = (x_417 * x_418);
  let x_420 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

