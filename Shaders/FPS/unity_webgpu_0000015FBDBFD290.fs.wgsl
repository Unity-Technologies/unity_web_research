struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_MaxCoC : f32,
  x_RcpAspect : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat6 : f32;

@group(0) @binding(0) var<uniform> x_35 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlatb0 : bool;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati12 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var indexable : array<vec4<u32>, 22u>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0.x = x_25.w;
  let x_41 : f32 = x_35.x_MainTex_TexelSize.y;
  let x_43 : f32 = x_35.x_MainTex_TexelSize.y;
  u_xlat6 = (x_41 + x_43);
  u_xlat1.w = 1.0f;
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlat2.w = 0.0f;
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlat3.w = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_69 : i32 = u_xlati_loop_1;
    if ((x_69 < 22i)) {
    } else {
      break;
    }
    let x_76 : f32 = x_35.x_MaxCoC;
    let x_78 : f32 = x_35.x_MaxCoC;
    let x_79 : vec2<f32> = vec2<f32>(x_76, x_78);
    let x_142 : i32 = u_xlati_loop_1;
    indexable = array<vec4<u32>, 22u>(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1057523849u, 0u, 0u, 0u), vec4<u32>(1051345177u, 1054178812u, 0u, 0u), vec4<u32>(3186822495u, 1057299508u, 0u, 0u), vec4<u32>(3203794506u, 1047328091u, 0u, 0u), vec4<u32>(3203794506u, 3194811737u, 0u, 0u), vec4<u32>(3186822466u, 3204783157u, 0u, 0u), vec4<u32>(1051345175u, 3201662463u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1063691749u, 1054746115u, 0u, 0u), vec4<u32>(1059036423u, 1061692956u, 0u, 0u), vec4<u32>(1046731914u, 1064932576u, 0u, 0u), vec4<u32>(3194215560u, 1064932576u, 0u, 0u), vec4<u32>(3206520074u, 1061692954u, 0u, 0u), vec4<u32>(3211175397u, 1054746117u, 0u, 0u), vec4<u32>(3212836864u, 0u, 0u, 0u), vec4<u32>(3211175397u, 3202229763u, 0u, 0u), vec4<u32>(3206520068u, 3209176606u, 0u, 0u), vec4<u32>(3194215533u, 3212416226u, 0u, 0u), vec4<u32>(1046731949u, 3212416222u, 0u, 0u), vec4<u32>(1059036421u, 3209176606u, 0u, 0u), vec4<u32>(1063691749u, 3202229763u, 0u, 0u));
    let x_148 : vec4<u32> = indexable[x_142];
    let x_151 : vec2<f32> = (vec2<f32>(x_79.x, x_79.y) * bitcast<vec2<f32>>(vec2<u32>(x_148.x, x_148.y)));
    let x_152 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_152.x, x_151.x, x_151.y, x_152.w);
    let x_155 : vec4<f32> = u_xlat4;
    let x_157 : vec4<f32> = u_xlat4;
    u_xlat18 = dot(vec2<f32>(x_155.y, x_155.z), vec2<f32>(x_157.y, x_157.z));
    let x_160 : f32 = u_xlat18;
    u_xlat18 = sqrt(x_160);
    let x_163 : f32 = u_xlat4.y;
    let x_166 : f32 = x_35.x_RcpAspect;
    u_xlat4.x = (x_163 * x_166);
    let x_169 : vec4<f32> = u_xlat4;
    let x_172 : vec2<f32> = vs_TEXCOORD0;
    let x_173 : vec2<f32> = (vec2<f32>(x_169.x, x_169.z) + x_172);
    let x_174 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_174.z, x_174.w);
    let x_176 : vec4<f32> = u_xlat4;
    let x_180 : vec2<f32> = clamp(vec2<f32>(x_176.x, x_176.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_181 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_181.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat4;
    let x_186 : f32 = x_35.x_RenderViewportScaleFactor;
    let x_188 : vec2<f32> = (vec2<f32>(x_183.x, x_183.y) * vec2<f32>(x_186, x_186));
    let x_189 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_188.x, x_188.y, x_189.z, x_189.w);
    let x_194 : vec4<f32> = u_xlat4;
    let x_196 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_194.x, x_194.y));
    u_xlat4 = x_196;
    let x_199 : f32 = u_xlat0.x;
    let x_201 : f32 = u_xlat4.w;
    u_xlat5 = min(x_199, x_201);
    let x_203 : f32 = u_xlat5;
    u_xlat5 = max(x_203, 0.0f);
    let x_205 : f32 = u_xlat18;
    let x_207 : f32 = u_xlat5;
    u_xlat5 = (-(x_205) + x_207);
    let x_210 : f32 = x_35.x_MainTex_TexelSize.y;
    let x_213 : f32 = u_xlat5;
    u_xlat5 = ((x_210 * 2.0f) + x_213);
    let x_215 : f32 = u_xlat5;
    let x_216 : f32 = u_xlat6;
    u_xlat5 = (x_215 / x_216);
    let x_218 : f32 = u_xlat5;
    u_xlat5 = clamp(x_218, 0.0f, 1.0f);
    let x_220 : f32 = u_xlat18;
    let x_223 : f32 = u_xlat4.w;
    u_xlat18 = (-(x_220) + -(x_223));
    let x_227 : f32 = x_35.x_MainTex_TexelSize.y;
    let x_229 : f32 = u_xlat18;
    u_xlat18 = ((x_227 * 2.0f) + x_229);
    let x_231 : f32 = u_xlat18;
    let x_232 : f32 = u_xlat6;
    u_xlat18 = (x_231 / x_232);
    let x_234 : f32 = u_xlat18;
    u_xlat18 = clamp(x_234, 0.0f, 1.0f);
    let x_239 : f32 = u_xlat4.w;
    let x_242 : f32 = x_35.x_MainTex_TexelSize.y;
    u_xlatb22 = (-(x_239) >= x_242);
    let x_245 : bool = u_xlatb22;
    u_xlat22 = select(0.0f, 1.0f, x_245);
    let x_247 : f32 = u_xlat18;
    let x_248 : f32 = u_xlat22;
    u_xlat18 = (x_247 * x_248);
    let x_250 : vec4<f32> = u_xlat4;
    let x_251 : vec3<f32> = vec3<f32>(x_250.x, x_250.y, x_250.z);
    let x_252 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_254 : vec4<f32> = u_xlat1;
    let x_255 : f32 = u_xlat5;
    let x_258 : vec4<f32> = u_xlat2;
    u_xlat2 = ((x_254 * vec4<f32>(x_255, x_255, x_255, x_255)) + x_258);
    let x_260 : vec4<f32> = u_xlat1;
    let x_261 : f32 = u_xlat18;
    let x_264 : vec4<f32> = u_xlat3;
    u_xlat3 = ((x_260 * vec4<f32>(x_261, x_261, x_261, x_261)) + x_264);

    continuing {
      let x_266 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_266 + 1i);
    }
  }
  let x_270 : f32 = u_xlat2.w;
  u_xlatb0 = (x_270 == 0.0f);
  let x_272 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_272);
  let x_276 : f32 = u_xlat0.x;
  let x_278 : f32 = u_xlat2.w;
  u_xlat0.x = (x_276 + x_278);
  let x_281 : vec4<f32> = u_xlat2;
  let x_283 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_281.x, x_281.y, x_281.z) / vec3<f32>(x_283.x, x_283.x, x_283.x));
  let x_288 : f32 = u_xlat3.w;
  u_xlatb18 = (x_288 == 0.0f);
  let x_290 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_290);
  let x_292 : f32 = u_xlat18;
  let x_294 : f32 = u_xlat3.w;
  u_xlat18 = (x_292 + x_294);
  let x_296 : vec4<f32> = u_xlat3;
  let x_298 : f32 = u_xlat18;
  let x_300 : vec3<f32> = (vec3<f32>(x_296.x, x_296.y, x_296.z) / vec3<f32>(x_298, x_298, x_298));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_304 : f32 = u_xlat3.w;
  u_xlat18 = (x_304 * 0.142799661f);
  let x_307 : f32 = u_xlat18;
  u_xlat18 = min(x_307, 1.0f);
  let x_309 : vec3<f32> = u_xlat0;
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec3<f32> = (-(x_309) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_318 : f32 = u_xlat18;
  let x_320 : vec4<f32> = u_xlat1;
  let x_323 : vec3<f32> = u_xlat0;
  let x_324 : vec3<f32> = ((vec3<f32>(x_318, x_318, x_318) * vec3<f32>(x_320.x, x_320.y, x_320.z)) + x_323);
  let x_325 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : f32 = u_xlat18;
  SV_Target0.w = x_327;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

