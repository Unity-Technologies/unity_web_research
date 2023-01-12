struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_SampleScale : f32,
  @size(12)
  padding_1 : u32,
  x_ColorIntensity : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_13.x, x_13.y, x_14.z);
  let x_16 : vec3<f32> = u_xlat0;
  let x_22 : vec2<f32> = clamp(vec2<f32>(x_16.x, x_16.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_23 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_22.x, x_22.y, x_23.z);
  let x_25 : vec3<f32> = u_xlat0;
  let x_35 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_37 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_35, x_35));
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_38.z);
  let x_50 : vec3<f32> = u_xlat0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_50.x, x_50.y));
  u_xlat0 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  u_xlat1.x = 1.0f;
  let x_62 : f32 = x_30.x_SampleScale;
  u_xlat1.z = x_62;
  let x_65 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = x_30.x_MainTex_TexelSize;
  u_xlat1 = (vec4<f32>(x_65.x, x_65.x, x_65.z, x_65.z) * vec4<f32>(x_70.x, x_70.y, x_70.x, x_70.y));
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.0f;
  let x_79 : f32 = x_30.x_SampleScale;
  u_xlat2.x = x_79;
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat2;
  let x_88 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((-(vec4<f32>(x_82.x, x_82.y, x_82.w, x_82.y)) * vec4<f32>(x_85.x, x_85.x, x_85.w, x_85.x)) + vec4<f32>(x_88.x, x_88.y, x_88.x, x_88.y));
  let x_91 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_91, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_95 : vec4<f32> = u_xlat3;
  let x_97 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat3 = (x_95 * vec4<f32>(x_97, x_97, x_97, x_97));
  let x_104 : vec4<f32> = u_xlat3;
  let x_106 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec3<f32> = vec3<f32>(x_106.x, x_106.y, x_106.z);
  let x_108 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_113 : vec4<f32> = u_xlat3;
  let x_115 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_113.z, x_113.w));
  let x_116 : vec3<f32> = vec3<f32>(x_115.x, x_115.y, x_115.z);
  let x_117 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_119 : vec4<f32> = u_xlat3;
  let x_124 : vec4<f32> = u_xlat4;
  let x_126 : vec3<f32> = ((vec3<f32>(x_119.x, x_119.y, x_119.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_129 : vec4<f32> = u_xlat1;
  let x_132 : vec4<f32> = u_xlat2;
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_136 : vec2<f32> = ((-(vec2<f32>(x_129.z, x_129.y)) * vec2<f32>(x_132.z, x_132.x)) + x_135);
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_136.x, x_136.y, x_137.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat4;
  let x_143 : vec2<f32> = clamp(vec2<f32>(x_139.x, x_139.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_143.x, x_143.y, x_144.z, x_144.w);
  let x_146 : vec4<f32> = u_xlat4;
  let x_149 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_151 : vec2<f32> = (vec2<f32>(x_146.x, x_146.y) * vec2<f32>(x_149, x_149));
  let x_152 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_151.x, x_151.y, x_152.z, x_152.w);
  let x_157 : vec4<f32> = u_xlat4;
  let x_159 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_157.x, x_157.y));
  let x_160 : vec3<f32> = vec3<f32>(x_159.x, x_159.y, x_159.z);
  let x_161 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat3;
  let x_165 : vec4<f32> = u_xlat4;
  let x_167 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat1;
  let x_172 : vec4<f32> = u_xlat2;
  let x_175 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_170.z, x_170.w, x_170.x, x_170.w) * vec4<f32>(x_172.z, x_172.w, x_172.x, x_172.w)) + vec4<f32>(x_175.x, x_175.y, x_175.x, x_175.y));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_178, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_183 : vec4<f32> = u_xlat1;
  let x_185 : vec4<f32> = u_xlat2;
  let x_188 : vec2<f32> = vs_TEXCOORD0;
  u_xlat5 = ((vec4<f32>(x_183.z, x_183.y, x_183.w, x_183.y) * vec4<f32>(x_185.z, x_185.x, x_185.w, x_185.x)) + vec4<f32>(x_188.x, x_188.y, x_188.x, x_188.y));
  let x_191 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_191, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = u_xlat2;
  let x_200 : vec2<f32> = vs_TEXCOORD0;
  let x_201 : vec2<f32> = ((vec2<f32>(x_195.x, x_195.y) * vec2<f32>(x_197.x, x_197.x)) + x_200);
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_201.x, x_201.y, x_202.z, x_202.w);
  let x_204 : vec4<f32> = u_xlat1;
  let x_208 : vec2<f32> = clamp(vec2<f32>(x_204.x, x_204.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_209.w);
  let x_211 : vec4<f32> = u_xlat1;
  let x_214 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_216 : vec2<f32> = (vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_214, x_214));
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_217.z, x_217.w);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_222.x, x_222.y));
  let x_225 : vec3<f32> = vec3<f32>(x_224.x, x_224.y, x_224.z);
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat2 = (x_228 * vec4<f32>(x_230, x_230, x_230, x_230));
  let x_233 : vec4<f32> = u_xlat4;
  let x_235 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat4 = (x_233 * vec4<f32>(x_235, x_235, x_235, x_235));
  let x_241 : vec4<f32> = u_xlat4;
  let x_243 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_241.x, x_241.y));
  let x_244 : vec3<f32> = vec3<f32>(x_243.x, x_243.y, x_243.z);
  let x_245 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_250.z, x_250.w));
  let x_253 : vec3<f32> = vec3<f32>(x_252.x, x_252.y, x_252.z);
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat5;
  let x_259 : vec4<f32> = u_xlat3;
  let x_261 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_262 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec3<f32> = u_xlat0;
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_264 * vec3<f32>(4.0f, 4.0f, 4.0f)) + vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat4;
  let x_274 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + x_274);
  let x_279 : vec4<f32> = u_xlat2;
  let x_281 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_279.x, x_279.y));
  let x_282 : vec3<f32> = vec3<f32>(x_281.x, x_281.y, x_281.z);
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_288.z, x_288.w));
  let x_291 : vec3<f32> = vec3<f32>(x_290.x, x_290.y, x_290.z);
  let x_292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec3<f32> = u_xlat0;
  let x_295 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_294 + vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat2;
  let x_301 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + x_301);
  let x_303 : vec4<f32> = u_xlat1;
  let x_305 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_303.x, x_303.y, x_303.z) + x_305);
  let x_307 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_307 * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_311 : vec3<f32> = u_xlat0;
  let x_314 : vec4<f32> = x_30.x_ColorIntensity;
  u_xlat0 = (x_311 * vec3<f32>(x_314.w, x_314.w, x_314.w));
  let x_319 : vec3<f32> = u_xlat0;
  let x_321 : vec4<f32> = x_30.x_ColorIntensity;
  let x_323 : vec3<f32> = (x_319 * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
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

