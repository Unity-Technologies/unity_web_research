struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_26 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_17.x, x_17.y, x_17.x, x_17.y) * vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f)) + vec4<f32>(x_26.x, x_26.y, x_26.x, x_26.y));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_29, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_35 : vec4<f32> = u_xlat0;
  let x_39 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat0 = (x_35 * vec4<f32>(x_39, x_39, x_39, x_39));
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_53.x, x_53.y));
  u_xlat1 = x_55;
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_59.z, x_59.w));
  u_xlat0 = x_61;
  let x_62 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_62 + x_63);
  let x_66 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_66.x, x_66.y, x_66.x, x_66.y) * vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_70.x, x_70.y, x_70.x, x_70.y));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_73, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_77 : vec4<f32> = u_xlat1;
  let x_79 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat1 = (x_77 * vec4<f32>(x_79, x_79, x_79, x_79));
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_86.x, x_86.y));
  u_xlat2 = x_88;
  let x_92 : vec4<f32> = u_xlat1;
  let x_94 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_92.z, x_92.w));
  u_xlat1 = x_94;
  let x_95 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_95 + x_96);
  let x_98 : vec4<f32> = u_xlat1;
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_98 + x_99);
  let x_101 : vec2<f32> = vs_TEXCOORD0;
  let x_103 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_106 : vec2<f32> = (x_101 + -(vec2<f32>(x_103.x, x_103.y)));
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_109 : vec4<f32> = u_xlat1;
  let x_113 : vec2<f32> = clamp(vec2<f32>(x_109.x, x_109.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat1;
  let x_119 : f32 = x_12.x_RenderViewportScaleFactor;
  let x_121 : vec2<f32> = (vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_119, x_119));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_127.x, x_127.y));
  u_xlat1 = x_129;
  let x_131 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_131.x, x_131.y, x_131.x, x_131.y) * vec4<f32>(0.0f, -1.0f, 1.0f, -1.0f)) + vec4<f32>(x_136.x, x_136.y, x_136.x, x_136.y));
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_139, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat2 = (x_143 * vec4<f32>(x_145, x_145, x_145, x_145));
  let x_152 : vec4<f32> = u_xlat2;
  let x_154 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_152.x, x_152.y));
  u_xlat3 = x_154;
  let x_158 : vec4<f32> = u_xlat2;
  let x_160 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_158.z, x_158.w));
  u_xlat2 = x_160;
  let x_161 : vec4<f32> = u_xlat2;
  let x_162 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_161 + x_162);
  let x_164 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_164 + x_165);
  let x_167 : vec2<f32> = vs_TEXCOORD0;
  let x_168 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat3;
  let x_174 : vec2<f32> = clamp(vec2<f32>(x_170.x, x_170.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat3;
  let x_180 : f32 = x_12.x_RenderViewportScaleFactor;
  let x_182 : vec2<f32> = (vec2<f32>(x_177.x, x_177.y) * vec2<f32>(x_180, x_180));
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_183.w);
  let x_188 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_188.x, x_188.y));
  u_xlat3 = x_190;
  let x_191 : vec4<f32> = u_xlat1;
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_191 + x_192);
  let x_196 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_200 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_196.x, x_196.y, x_196.x, x_196.y) * vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f)) + vec4<f32>(x_200.x, x_200.y, x_200.x, x_200.y));
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_203, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_207 : vec4<f32> = u_xlat4;
  let x_209 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat4 = (x_207 * vec4<f32>(x_209, x_209, x_209, x_209));
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_216.x, x_216.y));
  u_xlat5 = x_218;
  let x_222 : vec4<f32> = u_xlat4;
  let x_224 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_222.z, x_222.w));
  u_xlat4 = x_224;
  let x_225 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_225 + x_226);
  let x_228 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_228 + x_229);
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_231 * vec4<f32>(0.03125f, 0.03125f, 0.03125f, 0.03125f));
  let x_235 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_235 * vec4<f32>(0.125f, 0.125f, 0.125f, 0.125f)) + x_239);
  let x_241 : vec4<f32> = u_xlat2;
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_241 + x_242);
  let x_244 : vec4<f32> = u_xlat3;
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_244 + x_245);
  let x_247 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_247 + x_248);
  let x_250 : vec4<f32> = u_xlat1;
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_250 * vec4<f32>(0.03125f, 0.03125f, 0.03125f, 0.03125f)) + x_252);
  let x_255 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_259 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_255.x, x_255.y, x_255.x, x_255.y) * vec4<f32>(-1.0f, 1.0f, 0.0f, 1.0f)) + vec4<f32>(x_259.x, x_259.y, x_259.x, x_259.y));
  let x_262 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_262, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_266 : vec4<f32> = u_xlat1;
  let x_268 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat1 = (x_266 * vec4<f32>(x_268, x_268, x_268, x_268));
  let x_274 : vec4<f32> = u_xlat1;
  let x_276 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_274.z, x_274.w));
  u_xlat3 = x_276;
  let x_280 : vec4<f32> = u_xlat1;
  let x_282 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_280.x, x_280.y));
  u_xlat1 = x_282;
  let x_283 : vec4<f32> = u_xlat3;
  let x_284 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_283 + x_284);
  let x_286 : vec4<f32> = u_xlat1;
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_286 + x_287);
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_289 * vec4<f32>(0.03125f, 0.03125f, 0.03125f, 0.03125f)) + x_291);
  let x_293 : vec2<f32> = vs_TEXCOORD0;
  let x_295 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_297 : vec2<f32> = (x_293 + vec2<f32>(x_295.x, x_295.y));
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_297.x, x_297.y, x_298.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat1;
  let x_304 : vec2<f32> = clamp(vec2<f32>(x_300.x, x_300.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_305.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat1;
  let x_310 : f32 = x_12.x_RenderViewportScaleFactor;
  let x_312 : vec2<f32> = (vec2<f32>(x_307.x, x_307.y) * vec2<f32>(x_310, x_310));
  let x_313 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_312.x, x_312.y, x_313.z, x_313.w);
  let x_318 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_318.x, x_318.y));
  u_xlat1 = x_320;
  let x_321 : vec4<f32> = u_xlat1;
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_321 + x_322);
  let x_324 : vec4<f32> = u_xlat3;
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_324 + x_325);
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec4<f32> = u_xlat0;
  SV_Target0 = ((x_329 * vec4<f32>(0.03125f, 0.03125f, 0.03125f, 0.03125f)) + x_331);
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

