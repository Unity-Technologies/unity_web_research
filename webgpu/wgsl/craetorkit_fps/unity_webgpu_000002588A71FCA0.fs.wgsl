struct PGlobals {
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

@group(0) @binding(3) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_GrainTex : sampler;

@group(0) @binding(2) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(6) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_168 : f32;
  var x_180 : f32;
  var x_193 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat10 : vec2<f32>;
  var x_320 : f32;
  var x_332 : f32;
  var x_344 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_39 : vec2<f32> = vs_TEXCOORD1;
  let x_40 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_39);
  u_xlat1 = x_40;
  let x_41 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_41.x, x_41.x, x_41.x) * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_47 : vec2<f32> = vs_TEXCOORD1;
  let x_55 : vec4<f32> = x_50.x_Grain_Params2;
  let x_59 : vec4<f32> = x_50.x_Grain_Params2;
  let x_61 : vec2<f32> = ((x_47 * vec2<f32>(x_55.x, x_55.y)) + vec2<f32>(x_59.z, x_59.w));
  let x_62 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_61.x, x_61.y, x_62.z);
  let x_69 : vec3<f32> = u_xlat2;
  let x_71 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_69.x, x_69.y));
  u_xlat2 = vec3<f32>(x_71.x, x_71.y, x_71.z);
  let x_74 : vec3<f32> = u_xlat0;
  u_xlat3 = x_74;
  let x_75 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_75, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_82 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(x_82, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_88 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_88);
  let x_93 : f32 = x_50.x_Grain_Params1.x;
  let x_94 : f32 = u_xlat15;
  u_xlat15 = ((x_93 * -(x_94)) + 1.0f);
  let x_98 : vec3<f32> = u_xlat0;
  let x_99 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_98 * x_99);
  let x_101 : vec3<f32> = u_xlat2;
  let x_104 : f32 = x_50.x_Grain_Params1.y;
  let x_106 : f32 = x_50.x_Grain_Params1.y;
  let x_108 : f32 = x_50.x_Grain_Params1.y;
  u_xlat2 = (x_101 * vec3<f32>(x_104, x_106, x_108));
  let x_111 : vec3<f32> = u_xlat2;
  let x_112 : f32 = u_xlat15;
  let x_115 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_111 * vec3<f32>(x_112, x_112, x_112)) + x_115);
  let x_117 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_117, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_123 : f32 = u_xlat1.w;
  u_xlat1.w = x_123;
  let x_126 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_126, 0.0f, 1.0f);
  let x_129 : vec3<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_129.z, x_129.x, x_129.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_134 : vec3<f32> = u_xlat0;
  u_xlat3 = max(vec3<f32>(x_134.z, x_134.x, x_134.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_139 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_139);
  let x_141 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_141 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_145 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_145);
  let x_147 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_147 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_160 : vec3<f32> = u_xlat0;
  let x_163 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_160.z, x_160.x, x_160.y, x_160.z));
  u_xlatb0 = vec3<bool>(x_163.x, x_163.y, x_163.z);
  let x_167 : bool = u_xlatb0.x;
  if (x_167) {
    let x_172 : f32 = u_xlat2.x;
    x_168 = x_172;
  } else {
    let x_175 : f32 = u_xlat3.x;
    x_168 = x_175;
  }
  let x_176 : f32 = x_168;
  u_xlat0.x = x_176;
  let x_179 : bool = u_xlatb0.y;
  if (x_179) {
    let x_184 : f32 = u_xlat2.y;
    x_180 = x_184;
  } else {
    let x_187 : f32 = u_xlat3.y;
    x_180 = x_187;
  }
  let x_188 : f32 = x_180;
  u_xlat0.y = x_188;
  let x_192 : bool = u_xlatb0.z;
  if (x_192) {
    let x_197 : f32 = u_xlat2.z;
    x_193 = x_197;
  } else {
    let x_200 : f32 = u_xlat3.z;
    x_193 = x_200;
  }
  let x_201 : f32 = x_193;
  u_xlat0.z = x_201;
  let x_204 : vec3<f32> = u_xlat0;
  let x_208 : vec3<f32> = x_50.x_Lut2D_Params;
  u_xlat5 = (x_204 * vec3<f32>(x_208.z, x_208.z, x_208.z));
  let x_212 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_212);
  let x_216 : vec3<f32> = x_50.x_Lut2D_Params;
  let x_220 : vec2<f32> = (vec2<f32>(x_216.x, x_216.y) * vec2<f32>(0.5f, 0.5f));
  let x_221 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_220.x, x_220.y, x_221.z);
  let x_223 : vec3<f32> = u_xlat5;
  let x_226 : vec3<f32> = x_50.x_Lut2D_Params;
  let x_229 : vec3<f32> = u_xlat2;
  let x_231 : vec2<f32> = ((vec2<f32>(x_223.y, x_223.z) * vec2<f32>(x_226.x, x_226.y)) + vec2<f32>(x_229.x, x_229.y));
  let x_232 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_232.x, x_231.x, x_231.y);
  let x_235 : f32 = u_xlat5.x;
  let x_237 : f32 = x_50.x_Lut2D_Params.y;
  let x_240 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_235 * x_237) + x_240);
  let x_248 : vec3<f32> = u_xlat2;
  let x_250 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_248.x, x_248.z));
  u_xlat3 = vec3<f32>(x_250.x, x_250.y, x_250.z);
  let x_255 : f32 = x_50.x_Lut2D_Params.y;
  u_xlat4.x = x_255;
  u_xlat4.y = 0.0f;
  let x_259 : vec3<f32> = u_xlat2;
  let x_261 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_259.x, x_259.z) + x_261);
  let x_266 : vec2<f32> = u_xlat10;
  let x_267 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_266);
  u_xlat2 = vec3<f32>(x_267.x, x_267.y, x_267.z);
  let x_270 : f32 = u_xlat0.x;
  let x_272 : f32 = x_50.x_Lut2D_Params.z;
  let x_275 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_270 * x_272) + -(x_275));
  let x_279 : vec3<f32> = u_xlat3;
  let x_281 : vec3<f32> = u_xlat2;
  u_xlat5 = (-(x_279) + x_281);
  let x_283 : vec3<f32> = u_xlat0;
  let x_285 : vec3<f32> = u_xlat5;
  let x_287 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_283.x, x_283.x, x_283.x) * x_285) + x_287);
  let x_289 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_289 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_293 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_293 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_297 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_297 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_301 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_301), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_304 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_304);
  let x_306 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_306 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_310 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_310);
  let x_314 : vec3<f32> = u_xlat0;
  let x_316 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_314.x, x_314.y, x_314.z, x_314.x));
  u_xlatb0 = vec3<bool>(x_316.x, x_316.y, x_316.z);
  let x_319 : bool = u_xlatb0.x;
  if (x_319) {
    let x_324 : f32 = u_xlat2.x;
    x_320 = x_324;
  } else {
    let x_327 : f32 = u_xlat3.x;
    x_320 = x_327;
  }
  let x_328 : f32 = x_320;
  u_xlat1.x = x_328;
  let x_331 : bool = u_xlatb0.y;
  if (x_331) {
    let x_336 : f32 = u_xlat2.y;
    x_332 = x_336;
  } else {
    let x_339 : f32 = u_xlat3.y;
    x_332 = x_339;
  }
  let x_340 : f32 = x_332;
  u_xlat1.y = x_340;
  let x_343 : bool = u_xlatb0.z;
  if (x_343) {
    let x_348 : f32 = u_xlat2.z;
    x_344 = x_348;
  } else {
    let x_351 : f32 = u_xlat3.z;
    x_344 = x_351;
  }
  let x_352 : f32 = x_344;
  u_xlat1.z = x_352;
  let x_356 : f32 = x_50.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_356);
  let x_360 : bool = u_xlatb0.x;
  if (x_360) {
    let x_363 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_363.x, x_363.y, x_363.z);
    let x_365 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_365, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_369 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_369, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_374 : vec4<f32> = u_xlat1;
  SV_Target0 = x_374;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

