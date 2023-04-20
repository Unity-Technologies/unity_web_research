diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_NitsForPaperWhite : f32,
  /* @offset(4) */
  x_ColorGamut : i32,
  /* @offset(8) */
  x_ForceGammaToLinear : i32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_166 : PGlobals;

var<private> u_xlatb2 : vec3<bool>;

var<private> u_xlatb19 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_89 : f32;
  var x_103 : f32;
  var x_116 : f32;
  var x_129 : f32;
  var x_141 : f32;
  var x_153 : f32;
  var x_174 : vec3<f32>;
  var x_217 : f32;
  var x_229 : f32;
  var x_241 : f32;
  var x_357 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_32 : vec4<f32> = u_xlat0;
  let x_35 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_32.x, x_32.y, x_32.z, x_32.x));
  u_xlatb1 = vec3<bool>(x_35.x, x_35.y, x_35.z);
  let x_39 : vec4<f32> = u_xlat0;
  let x_43 : vec3<f32> = (vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_44 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_43.x, x_43.y, x_43.z, x_44.w);
  let x_47 : vec4<f32> = u_xlat0;
  let x_51 : vec4<bool> = (vec4<f32>(x_47.x, x_47.y, x_47.z, x_47.x) < vec4<f32>(1.0f, 1.0f, 1.0f, 0.0f));
  u_xlatb3 = vec3<bool>(x_51.x, x_51.y, x_51.z);
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_60 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_60 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_64 : vec3<f32> = u_xlat4;
  u_xlat4 = log2(x_64);
  let x_66 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_66 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_70 : vec3<f32> = u_xlat4;
  u_xlat4 = exp2(x_70);
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat5 = log2(vec3<f32>(x_73.x, x_73.y, x_73.z));
  let x_76 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_76 * vec3<f32>(2.20000004768371582031f, 2.20000004768371582031f, 2.20000004768371582031f));
  let x_80 : vec3<f32> = u_xlat5;
  u_xlat5 = exp2(x_80);
  let x_87 : bool = u_xlatb3.x;
  if (x_87) {
    let x_94 : f32 = u_xlat4.x;
    x_89 = x_94;
  } else {
    let x_97 : f32 = u_xlat5.x;
    x_89 = x_97;
  }
  let x_98 : f32 = x_89;
  u_xlat3.x = x_98;
  let x_102 : bool = u_xlatb3.y;
  if (x_102) {
    let x_107 : f32 = u_xlat4.y;
    x_103 = x_107;
  } else {
    let x_110 : f32 = u_xlat5.y;
    x_103 = x_110;
  }
  let x_111 : f32 = x_103;
  u_xlat3.y = x_111;
  let x_115 : bool = u_xlatb3.z;
  if (x_115) {
    let x_120 : f32 = u_xlat4.z;
    x_116 = x_120;
  } else {
    let x_123 : f32 = u_xlat5.z;
    x_116 = x_123;
  }
  let x_124 : f32 = x_116;
  u_xlat3.z = x_124;
  let x_128 : bool = u_xlatb1.x;
  if (x_128) {
    let x_133 : f32 = u_xlat2.x;
    x_129 = x_133;
  } else {
    let x_136 : f32 = u_xlat3.x;
    x_129 = x_136;
  }
  let x_137 : f32 = x_129;
  u_xlat1.x = x_137;
  let x_140 : bool = u_xlatb1.y;
  if (x_140) {
    let x_145 : f32 = u_xlat2.y;
    x_141 = x_145;
  } else {
    let x_148 : f32 = u_xlat3.y;
    x_141 = x_148;
  }
  let x_149 : f32 = x_141;
  u_xlat1.y = x_149;
  let x_152 : bool = u_xlatb1.z;
  if (x_152) {
    let x_157 : f32 = u_xlat2.z;
    x_153 = x_157;
  } else {
    let x_160 : f32 = u_xlat3.z;
    x_153 = x_160;
  }
  let x_161 : f32 = x_153;
  u_xlat1.z = x_161;
  let x_170 : i32 = x_166.x_ForceGammaToLinear;
  if ((x_170 != 0i)) {
    let x_177 : vec3<f32> = u_xlat1;
    x_174 = x_177;
  } else {
    let x_179 : vec4<f32> = u_xlat0;
    x_174 = vec3<f32>(x_179.x, x_179.y, x_179.z);
  }
  let x_181 : vec3<f32> = x_174;
  u_xlat1 = x_181;
  let x_184 : i32 = x_166.x_ColorGamut;
  if ((x_184 == 0i)) {
    let x_189 : vec3<f32> = u_xlat1;
    let x_193 : vec4<bool> = (vec4<f32>(x_189.x, x_189.y, x_189.z, x_189.x) < vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f));
    u_xlatb2 = vec3<bool>(x_193.x, x_193.y, x_193.z);
    let x_195 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_195 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_199 : vec3<f32> = u_xlat1;
    u_xlat4 = log2(abs(x_199));
    let x_202 : vec3<f32> = u_xlat4;
    u_xlat4 = (x_202 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_206 : vec3<f32> = u_xlat4;
    u_xlat4 = exp2(x_206);
    let x_208 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_208 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_216 : bool = u_xlatb2.x;
    if (x_216) {
      let x_221 : f32 = u_xlat3.x;
      x_217 = x_221;
    } else {
      let x_224 : f32 = u_xlat4.x;
      x_217 = x_224;
    }
    let x_225 : f32 = x_217;
    u_xlat0.x = x_225;
    let x_228 : bool = u_xlatb2.y;
    if (x_228) {
      let x_233 : f32 = u_xlat3.y;
      x_229 = x_233;
    } else {
      let x_236 : f32 = u_xlat4.y;
      x_229 = x_236;
    }
    let x_237 : f32 = x_229;
    u_xlat0.y = x_237;
    let x_240 : bool = u_xlatb2.z;
    if (x_240) {
      let x_245 : f32 = u_xlat3.z;
      x_241 = x_245;
    } else {
      let x_248 : f32 = u_xlat4.z;
      x_241 = x_248;
    }
    let x_249 : f32 = x_241;
    u_xlat0.z = x_249;
  } else {
    let x_254 : i32 = x_166.x_ColorGamut;
    u_xlatb19 = (x_254 == 4i);
    let x_259 : f32 = x_166.x_NitsForPaperWhite;
    let x_264 : vec2<f32> = (vec2<f32>(x_259, x_259) * vec2<f32>(0.00009999999747378752f, 0.01250000018626451492f));
    let x_265 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_265.z, x_265.w);
    let x_271 : vec3<f32> = u_xlat1;
    u_xlat3.x = dot(vec3<f32>(0.6274020075798034668f, 0.32929199934005737305f, 0.04330600053071975708f), x_271);
    let x_278 : vec3<f32> = u_xlat1;
    u_xlat3.y = dot(vec3<f32>(0.06909500062465667725f, 0.91954398155212402344f, 0.0113599998876452446f), x_278);
    let x_285 : vec3<f32> = u_xlat1;
    u_xlat3.z = dot(vec3<f32>(0.01639400050044059753f, 0.08802799880504608154f, 0.89557802677154541016f), x_285);
    let x_288 : vec4<f32> = u_xlat2;
    let x_290 : vec3<f32> = u_xlat3;
    let x_291 : vec3<f32> = (vec3<f32>(x_288.x, x_288.x, x_288.x) * x_290);
    let x_292 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_291.x, x_292.y, x_291.y, x_291.z);
    let x_294 : vec4<f32> = u_xlat2;
    let x_297 : vec3<f32> = log2(abs(vec3<f32>(x_294.x, x_294.z, x_294.w)));
    let x_298 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_297.x, x_298.y, x_297.y, x_297.z);
    let x_300 : vec4<f32> = u_xlat2;
    let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.z, x_300.w) * vec3<f32>(0.1593017578125f, 0.1593017578125f, 0.1593017578125f));
    let x_305 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_304.x, x_305.y, x_304.y, x_304.z);
    let x_307 : vec4<f32> = u_xlat2;
    let x_309 : vec3<f32> = exp2(vec3<f32>(x_307.x, x_307.z, x_307.w));
    let x_310 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_309.x, x_310.y, x_309.y, x_309.z);
    let x_312 : vec4<f32> = u_xlat2;
    u_xlat3 = ((vec3<f32>(x_312.x, x_312.z, x_312.w) * vec3<f32>(18.8515625f, 18.8515625f, 18.8515625f)) + vec3<f32>(0.8359375f, 0.8359375f, 0.8359375f));
    let x_320 : vec4<f32> = u_xlat2;
    let x_326 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.z, x_320.w) * vec3<f32>(18.6875f, 18.6875f, 18.6875f)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_327 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_326.x, x_327.y, x_326.y, x_326.z);
    let x_329 : vec3<f32> = u_xlat3;
    let x_330 : vec4<f32> = u_xlat2;
    let x_332 : vec3<f32> = (x_329 / vec3<f32>(x_330.x, x_330.z, x_330.w));
    let x_333 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_332.x, x_333.y, x_332.y, x_332.z);
    let x_335 : vec4<f32> = u_xlat2;
    let x_337 : vec3<f32> = log2(vec3<f32>(x_335.x, x_335.z, x_335.w));
    let x_338 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_337.x, x_338.y, x_337.y, x_337.z);
    let x_340 : vec4<f32> = u_xlat2;
    let x_344 : vec3<f32> = (vec3<f32>(x_340.x, x_340.z, x_340.w) * vec3<f32>(78.84375f, 78.84375f, 78.84375f));
    let x_345 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_344.x, x_345.y, x_344.y, x_344.z);
    let x_347 : vec4<f32> = u_xlat2;
    let x_349 : vec3<f32> = exp2(vec3<f32>(x_347.x, x_347.z, x_347.w));
    let x_350 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_349.x, x_350.y, x_349.y, x_349.z);
    let x_352 : vec3<f32> = u_xlat1;
    let x_353 : vec4<f32> = u_xlat2;
    u_xlat1 = (x_352 * vec3<f32>(x_353.y, x_353.y, x_353.y));
    let x_356 : bool = u_xlatb19;
    if (x_356) {
      let x_360 : vec4<f32> = u_xlat2;
      x_357 = vec3<f32>(x_360.x, x_360.z, x_360.w);
    } else {
      let x_363 : vec3<f32> = u_xlat1;
      x_357 = x_363;
    }
    let x_364 : vec3<f32> = x_357;
    let x_365 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  }
  let x_369 : vec4<f32> = u_xlat0;
  SV_Target0 = x_369;
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


