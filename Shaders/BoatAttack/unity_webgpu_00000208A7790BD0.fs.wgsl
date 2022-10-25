struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

struct TemporalAAData {
  x_BlitTexture_TexelSize : vec4<f32>,
  x_TaaMotionVectorTex_TexelSize : vec4<f32>,
  x_TaaAccumulationTex_TexelSize : vec4<f32>,
  x_TaaFrameInfluence : f32,
}

@group(0) @binding(1) var x_TaaMotionVectorTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_TaaAccumulationTex : texture_2d<f32>;

@group(1) @binding(1) var<uniform> x_90 : TemporalAAData;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_TaaMotionVectorTex, sampler_LinearClamp, x_23, x_33);
  let x_35 : vec2<f32> = vec2<f32>(x_34.x, x_34.y);
  let x_36 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_35.x, x_35.y, x_36.z, x_36.w);
  let x_38 : vec4<f32> = u_xlat0;
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_42 : vec2<f32> = (-(vec2<f32>(x_38.x, x_38.y)) + x_41);
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_42.x, x_42.y, x_43.z, x_43.w);
  let x_49 : vec4<f32> = u_xlat0;
  let x_52 : f32 = x_26.x_GlobalMipBias.x;
  let x_53 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_49.x, x_49.y), x_52);
  let x_55 : vec3<f32> = vec3<f32>(x_53.x, x_53.y, x_53.z);
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec2<f32>(x_60.x, x_60.z), vec2<f32>(0.5f, -0.5f));
  let x_68 : f32 = u_xlat21;
  u_xlat1.y = (x_68 + 0.501960814f);
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_73.x, x_73.z, x_73.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_78 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_78.x, x_78.z, x_78.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_84 : f32 = u_xlat21;
  u_xlat1.z = (x_84 + 0.501960814f);
  let x_93 : vec4<f32> = x_90.x_BlitTexture_TexelSize;
  let x_99 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_93.x, x_93.y, x_93.x, x_93.y) * vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f)) + vec4<f32>(x_99.x, x_99.y, x_99.x, x_99.y));
  let x_107 : vec4<f32> = u_xlat0;
  let x_110 : f32 = x_26.x_GlobalMipBias.x;
  let x_111 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_107.x, x_107.y), x_110);
  u_xlat2 = vec3<f32>(x_111.x, x_111.y, x_111.z);
  let x_116 : vec4<f32> = u_xlat0;
  let x_119 : f32 = x_26.x_GlobalMipBias.x;
  let x_120 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_116.z, x_116.w), x_119);
  let x_121 : vec3<f32> = vec3<f32>(x_120.x, x_120.y, x_120.z);
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec2<f32>(x_124.x, x_124.z), vec2<f32>(0.5f, -0.5f));
  let x_128 : f32 = u_xlat21;
  u_xlat3.y = (x_128 + 0.501960814f);
  let x_131 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_131.x, x_131.z, x_131.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_134 : vec3<f32> = u_xlat2;
  u_xlat3.x = dot(vec3<f32>(x_134.x, x_134.z, x_134.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_138 : f32 = u_xlat21;
  u_xlat3.z = (x_138 + 0.501960814f);
  let x_144 : vec2<f32> = vs_TEXCOORD0;
  let x_146 : f32 = x_26.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_144, x_146);
  u_xlat2 = vec3<f32>(x_147.x, x_147.y, x_147.z);
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec2<f32>(x_149.x, x_149.z), vec2<f32>(0.5f, -0.5f));
  let x_153 : f32 = u_xlat21;
  u_xlat4.y = (x_153 + 0.501960814f);
  let x_156 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_156.x, x_156.z, x_156.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_159.x, x_159.z, x_159.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_163 : f32 = u_xlat21;
  u_xlat4.z = (x_163 + 0.501960814f);
  let x_166 : vec4<f32> = u_xlat3;
  let x_168 : vec3<f32> = u_xlat4;
  u_xlat2 = min(vec3<f32>(x_166.x, x_166.y, x_166.z), x_168);
  let x_170 : vec4<f32> = u_xlat3;
  let x_172 : vec3<f32> = u_xlat4;
  let x_173 : vec3<f32> = max(vec3<f32>(x_170.x, x_170.y, x_170.z), x_172);
  let x_174 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec2<f32>(x_176.x, x_176.z), vec2<f32>(0.5f, -0.5f));
  let x_180 : f32 = u_xlat21;
  u_xlat5.y = (x_180 + 0.501960814f);
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_183.x, x_183.z, x_183.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_186 : vec4<f32> = u_xlat0;
  u_xlat5.x = dot(vec3<f32>(x_186.x, x_186.z, x_186.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_190 : f32 = u_xlat21;
  u_xlat5.z = (x_190 + 0.501960814f);
  let x_193 : vec3<f32> = u_xlat2;
  let x_194 : vec3<f32> = u_xlat5;
  let x_195 : vec3<f32> = min(x_193, x_194);
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec3<f32> = u_xlat5;
  u_xlat2 = max(vec3<f32>(x_198.x, x_198.y, x_198.z), x_200);
  let x_203 : vec4<f32> = x_90.x_BlitTexture_TexelSize;
  let x_208 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_203.x, x_203.y, x_203.x, x_203.y) * vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f)) + vec4<f32>(x_208.x, x_208.y, x_208.x, x_208.y));
  let x_214 : vec4<f32> = u_xlat3;
  let x_217 : f32 = x_26.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_214.x, x_214.y), x_217);
  u_xlat5 = vec3<f32>(x_218.x, x_218.y, x_218.z);
  let x_223 : vec4<f32> = u_xlat3;
  let x_226 : f32 = x_26.x_GlobalMipBias.x;
  let x_227 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_223.z, x_223.w), x_226);
  let x_228 : vec3<f32> = vec3<f32>(x_227.x, x_227.y, x_227.z);
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(vec2<f32>(x_231.x, x_231.z), vec2<f32>(0.5f, -0.5f));
  let x_235 : f32 = u_xlat21;
  u_xlat6.y = (x_235 + 0.501960814f);
  let x_238 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(vec3<f32>(x_238.x, x_238.z, x_238.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_241 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_241.x, x_241.z, x_241.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_245 : f32 = u_xlat21;
  u_xlat6.z = (x_245 + 0.501960814f);
  let x_248 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = u_xlat6;
  let x_251 : vec3<f32> = min(vec3<f32>(x_248.x, x_248.y, x_248.z), x_250);
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec3<f32> = u_xlat2;
  let x_255 : vec3<f32> = u_xlat6;
  u_xlat2 = max(x_254, x_255);
  let x_257 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec2<f32>(x_257.x, x_257.z), vec2<f32>(0.5f, -0.5f));
  let x_260 : f32 = u_xlat21;
  u_xlat5.y = (x_260 + 0.501960814f);
  let x_263 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_263.x, x_263.z, x_263.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(vec3<f32>(x_266.x, x_266.z, x_266.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_270 : f32 = u_xlat21;
  u_xlat5.z = (x_270 + 0.501960814f);
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec3<f32> = u_xlat5;
  let x_276 : vec3<f32> = min(vec3<f32>(x_273.x, x_273.y, x_273.z), x_275);
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec3<f32> = u_xlat2;
  let x_280 : vec3<f32> = u_xlat5;
  u_xlat2 = max(x_279, x_280);
  let x_282 : vec4<f32> = u_xlat0;
  let x_284 : vec3<f32> = u_xlat1;
  let x_285 : vec3<f32> = max(vec3<f32>(x_282.x, x_282.y, x_282.z), x_284);
  let x_286 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec3<f32> = u_xlat2;
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec3<f32> = min(x_288, vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_295 : f32 = u_xlat0.x;
  u_xlat21 = (x_295 + 1.0f);
  let x_297 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_297);
  let x_299 : f32 = u_xlat21;
  let x_301 : vec4<f32> = u_xlat0;
  let x_303 : vec3<f32> = (vec3<f32>(x_299, x_299, x_299) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : f32 = u_xlat4.x;
  u_xlat21 = (x_307 + 1.0f);
  let x_309 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_309);
  let x_311 : vec3<f32> = u_xlat4;
  let x_312 : f32 = u_xlat21;
  let x_315 : vec4<f32> = u_xlat0;
  u_xlat1 = ((x_311 * vec3<f32>(x_312, x_312, x_312)) + -(vec3<f32>(x_315.x, x_315.y, x_315.z)));
  let x_321 : f32 = x_90.x_TaaFrameInfluence;
  let x_323 : vec3<f32> = u_xlat1;
  let x_325 : vec4<f32> = u_xlat0;
  let x_327 : vec3<f32> = ((vec3<f32>(x_321, x_321, x_321) * x_323) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : f32 = u_xlat0.x;
  u_xlat21 = (-(x_331) + 1.0f);
  let x_334 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_334);
  let x_338 : vec4<f32> = u_xlat0;
  let x_340 : f32 = u_xlat21;
  u_xlat7 = ((vec2<f32>(x_338.z, x_338.y) * vec2<f32>(x_340, x_340)) + vec2<f32>(-0.501960814f, -0.501960814f));
  let x_347 : f32 = u_xlat0.x;
  let x_348 : f32 = u_xlat21;
  let x_351 : f32 = u_xlat7.y;
  u_xlat1.x = ((x_347 * x_348) + -(x_351));
  let x_355 : vec4<f32> = u_xlat0;
  let x_357 : f32 = u_xlat21;
  let x_360 : vec2<f32> = u_xlat7;
  let x_362 : vec2<f32> = ((vec2<f32>(x_355.x, x_355.x) * vec2<f32>(x_357, x_357)) + vec2<f32>(x_360.y, x_360.x));
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_362.x, x_363.y, x_362.y, x_363.w);
  let x_368 : f32 = u_xlat7.x;
  let x_371 : f32 = u_xlat1.x;
  SV_Target0.z = (-(x_368) + x_371);
  let x_376 : f32 = u_xlat7.x;
  let x_379 : f32 = u_xlat0.x;
  SV_Target0.x = (-(x_376) + x_379);
  let x_383 : f32 = u_xlat0.z;
  SV_Target0.y = x_383;
  SV_Target0.w = 1.0f;
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

