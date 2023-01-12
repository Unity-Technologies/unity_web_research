struct PGlobals {
  x_NitsForPaperWhite : f32,
  x_ColorGamut : i32,
  x_ForceGammaToLinear : i32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_165 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : vec3<bool>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb3 : vec3<bool>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var x_89 : f32;
  var x_102 : f32;
  var x_115 : f32;
  var u_xlat1 : vec3<f32>;
  var x_128 : f32;
  var x_140 : f32;
  var x_152 : f32;
  var x_172 : vec3<f32>;
  var u_xlatb2 : vec3<bool>;
  var x_215 : f32;
  var x_227 : f32;
  var x_239 : f32;
  var u_xlatb19 : bool;
  var x_355 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_32 : vec4<f32> = u_xlat0;
  let x_35 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_32.x, x_32.y, x_32.z, x_32.x));
  u_xlatb1 = vec3<bool>(x_35.x, x_35.y, x_35.z);
  let x_39 : vec4<f32> = u_xlat0;
  let x_43 : vec3<f32> = (vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_44 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_43.x, x_43.y, x_43.z, x_44.w);
  let x_47 : vec4<f32> = u_xlat0;
  let x_51 : vec4<bool> = (vec4<f32>(x_47.x, x_47.y, x_47.z, x_47.x) < vec4<f32>(1.0f, 1.0f, 1.0f, 0.0f));
  u_xlatb3 = vec3<bool>(x_51.x, x_51.y, x_51.z);
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_60 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_60 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_64 : vec3<f32> = u_xlat4;
  u_xlat4 = log2(x_64);
  let x_66 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_66 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_70 : vec3<f32> = u_xlat4;
  u_xlat4 = exp2(x_70);
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat5 = log2(vec3<f32>(x_73.x, x_73.y, x_73.z));
  let x_76 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_76 * vec3<f32>(2.200000048f, 2.200000048f, 2.200000048f));
  let x_80 : vec3<f32> = u_xlat5;
  u_xlat5 = exp2(x_80);
  let x_87 : bool = u_xlatb3.x;
  if (x_87) {
    let x_93 : f32 = u_xlat4.x;
    x_89 = x_93;
  } else {
    let x_96 : f32 = u_xlat5.x;
    x_89 = x_96;
  }
  let x_97 : f32 = x_89;
  u_xlat3.x = x_97;
  let x_101 : bool = u_xlatb3.y;
  if (x_101) {
    let x_106 : f32 = u_xlat4.y;
    x_102 = x_106;
  } else {
    let x_109 : f32 = u_xlat5.y;
    x_102 = x_109;
  }
  let x_110 : f32 = x_102;
  u_xlat3.y = x_110;
  let x_114 : bool = u_xlatb3.z;
  if (x_114) {
    let x_119 : f32 = u_xlat4.z;
    x_115 = x_119;
  } else {
    let x_122 : f32 = u_xlat5.z;
    x_115 = x_122;
  }
  let x_123 : f32 = x_115;
  u_xlat3.z = x_123;
  let x_127 : bool = u_xlatb1.x;
  if (x_127) {
    let x_132 : f32 = u_xlat2.x;
    x_128 = x_132;
  } else {
    let x_135 : f32 = u_xlat3.x;
    x_128 = x_135;
  }
  let x_136 : f32 = x_128;
  u_xlat1.x = x_136;
  let x_139 : bool = u_xlatb1.y;
  if (x_139) {
    let x_144 : f32 = u_xlat2.y;
    x_140 = x_144;
  } else {
    let x_147 : f32 = u_xlat3.y;
    x_140 = x_147;
  }
  let x_148 : f32 = x_140;
  u_xlat1.y = x_148;
  let x_151 : bool = u_xlatb1.z;
  if (x_151) {
    let x_156 : f32 = u_xlat2.z;
    x_152 = x_156;
  } else {
    let x_159 : f32 = u_xlat3.z;
    x_152 = x_159;
  }
  let x_160 : f32 = x_152;
  u_xlat1.z = x_160;
  let x_169 : i32 = x_165.x_ForceGammaToLinear;
  if ((x_169 != 0i)) {
    let x_175 : vec3<f32> = u_xlat1;
    x_172 = x_175;
  } else {
    let x_177 : vec4<f32> = u_xlat0;
    x_172 = vec3<f32>(x_177.x, x_177.y, x_177.z);
  }
  let x_179 : vec3<f32> = x_172;
  u_xlat1 = x_179;
  let x_182 : i32 = x_165.x_ColorGamut;
  if ((x_182 == 0i)) {
    let x_187 : vec3<f32> = u_xlat1;
    let x_191 : vec4<bool> = (vec4<f32>(x_187.x, x_187.y, x_187.z, x_187.x) < vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f));
    u_xlatb2 = vec3<bool>(x_191.x, x_191.y, x_191.z);
    let x_193 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_193 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_197 : vec3<f32> = u_xlat1;
    u_xlat4 = log2(abs(x_197));
    let x_200 : vec3<f32> = u_xlat4;
    u_xlat4 = (x_200 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_204 : vec3<f32> = u_xlat4;
    u_xlat4 = exp2(x_204);
    let x_206 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_206 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_214 : bool = u_xlatb2.x;
    if (x_214) {
      let x_219 : f32 = u_xlat3.x;
      x_215 = x_219;
    } else {
      let x_222 : f32 = u_xlat4.x;
      x_215 = x_222;
    }
    let x_223 : f32 = x_215;
    u_xlat0.x = x_223;
    let x_226 : bool = u_xlatb2.y;
    if (x_226) {
      let x_231 : f32 = u_xlat3.y;
      x_227 = x_231;
    } else {
      let x_234 : f32 = u_xlat4.y;
      x_227 = x_234;
    }
    let x_235 : f32 = x_227;
    u_xlat0.y = x_235;
    let x_238 : bool = u_xlatb2.z;
    if (x_238) {
      let x_243 : f32 = u_xlat3.z;
      x_239 = x_243;
    } else {
      let x_246 : f32 = u_xlat4.z;
      x_239 = x_246;
    }
    let x_247 : f32 = x_239;
    u_xlat0.z = x_247;
  } else {
    let x_252 : i32 = x_165.x_ColorGamut;
    u_xlatb19 = (x_252 == 4i);
    let x_257 : f32 = x_165.x_NitsForPaperWhite;
    let x_262 : vec2<f32> = (vec2<f32>(x_257, x_257) * vec2<f32>(0.0001f, 0.0125f));
    let x_263 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
    let x_269 : vec3<f32> = u_xlat1;
    u_xlat3.x = dot(vec3<f32>(0.627402008f, 0.329291999f, 0.043306001f), x_269);
    let x_276 : vec3<f32> = u_xlat1;
    u_xlat3.y = dot(vec3<f32>(0.069095001f, 0.919543982f, 0.01136f), x_276);
    let x_283 : vec3<f32> = u_xlat1;
    u_xlat3.z = dot(vec3<f32>(0.016394001f, 0.088027999f, 0.895578027f), x_283);
    let x_286 : vec4<f32> = u_xlat2;
    let x_288 : vec3<f32> = u_xlat3;
    let x_289 : vec3<f32> = (vec3<f32>(x_286.x, x_286.x, x_286.x) * x_288);
    let x_290 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_289.x, x_290.y, x_289.y, x_289.z);
    let x_292 : vec4<f32> = u_xlat2;
    let x_295 : vec3<f32> = log2(abs(vec3<f32>(x_292.x, x_292.z, x_292.w)));
    let x_296 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_295.x, x_296.y, x_295.y, x_295.z);
    let x_298 : vec4<f32> = u_xlat2;
    let x_302 : vec3<f32> = (vec3<f32>(x_298.x, x_298.z, x_298.w) * vec3<f32>(0.159301758f, 0.159301758f, 0.159301758f));
    let x_303 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_302.x, x_303.y, x_302.y, x_302.z);
    let x_305 : vec4<f32> = u_xlat2;
    let x_307 : vec3<f32> = exp2(vec3<f32>(x_305.x, x_305.z, x_305.w));
    let x_308 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_307.x, x_308.y, x_307.y, x_307.z);
    let x_310 : vec4<f32> = u_xlat2;
    u_xlat3 = ((vec3<f32>(x_310.x, x_310.z, x_310.w) * vec3<f32>(18.8515625f, 18.8515625f, 18.8515625f)) + vec3<f32>(0.8359375f, 0.8359375f, 0.8359375f));
    let x_318 : vec4<f32> = u_xlat2;
    let x_324 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.z, x_318.w) * vec3<f32>(18.6875f, 18.6875f, 18.6875f)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_325 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_324.x, x_325.y, x_324.y, x_324.z);
    let x_327 : vec3<f32> = u_xlat3;
    let x_328 : vec4<f32> = u_xlat2;
    let x_330 : vec3<f32> = (x_327 / vec3<f32>(x_328.x, x_328.z, x_328.w));
    let x_331 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_330.x, x_331.y, x_330.y, x_330.z);
    let x_333 : vec4<f32> = u_xlat2;
    let x_335 : vec3<f32> = log2(vec3<f32>(x_333.x, x_333.z, x_333.w));
    let x_336 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_335.x, x_336.y, x_335.y, x_335.z);
    let x_338 : vec4<f32> = u_xlat2;
    let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.z, x_338.w) * vec3<f32>(78.84375f, 78.84375f, 78.84375f));
    let x_343 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_342.x, x_343.y, x_342.y, x_342.z);
    let x_345 : vec4<f32> = u_xlat2;
    let x_347 : vec3<f32> = exp2(vec3<f32>(x_345.x, x_345.z, x_345.w));
    let x_348 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_347.x, x_348.y, x_347.y, x_347.z);
    let x_350 : vec3<f32> = u_xlat1;
    let x_351 : vec4<f32> = u_xlat2;
    u_xlat1 = (x_350 * vec3<f32>(x_351.y, x_351.y, x_351.y));
    let x_354 : bool = u_xlatb19;
    if (x_354) {
      let x_358 : vec4<f32> = u_xlat2;
      x_355 = vec3<f32>(x_358.x, x_358.z, x_358.w);
    } else {
      let x_361 : vec3<f32> = u_xlat1;
      x_355 = x_361;
    }
    let x_362 : vec3<f32> = x_355;
    let x_363 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  }
  let x_367 : vec4<f32> = u_xlat0;
  SV_Target0 = x_367;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

