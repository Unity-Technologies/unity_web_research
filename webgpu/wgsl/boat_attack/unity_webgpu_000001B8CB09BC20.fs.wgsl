struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb14 : vec2<bool>;
  var u_xlat14 : vec2<f32>;
  var u_xlatb18 : bool;
  var u_xlat5 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat6 : vec2<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_23, x_33);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_37 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(abs(x_37));
  let x_40 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_40 * vec3<f32>(0.454545468f, 0.454545468f, 0.454545468f));
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = exp2(x_44);
  let x_52 : vec4<f32> = vs_TEXCOORD1;
  let x_55 : f32 = x_26.x_GlobalMipBias.x;
  let x_56 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_52.x, x_52.y), x_55);
  u_xlat1 = vec3<f32>(x_56.x, x_56.y, x_56.z);
  let x_58 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(abs(x_58));
  let x_61 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_61 * vec3<f32>(0.454545468f, 0.454545468f, 0.454545468f));
  let x_63 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_63);
  let x_66 : vec3<f32> = u_xlat0;
  let x_67 : vec3<f32> = u_xlat1;
  u_xlat2 = (x_66 + -(x_67));
  let x_74 : f32 = u_xlat2.y;
  let x_77 : f32 = u_xlat2.x;
  u_xlat18 = max(abs(x_74), abs(x_77));
  let x_82 : f32 = u_xlat2.z;
  let x_84 : f32 = u_xlat18;
  u_xlat2.x = max(abs(x_82), x_84);
  let x_91 : vec4<f32> = vs_TEXCOORD1;
  let x_94 : f32 = x_26.x_GlobalMipBias.x;
  let x_95 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_91.z, x_91.w), x_94);
  u_xlat3 = vec3<f32>(x_95.x, x_95.y, x_95.z);
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(abs(x_97));
  let x_100 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_100 * vec3<f32>(0.454545468f, 0.454545468f, 0.454545468f));
  let x_102 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_102);
  let x_105 : vec3<f32> = u_xlat0;
  let x_106 : vec3<f32> = u_xlat3;
  u_xlat4 = (x_105 + -(x_106));
  let x_110 : f32 = u_xlat4.y;
  let x_113 : f32 = u_xlat4.x;
  u_xlat18 = max(abs(x_110), abs(x_113));
  let x_117 : f32 = u_xlat4.z;
  let x_119 : f32 = u_xlat18;
  u_xlat2.y = max(abs(x_117), x_119);
  let x_126 : vec3<f32> = u_xlat2;
  let x_131 : vec4<bool> = (vec4<f32>(x_126.x, x_126.y, x_126.x, x_126.y) >= vec4<f32>(0.150000006f, 0.150000006f, 0.150000006f, 0.150000006f));
  u_xlatb14 = vec2<bool>(x_131.x, x_131.y);
  let x_137 : bool = u_xlatb14.x;
  u_xlat14.x = select(0.0f, 1.0f, x_137);
  let x_143 : bool = u_xlatb14.y;
  u_xlat14.y = select(0.0f, 1.0f, x_143);
  let x_146 : vec2<f32> = u_xlat14;
  u_xlat18 = dot(x_146, vec2<f32>(1.0f, 1.0f));
  let x_150 : f32 = u_xlat18;
  u_xlatb18 = (x_150 == 0.0f);
  let x_152 : bool = u_xlatb18;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_26.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_165.x, x_165.y), x_168);
  u_xlat4 = vec3<f32>(x_169.x, x_169.y, x_169.z);
  let x_171 : vec3<f32> = u_xlat4;
  u_xlat4 = log2(abs(x_171));
  let x_174 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_174 * vec3<f32>(0.454545468f, 0.454545468f, 0.454545468f));
  let x_176 : vec3<f32> = u_xlat4;
  u_xlat4 = exp2(x_176);
  let x_178 : vec3<f32> = u_xlat0;
  let x_179 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_178 + -(x_179));
  let x_183 : f32 = u_xlat4.y;
  let x_186 : f32 = u_xlat4.x;
  u_xlat18 = max(abs(x_183), abs(x_186));
  let x_190 : f32 = u_xlat4.z;
  let x_192 : f32 = u_xlat18;
  u_xlat4.x = max(abs(x_190), x_192);
  let x_199 : vec4<f32> = vs_TEXCOORD2;
  let x_202 : f32 = x_26.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_199.z, x_199.w), x_202);
  u_xlat5 = vec3<f32>(x_203.x, x_203.y, x_203.z);
  let x_205 : vec3<f32> = u_xlat5;
  u_xlat5 = log2(abs(x_205));
  let x_208 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_208 * vec3<f32>(0.454545468f, 0.454545468f, 0.454545468f));
  let x_210 : vec3<f32> = u_xlat5;
  u_xlat5 = exp2(x_210);
  let x_212 : vec3<f32> = u_xlat0;
  let x_213 : vec3<f32> = u_xlat5;
  u_xlat0 = (x_212 + -(x_213));
  let x_217 : f32 = u_xlat0.y;
  let x_220 : f32 = u_xlat0.x;
  u_xlat0.x = max(abs(x_217), abs(x_220));
  let x_225 : f32 = u_xlat0.z;
  let x_228 : f32 = u_xlat0.x;
  u_xlat4.y = max(abs(x_225), x_228);
  let x_231 : vec3<f32> = u_xlat2;
  let x_233 : vec3<f32> = u_xlat4;
  let x_235 : vec2<f32> = max(vec2<f32>(x_231.x, x_231.y), vec2<f32>(x_233.x, x_233.y));
  let x_236 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_235.x, x_235.y, x_236.z);
  let x_242 : vec4<f32> = vs_TEXCOORD3;
  let x_245 : f32 = x_26.x_GlobalMipBias.x;
  let x_246 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_242.x, x_242.y), x_245);
  u_xlat4 = vec3<f32>(x_246.x, x_246.y, x_246.z);
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat4 = log2(abs(x_248));
  let x_251 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_251 * vec3<f32>(0.454545468f, 0.454545468f, 0.454545468f));
  let x_253 : vec3<f32> = u_xlat4;
  u_xlat4 = exp2(x_253);
  let x_255 : vec3<f32> = u_xlat1;
  let x_256 : vec3<f32> = u_xlat4;
  u_xlat1 = (x_255 + -(x_256));
  let x_261 : f32 = u_xlat1.y;
  let x_264 : f32 = u_xlat1.x;
  u_xlat12 = max(abs(x_261), abs(x_264));
  let x_268 : f32 = u_xlat1.z;
  let x_270 : f32 = u_xlat12;
  u_xlat1.x = max(abs(x_268), x_270);
  let x_276 : vec4<f32> = vs_TEXCOORD3;
  let x_279 : f32 = x_26.x_GlobalMipBias.x;
  let x_280 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_276.z, x_276.w), x_279);
  u_xlat4 = vec3<f32>(x_280.x, x_280.y, x_280.z);
  let x_282 : vec3<f32> = u_xlat4;
  u_xlat4 = log2(abs(x_282));
  let x_285 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_285 * vec3<f32>(0.454545468f, 0.454545468f, 0.454545468f));
  let x_287 : vec3<f32> = u_xlat4;
  u_xlat4 = exp2(x_287);
  let x_289 : vec3<f32> = u_xlat3;
  let x_290 : vec3<f32> = u_xlat4;
  u_xlat3 = (x_289 + -(x_290));
  let x_294 : f32 = u_xlat3.y;
  let x_297 : f32 = u_xlat3.x;
  u_xlat12 = max(abs(x_294), abs(x_297));
  let x_301 : f32 = u_xlat3.z;
  let x_303 : f32 = u_xlat12;
  u_xlat1.y = max(abs(x_301), x_303);
  let x_306 : vec3<f32> = u_xlat0;
  let x_308 : vec3<f32> = u_xlat1;
  let x_310 : vec2<f32> = max(vec2<f32>(x_306.x, x_306.y), vec2<f32>(x_308.x, x_308.y));
  let x_311 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_310.x, x_310.y, x_311.z);
  let x_314 : f32 = u_xlat0.y;
  let x_316 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_314, x_316);
  let x_320 : vec3<f32> = u_xlat2;
  let x_322 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec2<f32>(x_320.x, x_320.y) + vec2<f32>(x_322.x, x_322.y));
  let x_326 : vec2<f32> = u_xlat6;
  let x_328 : vec3<f32> = u_xlat0;
  let x_330 : vec4<bool> = (vec4<f32>(x_326.x, x_326.y, x_326.x, x_326.x) >= vec4<f32>(x_328.x, x_328.x, x_328.x, x_328.x));
  u_xlatb0 = vec2<bool>(x_330.x, x_330.y);
  let x_333 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_333);
  let x_337 : bool = u_xlatb0.y;
  u_xlat0.y = select(0.0f, 1.0f, x_337);
  let x_340 : vec3<f32> = u_xlat0;
  let x_342 : vec2<f32> = u_xlat14;
  let x_343 : vec2<f32> = (vec2<f32>(x_340.x, x_340.y) * x_342);
  let x_344 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_343.x, x_343.y, x_344.z);
  let x_348 : vec3<f32> = u_xlat0;
  let x_349 : vec2<f32> = vec2<f32>(x_348.x, x_348.y);
  let x_350 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_349.x, x_349.y, x_350.z, x_350.w);
  let x_353 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_353.x, x_353.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

