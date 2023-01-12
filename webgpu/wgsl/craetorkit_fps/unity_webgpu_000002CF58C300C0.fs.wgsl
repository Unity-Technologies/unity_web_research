struct PGlobals {
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlat10 : vec3<f32>;
  var x_222 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat9 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD3;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_36.x, x_36.y, x_36.z));
  let x_40 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_40 * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_53 : vec2<f32> = vs_TEXCOORD3;
  let x_54 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_53);
  let x_55 : vec3<f32> = vec3<f32>(x_54.x, x_54.y, x_54.w);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_62 : f32 = u_xlat2.z;
  let x_65 : f32 = u_xlat2.x;
  u_xlat2.x = (x_62 * x_65);
  let x_68 : vec4<f32> = u_xlat2;
  let x_75 : vec2<f32> = ((vec2<f32>(x_68.x, x_68.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_76 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_75.x, x_75.y, x_76.z, x_76.w);
  let x_78 : vec4<f32> = u_xlat2;
  let x_83 : f32 = x_31.x_BumpScale;
  let x_85 : vec2<f32> = (vec2<f32>(x_78.x, x_78.y) * vec2<f32>(x_83, x_83));
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_89 : vec4<f32> = u_xlat2;
  let x_91 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec2<f32>(x_89.x, x_89.y), vec2<f32>(x_91.x, x_91.y));
  let x_94 : f32 = u_xlat18;
  u_xlat18 = min(x_94, 1.0f);
  let x_97 : f32 = u_xlat18;
  u_xlat18 = (-(x_97) + 1.0f);
  let x_100 : f32 = u_xlat18;
  u_xlat2.z = sqrt(x_100);
  let x_103 : vec4<f32> = u_xlat2;
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_103.x, x_103.y, x_103.z), vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_108);
  let x_110 : f32 = u_xlat18;
  let x_112 : vec4<f32> = u_xlat2;
  let x_114 : vec3<f32> = (vec3<f32>(x_110, x_110, x_110) * vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_119 : vec4<f32> = vs_TEXCOORD0;
  let x_121 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(vec3<f32>(x_119.x, x_119.y, x_119.z), vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_126 : vec4<f32> = vs_TEXCOORD1;
  let x_128 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_134 : vec4<f32> = vs_TEXCOORD2;
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(vec3<f32>(x_134.x, x_134.y, x_134.z), vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_140 : vec4<f32> = u_xlat3;
  let x_142 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_140.x, x_140.y, x_140.z), vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat18;
  let x_149 : vec4<f32> = u_xlat3;
  let x_151 : vec3<f32> = (vec3<f32>(x_147, x_147, x_147) * vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_159 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_159 == 1.0f);
  let x_161 : bool = u_xlatb18;
  if (x_161) {
    let x_165 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_165 == 1.0f);
    let x_167 : vec4<f32> = vs_TEXCOORD1;
    let x_172 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_174 : vec3<f32> = (vec3<f32>(x_167.w, x_167.w, x_167.w) * vec3<f32>(x_172.x, x_172.y, x_172.z));
    let x_175 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
    let x_179 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_181 : vec4<f32> = vs_TEXCOORD0;
    let x_184 : vec4<f32> = u_xlat3;
    let x_186 : vec3<f32> = ((vec3<f32>(x_179.x, x_179.y, x_179.z) * vec3<f32>(x_181.w, x_181.w, x_181.w)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
    let x_187 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
    let x_191 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_193 : vec4<f32> = vs_TEXCOORD2;
    let x_196 : vec4<f32> = u_xlat3;
    let x_198 : vec3<f32> = ((vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_193.w, x_193.w, x_193.w)) + vec3<f32>(x_196.x, x_196.y, x_196.z));
    let x_199 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
    let x_201 : vec4<f32> = u_xlat3;
    let x_204 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_206 : vec3<f32> = (vec3<f32>(x_201.x, x_201.y, x_201.z) + vec3<f32>(x_204.x, x_204.y, x_204.z));
    let x_207 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_213 : f32 = vs_TEXCOORD0.w;
    u_xlat10.x = x_213;
    let x_216 : f32 = vs_TEXCOORD1.w;
    u_xlat10.y = x_216;
    let x_219 : f32 = vs_TEXCOORD2.w;
    u_xlat10.z = x_219;
    let x_221 : bool = u_xlatb18;
    if (x_221) {
      let x_225 : vec4<f32> = u_xlat3;
      x_222 = vec3<f32>(x_225.x, x_225.y, x_225.z);
    } else {
      let x_228 : vec3<f32> = u_xlat10;
      x_222 = x_228;
    }
    let x_229 : vec3<f32> = x_222;
    let x_230 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_232 : vec4<f32> = u_xlat3;
    let x_237 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_239 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) + -(x_237));
    let x_240 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
    let x_242 : vec4<f32> = u_xlat3;
    let x_246 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_247 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) * x_246);
    let x_248 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_248.x, x_247.x, x_247.y, x_247.z);
    let x_251 : f32 = u_xlat3.y;
    u_xlat18 = (x_251 * 0.25f);
    let x_256 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat19 = (x_256 * 0.5f);
    let x_261 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat9 = ((-(x_261) * 0.5f) + 0.25f);
    let x_265 : f32 = u_xlat18;
    let x_266 : f32 = u_xlat19;
    u_xlat18 = max(x_265, x_266);
    let x_268 : f32 = u_xlat9;
    let x_269 : f32 = u_xlat18;
    u_xlat3.x = min(x_268, x_269);
    let x_281 : vec4<f32> = u_xlat3;
    let x_283 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_281.x, x_281.z, x_281.w));
    u_xlat4 = x_283;
    let x_285 : vec4<f32> = u_xlat3;
    let x_289 : vec3<f32> = (vec3<f32>(x_285.x, x_285.z, x_285.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_290 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
    let x_295 : vec4<f32> = u_xlat5;
    let x_297 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_295.x, x_295.y, x_295.z));
    u_xlat5 = x_297;
    let x_298 : vec4<f32> = u_xlat3;
    let x_301 : vec3<f32> = (vec3<f32>(x_298.x, x_298.z, x_298.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_302 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
    let x_307 : vec4<f32> = u_xlat3;
    let x_309 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_307.x, x_307.y, x_307.z));
    u_xlat3 = x_309;
    u_xlat2.w = 1.0f;
    let x_311 : vec4<f32> = u_xlat4;
    let x_312 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_311, x_312);
    let x_315 : vec4<f32> = u_xlat5;
    let x_316 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_315, x_316);
    let x_319 : vec4<f32> = u_xlat3;
    let x_320 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_319, x_320);
  } else {
    u_xlat2.w = 1.0f;
    let x_326 : vec4<f32> = x_31.unity_SHAr;
    let x_327 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_326, x_327);
    let x_331 : vec4<f32> = x_31.unity_SHAg;
    let x_332 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_331, x_332);
    let x_336 : vec4<f32> = x_31.unity_SHAb;
    let x_337 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_336, x_337);
  }
  let x_340 : vec4<f32> = u_xlat4;
  let x_344 : vec3<f32> = vs_TEXCOORD6;
  let x_345 : vec3<f32> = (vec3<f32>(x_340.x, x_340.y, x_340.z) + x_344);
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat3;
  let x_351 : vec3<f32> = max(vec3<f32>(x_348.x, x_348.y, x_348.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_352 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec3<f32> = u_xlat0;
  let x_355 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((x_354 * vec3<f32>(x_355.x, x_355.y, x_355.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_365 : f32 = x_31.x_Metallic;
  let x_367 : vec3<f32> = u_xlat0;
  let x_371 : vec3<f32> = ((vec3<f32>(x_365, x_365, x_365) * x_367) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_372 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : f32 = x_31.x_Metallic;
  u_xlat0.x = ((-(x_375) * 0.959999979f) + 0.959999979f);
  let x_381 : vec3<f32> = u_xlat0;
  let x_383 : vec3<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_381.x, x_381.x, x_381.x) * x_383);
  let x_385 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_385.x, x_385.y, x_385.z) * x_387);
  let x_390 : vec4<f32> = u_xlat2;
  let x_394 : vec3<f32> = ((vec3<f32>(x_390.x, x_390.y, x_390.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_395 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_398 : vec3<f32> = u_xlat1;
  let x_400 : vec3<f32> = exp2(-(x_398));
  let x_401 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : vec3<f32> = u_xlat0;
  let x_405 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  SV_Target0.w = 1.0f;
  let x_411 : f32 = x_31.x_Glossiness;
  SV_Target1.w = x_411;
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target2, SV_Target3, SV_Target0);
}

